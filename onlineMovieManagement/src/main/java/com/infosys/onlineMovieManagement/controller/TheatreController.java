package com.infosys.onlineMovieManagement.controller;

import com.infosys.onlineMovieManagement.bean.Theatre;
import com.infosys.onlineMovieManagement.bean.TheatreScreenEmbed;
import com.infosys.onlineMovieManagement.bean.TheatreScreenMovieShow;
import com.infosys.onlineMovieManagement.bean.TheatreScreenMovieShowDTO;
import com.infosys.onlineMovieManagement.bean.TheatreScreenMovieShowEmbed;
import com.infosys.onlineMovieManagement.dao.TheatreDao;
import com.infosys.onlineMovieManagement.dao.theatre_screen_movie_showDao;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpServletRequest;

import com.infosys.onlineMovieManagement.dao.ScreenDao;
import com.infosys.onlineMovieManagement.dao.ShowTimeDao;
import com.infosys.onlineMovieManagement.dao.MovieDao;
import com.infosys.onlineMovieManagement.dao.MovieShowDao;
import com.infosys.onlineMovieManagement.bean.Screen;
import com.infosys.onlineMovieManagement.bean.ShowTime;
import com.infosys.onlineMovieManagement.bean.Movie;
import com.infosys.onlineMovieManagement.bean.MovieShow;
import com.infosys.onlineMovieManagement.bean.MovieShowDTO;
import com.infosys.onlineMovieManagement.bean.MovieShowEmbed;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
public class TheatreController {

    @Autowired
    private TheatreDao theatreDao;

    @Autowired
    private ScreenDao screenDao;

    @Autowired
    private MovieShowDao movieShowDao;
    
    @Autowired
    private theatre_screen_movie_showDao screen_movie_showDao;
    
    @Autowired
    private MovieDao movieDao;
    
    @Autowired
    private ShowTimeDao showTimeDao;

    @GetMapping("/addScreen")
    public ModelAndView showScreenEntryPage() {
        Integer newScreenId = screenDao.generateScreenId(); // Assume you have this method in ScreenDao
        Screen screen = new Screen(newScreenId); // Initialize Screen with the new ID
        ModelAndView mv = new ModelAndView("addScreen");
        mv.addObject("ScreenRecord", screen);
        
        return mv;
    }

	@PostMapping("/addScreen")
	 public ModelAndView saveScreenEntryPage(@ModelAttribute("ScreenRecord") Screen screen) {
        screenDao.save(screen); // Save the new screen to the database
        return new ModelAndView("redirect:/index"); // Redirect to the home page or any other relevant page
    }
	
	@GetMapping("/reportScreen")
    public ModelAndView getAllScreens() {
        List<Screen> screens = screenDao.getAllScreens(); // Fetch all screens
        ModelAndView mv = new ModelAndView("reportScreen");
        mv.addObject("screens", screens);
        return mv;
    }
	
	@GetMapping("/updateScreen/{screen_id}")
    public ModelAndView showUpdateScreenForm(@PathVariable("screen_id") Integer screenId) {
        Screen screen = screenDao.getById(screenId); // Fetch screen by ID
        if (screen == null) {
            return new ModelAndView("redirect:/theatre/reportScreen"); // Redirect if not found
        }
        ModelAndView mv = new ModelAndView("updateScreen");
        mv.addObject("ScreenRecord", screen);
        return mv;
    }
	
	
	@PostMapping("/updateScreen/{screen_id}")
    public ModelAndView updateScreen(@PathVariable("screen_id") Integer screenId, 
                                     @ModelAttribute("ScreenRecord") Screen updatedScreen) {
        Screen existingScreen = screenDao.getById(screenId);
        if (existingScreen != null) {
            existingScreen.setScreenName(updatedScreen.getScreenName());
     
            screenDao.save(existingScreen); // Save the updated screen
        }
        return new ModelAndView("redirect:/theatre/reportScreen"); // Redirect to report page
    }
	
	 @GetMapping("/deleteScreen/{screen_id}")
	    public ModelAndView deleteScreen(@PathVariable("screen_id") Integer screenId) {
	        screenDao.delete(screenId); // Delete screen by ID
	        return new ModelAndView("redirect:/theatre/reportScreen"); // Redirect to report page
	    }
	 
	 
	 @GetMapping("/addTheatre")
	 public ModelAndView showAddTheatreForm() {
	     // Create a new Theatre object and add it to the model
	     Theatre theatre = new Theatre();
	     List<Integer> screenList = screenDao.getAllIds(); // Fetch screen IDs for dropdown
	     ModelAndView modelAndView = new ModelAndView("addTheatre");
	     modelAndView.addObject("theatre", theatre);
	     modelAndView.addObject("screenList", screenList); // Add screen list to the model
	     return modelAndView;
	 }

	


	 @PostMapping("/addTheatre")
	 public ModelAndView addTheatre(@ModelAttribute("theatre") Theatre theatre, HttpServletRequest request) {
	     Integer theatreId = theatre.getTheatreId(); // Retrieve the theatre ID
	     theatreDao.saveTheatre(theatre); // Save the theatre information

	     // Loop through the number of screens specified by the user
	     for (int i = 1; i <= theatre.getScreens(); i++) {
	         String screenIdStr = request.getParameter("screenId" + i );
	         System.out.println("Screen ID for screen " + i + ": " + screenIdStr);

	         if (screenIdStr != null && !screenIdStr.isEmpty()) {
	             try {
	                 // Parse the screen ID, ensure it's valid
	                 Integer screenId = Integer.parseInt(screenIdStr);

	                 // Loop through the 6 movie-showtime pairs for this screen
	                 for (int j = 1; j <= 6; j++) {
	                     String movieId = request.getParameter("movieId" + i + "_" + j); // Corrected parameter naming
	                     String showTimeIdStr = request.getParameter("showTimeId" + i + "_" + j); // Corrected parameter naming

	                     // Check if both movieId and showTimeId are provided
	                     if (movieId != null && !movieId.isEmpty() && showTimeIdStr != null && !showTimeIdStr.isEmpty()) {
	                         Integer showTimeId = Integer.parseInt(showTimeIdStr); // Parse showTimeId

	                         System.out.println("Movie ID: " + movieId);
	                         System.out.println("Show Time ID: " + showTimeId);

	                         // Save the mapping of screen, movie, and showtime
	                         TheatreScreenEmbed screenEmbed = new TheatreScreenEmbed(theatreId, screenId);
	                         
	                         MovieShowEmbed showEmbed = new MovieShowEmbed(movieId, showTimeId);
	                         MovieShow movieShow=movieShowDao.getMovieShowById(showEmbed);
	                         TheatreScreenMovieShowEmbed embed = new TheatreScreenMovieShowEmbed(screenEmbed, showEmbed);
	                         TheatreScreenMovieShow screenMovieShow = new TheatreScreenMovieShow(embed,movieShow.getRoyalSeatNumber(),movieShow.getPremierSeatNumber());
	                         screen_movie_showDao.save(screenMovieShow); // Save the screen-movie-show mapping
	                     } else {
	                         // Handle the case where movieId or showTimeId is missing
	                         System.err.println("Missing movieId or showTimeId for screen " + i + ", show " + j);
	                     }
	                 }
	             } catch (NumberFormatException e) {
	                 // Handle invalid screenId parsing
	                 System.err.println("Invalid screenId for screen " + i);
	             }
	         } else {
	             // Handle the case where screenId is missing (error message)
	             System.err.println("Missing screenId for screen " + i);
	         }
	     }

	     // Redirect to the index page after saving the theatre, screens, movies, and showtimes
	     return new ModelAndView("redirect:/index");
	 }
	 
	 
	 
	 
	 
//	 @GetMapping("/viewTheatres")
//	 public ModelAndView showTheatreForm() {
//	     List<Theatre> theatres = theatreDao.getAllTheatres();
//	     List<TheatreScreenMovieShow> theatreScreenMovieShows = screen_movie_showDao.getAllTheatreScreenMovieShows();
//	     ModelAndView modelAndView = new ModelAndView("viewTheatres");
//	     modelAndView.addObject("theatres", theatres);
//	     modelAndView.addObject("screenMovieShows", theatreScreenMovieShows); // Add screen list to the model
//	     return modelAndView;
//	 }
//
//	 @GetMapping("/viewDetails/{theatreId}")
//	 public ModelAndView viewDetails(@PathVariable("theatreId") Integer theatreId) {
//	     Theatre theatre = theatreDao.getTheatreById(theatreId);
//	     List<TheatreScreenMovieShow> screenMovieShows = screen_movie_showDao.getScreenMovieShowsByTheatreId(theatreId);
//	     ModelAndView modelAndView = new ModelAndView("viewTheatreDetails");
//	     modelAndView.addObject("theatre", theatre);
//	     modelAndView.addObject("screenMovieShows", screenMovieShows); // Add screen-movie-show info for this theatre
//	     return modelAndView;
//	 }
	 	
//	 @GetMapping("/viewDetails")
//	 public ModelAndView viewDetails() {
//	     // Fetching the list of screens and creating a map of screen ID to screen name
//	     List<Screen> screenList = screenDao.getAllScreens();
//	     Map<Integer, String> screenMap = new HashMap<>();
//
//	     for (Screen screen : screenList) {
//	         screenMap.put(screen.getScreen_id(), screen.getScreenName());
//	     }
//
//	     // Fetching all theatres and all theatre-screen-movie shows
//	     List<Theatre> theatreList = theatreDao.findAll();
//	     List<TheatreScreenMovieShow> theatreScreenMovieShowsList = screen_movie_showDao.getAllTheatreScreenMovieShows();
//
//	     // Map to hold the final list of DTOs per theatre
//	     Map<Integer, List<TheatreScreenMovieShowDTO>> map = new HashMap<>();
//
//
//	     // Loop through each theatre to build the corresponding DTO list
//	     for (Theatre theatre : theatreList) {
//	         List<TheatreScreenMovieShowDTO> dtoList = new ArrayList<>();
//	         Integer theatreId = theatre.getTheatreId();
//
//	         // Loop through the list of TheatreScreenMovieShows
//	         for (TheatreScreenMovieShow screenMovieShow : theatreScreenMovieShowsList) {
//	             // Extract the embedded ID
//	             TheatreScreenMovieShowEmbed id = screenMovieShow.getEmbeddedId();
//	             
//	             // Compare theatreId with the embedded theatreId
//	             if (theatreId.equals(id.getTheatreScreenEmbed().getTheatreId())) {
//	                 // Get the screen details from the screen map
//	                 String screenName = screenMap.get(id.getTheatreScreenEmbed().getScreen_id());
//
//	                 // Access movie details from movieShowEmbed
//	                 String movieId = screenMovieShow.getMovieShowEmbed().getMovieId();
//	                 Movie movie = movieDao.findById(movieId); // Fetch the movie by movieId
//
//	                 // Create a new DTO and populate it
//	                 TheatreScreenMovieShowDTO dto = new TheatreScreenMovieShowDTO();
//	                 dto.setTheatreName(theatre.getName());
//	                 dto.setScreenId(id.getTheatreScreenEmbed().getScreen_id());
//	                 dto.setScreenName(screenName);
//	                 dto.setMovieName(movie != null ? movie.getMovieName() : "Unknown Movie");  // Fallback if movie is not found
//	                 dto.setShowTimeName(screenMovieShow.getMovieShowEmbed().getShowTimeId().toString());  // Assuming showTimeId is the show time name
//
//	                 // Add the DTO to the list
//	                 dtoList.add(dto);
//	             }
//	         }
//
//	         // Add the list of DTOs to the map
//	         map.put(theatreId, dtoList);
//	     }
//
//	     // Creating the ModelAndView object to return the view and the data
//	     ModelAndView modelAndView = new ModelAndView("viewTheatres");  // "viewDetails" is the name of the JSP page
//	     modelAndView.addObject("theatreData", map);  // Add the map to the model
//
//	     return modelAndView;
//	 }

	 
//	 @GetMapping("/viewDetails")
//	 public ModelAndView viewDetails() {
//	     // Fetch the list of screens and create a map of screen ID to screen name
//	     List<Screen> screenList = screenDao.getAllScreens();
//	     Map<Integer, String> screenMap = new HashMap<>();
//
//	     for (Screen screen : screenList) {
//	         screenMap.put(screen.getScreen_id(), screen.getScreenName());
//	     }
//
//	     // Fetching all theatres and all theatre-screen-movie shows
//	     List<Theatre> theatreList = theatreDao.findAll();
//	     List<TheatreScreenMovieShow> theatreScreenMovieShowsList = screen_movie_showDao.getAllTheatreScreenMovieShows();
//
//	     // Map to hold the final list of DTOs per theatre
//	     Map<String, List<TheatreScreenMovieShowDTO>> map = new HashMap<>();
//
//	     // Loop through each theatre to build the corresponding DTO list
//	     for (Theatre theatre : theatreList) {
//	         List<TheatreScreenMovieShowDTO> dtoList = new ArrayList<>();
//	         Integer theatreId = theatre.getTheatreId();
//
//	         // Loop through the list of TheatreScreenMovieShows
//	         for (TheatreScreenMovieShow screenMovieShow : theatreScreenMovieShowsList) {
//	             // Extract the embedded ID
//	             TheatreScreenMovieShowEmbed id = screenMovieShow.getEmbeddedId();
//	             
//	             // Compare theatreId with the embedded theatreId
//	             if (theatreId.equals(id.getTheatreScreenEmbed().getTheatreId())) {
//	                 // Get the screen details from the screen map
//	                 String screenName = screenMap.get(id.getTheatreScreenEmbed().getScreen_id());
//
//	                 // Access movie details from movieShowEmbed
//	                 String movieId = screenMovieShow.getMovieShowEmbed().getMovieId();
//	                 Movie movie = movieDao.findById(movieId); // Fetch the movie by movieId
//
//	                 // Create a new DTO and populate it
//	                 TheatreScreenMovieShowDTO dto = new TheatreScreenMovieShowDTO();
//	                 dto.setTheatreName(theatre.getName());
//	                 dto.setScreenId(id.getTheatreScreenEmbed().getScreen_id());
//	                 dto.setScreenName(screenName);
//	                 dto.setMovieName(movie != null ? movie.getMovieName() : "Unknown Movie");  // Fallback if movie is not found
//	                 dto.setShowTimeName(screenMovieShow.getMovieShowEmbed().getShowTimeId().toString());  // Assuming showTimeId is the show time name
//
//	                 // Add the DTO to the list
//	                 dtoList.add(dto);
//	             }
//	         }
//
//	         // Add the list of DTOs to the map, using theatre name as the key
//	         map.put(theatre.getName(), dtoList);
//	     }
//
//	     // Creating the ModelAndView object to return the view and the data
//	     ModelAndView modelAndView = new ModelAndView("viewTheatres");  // "viewDetails" is the name of the JSP page
//	     modelAndView.addObject("theatreData", map);  // Add the map to the model
//
//	     return modelAndView;
//	 }

	 @GetMapping("/viewDetails")
	 public ModelAndView viewDetails() {
	     // Fetch the list of screens and create a map of screen ID to screen name
	     List<Screen> screenList = screenDao.getAllScreens();
	     Map<Integer, String> screenMap = new HashMap<>();

	     for (Screen screen : screenList) {
	         screenMap.put(screen.getScreen_id(), screen.getScreenName());
	     }

	     // Fetching all theatres and all theatre-screen-movie shows
	     List<Theatre> theatreList = theatreDao.findAll();
	     List<TheatreScreenMovieShow> theatreScreenMovieShowsList = screen_movie_showDao.getAllTheatreScreenMovieShows();

	     // Map to hold the final list of DTOs per theatre
	     Map<String, Map<String, Object>> map = new HashMap<>();

	     // Loop through each theatre to build the corresponding DTO list
	     for (Theatre theatre : theatreList) {
	         List<TheatreScreenMovieShowDTO> dtoList = new ArrayList<>();
	         Integer theatreId = theatre.getTheatreId();

	         // Loop through the list of TheatreScreenMovieShows
	         for (TheatreScreenMovieShow screenMovieShow : theatreScreenMovieShowsList) {
	             // Extract the embedded ID
	             TheatreScreenMovieShowEmbed id = screenMovieShow.getEmbeddedId();
	             
	             // Compare theatreId with the embedded theatreId
	             if (theatreId.equals(id.getTheatreScreenEmbed().getTheatreId())) {
	                 // Get the screen details from the screen map
	                 String screenName = screenMap.get(id.getTheatreScreenEmbed().getScreen_id());

	                 // Access movie details from movieShowEmbed
	                 String movieId = screenMovieShow.getMovieShowEmbed().getMovieId();
	                 Movie movie = movieDao.findById(movieId); // Fetch the movie by movieId
	                 Integer showTimeId = screenMovieShow.getMovieShowEmbed().getShowTimeId();
	                 ShowTime showTime = showTimeDao.findById(showTimeId);

	                 // Create a new DTO and populate it
	                 TheatreScreenMovieShowDTO dto = new TheatreScreenMovieShowDTO();
	                 dto.setTheatreName(theatre.getName());
	                 dto.setScreenId(id.getTheatreScreenEmbed().getScreen_id());
	                 dto.setScreenName(screenName);
	                 dto.setMovieName(movie != null ? movie.getMovieName() : "Unknown Movie");  // Fallback if movie is not found
	                 dto.setShowTimeName(showTime.getShowTimeName());  // Assuming showTimeId is the show time name

	                 // Add the DTO to the list
	                 dtoList.add(dto);
	             }
	         }

	         // Create a map for theatre data including location and screens
	         Map<String, Object> theatreData = new HashMap<>();
	         theatreData.put("theatreId", theatre.getTheatreId()); 
	         theatreData.put("imgUrl", theatre.getImgUrl());
	         theatreData.put("location", theatre.getLocation());
	         theatreData.put("screens", theatre.getScreens());
	         theatreData.put("shows", dtoList); // List of DTOs

	         // Add the theatre data to the map, using theatre name as the key
	         map.put(theatre.getName(), theatreData);
	     }

	     // Creating the ModelAndView object to return the view and the data
	     ModelAndView modelAndView = new ModelAndView("viewTheatres");  // "viewDetails" is the name of the JSP page
	     modelAndView.addObject("theatreData", map);  // Add the map to the model

	     return modelAndView;
	 }

	 
	 @GetMapping("/updateTheatre/{theatreId}")
	 public ModelAndView Theatreupdation(@PathVariable("theatreId") Integer theatreId) {
		 System.out.println("ID of Theatre: "+ theatreId);
		 Theatre theatre = theatreDao.getTheatreById(theatreId);
		 List<Integer> screenList = screenDao.getAllIds();
		 List<TheatreScreenMovieShow> screenMovieShows =  screen_movie_showDao.getScreenMovieShowsByTheatreId(theatreId);
		 ModelAndView mv = new ModelAndView("theatreUpdatePage");
			mv.addObject("theatreRecord", theatre);
			mv.addObject("screenList", screenList);
			mv.addObject("screenMovieShows", screenMovieShows); 
			return mv;
		 
	 }
	 
	 
	 
	 
	 
	 //20-11 --working
	 @GetMapping("/bookMovie/{id}")
	 public ModelAndView showBookMoviePage(@PathVariable String id) {
		 System.out.println("Movie ID received: " + id);
	     List<Screen> screenList = screenDao.getAllScreens();
	     Map<Integer, String> screenMap = new HashMap<>();
	     
	     for (Screen screen : screenList) {
	         screenMap.put(screen.getScreen_id(), screen.getScreenName());
	     }

	     List<Theatre> theatreList = theatreDao.findAll();
	     List<TheatreScreenMovieShow> theatreScreenMovieShowsList = screen_movie_showDao.getAllTheatreScreenMovieShows();
	     
	     Map<String, Map<String, Object>> map = new HashMap<>();

	     for (Theatre theatre : theatreList) {
	         List<TheatreScreenMovieShowDTO> dtoList = new ArrayList<>();
	         Integer theatreId = theatre.getTheatreId();

	         for (TheatreScreenMovieShow screenMovieShow : theatreScreenMovieShowsList) {
	             TheatreScreenMovieShowEmbed id1 = screenMovieShow.getEmbeddedId();
	             if (theatreId.equals(id1.getTheatreScreenEmbed().getTheatreId())) {
	                 String screenName = screenMap.get(id1.getTheatreScreenEmbed().getScreen_id());
	                 String movieId = screenMovieShow.getMovieShowEmbed().getMovieId();
	                 Movie movie = movieDao.findById(movieId);
	                 Integer showTimeId = screenMovieShow.getMovieShowEmbed().getShowTimeId();
	                 ShowTime showTime = showTimeDao.findById(showTimeId);
	                

	                 if (id1.getMovieShowEmbed().getMovieId().equals(id)) { // Filtering based on the movie ID.
	                     TheatreScreenMovieShowDTO dto = new TheatreScreenMovieShowDTO();
	                     MovieShowEmbed showEmbed = new MovieShowEmbed(movieId, showTimeId);
                         MovieShow movieShow=movieShowDao.getMovieShowById(showEmbed);
	                     dto.setTheatreName(theatre.getName());
	                     dto.setScreenId(id1.getTheatreScreenEmbed().getScreen_id());
	                     dto.setScreenName(screenName);
	                     dto.setMovieName( movie.getMovieName());
	                     dto.setRoyalSeatNumber(movieShow.getRoyalSeatNumber());
	                     dto.setPremierSeatNumber(movieShow.getPremierSeatNumber());
	                     dto.setRoyalBooked(movieShow.getRoyalBooked());
	                     dto.setPremierBooked(movieShow.getPremierBooked());
	                     dto.setShowTimeName(showTime.getShowTimeName());
	                     
	                     
	                     
	                    
	                     dtoList.add(dto);
	                 }
	             }
	         }

	         Map<String, Object> theatreData = new HashMap<>();
	         theatreData.put("theatreId", theatre.getTheatreId());
	         theatreData.put("imgUrl", theatre.getImgUrl());
	         theatreData.put("location", theatre.getLocation());
	         theatreData.put("screens", theatre.getScreens());
	         theatreData.put("shows", dtoList);

	         map.put(theatre.getName(), theatreData);
	     }

	     ModelAndView modelAndView = new ModelAndView("AltmovieBooking1");
	     modelAndView.addObject("theatreData", map); 
	     modelAndView.addObject("movieId", id); // Pass movie ID to the view
	     return modelAndView;
	 }
	 
	 
//	 @GetMapping("/bookMovie/{id}")
//	 public ModelAndView showBookMoviePage(@PathVariable String id) {
//	     System.out.println("Movie ID received: " + id);
//
//	     List<Screen> screenList = screenDao.getAllScreens();
//	     Map<Integer, String> screenMap = new HashMap<>();
//
//	     // Map screen data for later use
//	     for (Screen screen : screenList) {
//	         screenMap.put(screen.getScreen_id(), screen.getScreenName());
//	     }
//
//	     List<Theatre> theatreList = theatreDao.findAll();
//	     List<TheatreScreenMovieShow> theatreScreenMovieShowsList = screen_movie_showDao.getAllTheatreScreenMovieShows();
//
//	     Map<String, Map<String, Object>> map = new HashMap<>();
//
//	     // Iterate through theatres and collect the relevant information for each movie show
//	     for (Theatre theatre : theatreList) {
//	         List<TheatreScreenMovieShowDTO> dtoList = new ArrayList<>();
//	         Integer theatreId = theatre.getTheatreId();
//
//	         // Iterate through each TheatreScreenMovieShow to filter by movieId and showTimeId
//	         for (TheatreScreenMovieShow screenMovieShow : theatreScreenMovieShowsList) {
//	             TheatreScreenMovieShowEmbed id1 = screenMovieShow.getEmbeddedId();
//	             if (theatreId.equals(id1.getTheatreScreenEmbed().getTheatreId())) {
//	                 String screenName = screenMap.get(id1.getTheatreScreenEmbed().getScreen_id());
//	                 String movieId = screenMovieShow.getMovieShowEmbed().getMovieId();
//	                 Integer showTimeId = screenMovieShow.getMovieShowEmbed().getShowTimeId();
//	                 Movie movie = movieDao.findById(movieId);
//	                 ShowTime showTime = showTimeDao.findById(showTimeId);
//
//	                 // Only process records that match the movieId passed in the URL
//	                 if (movieId.equals(id)) {
//	                     MovieShow movieShow = movieShowDao.findByMovieIdAndShowTimeId(movieId, showTimeId);
//	                     
//	                     TheatreScreenMovieShowDTO dto = new TheatreScreenMovieShowDTO();
//	                     dto.setTheatreName(theatre.getName());
//	                     dto.setScreenId(id1.getTheatreScreenEmbed().getScreen_id());
//	                     dto.setScreenName(screenName);
//	                     dto.setMovieName(movie != null ? movie.getMovieName() : "Unknown Movie");
//	                     dto.setShowTimeName(showTime != null ? showTime.getShowTimeName() : "Unknown Show Time");
//
//	                     // Ensure movieShow is not null before accessing its attributes
//	                     if (movieShow != null) {
//	                         dto.setRoyalSeatNumber(movieShow.getRoyalSeatNumber());
//	                         dto.setPremierSeatNumber(movieShow.getPremierSeatNumber());
//	                         dto.setRoyalBooked(movieShow.getRoyalBooked());
//	                         dto.setPremierBooked(movieShow.getPremierBooked());
//
//	                         // Print to verify values
//	                         System.out.println("Royal Seat Number: " + dto.getRoyalSeatNumber());
//	                         System.out.println("Premier Seat Number: " + dto.getPremierSeatNumber());
//	                     }
//
//	                     dtoList.add(dto);  // Add to list for this theatre
//	                 }
//	             }
//	         }
//
//	         // Add all collected data for this theatre to the map
//	         Map<String, Object> theatreData = new HashMap<>();
//	         theatreData.put("theatreId", theatre.getTheatreId());
//	         theatreData.put("imgUrl", theatre.getImgUrl());
//	         theatreData.put("location", theatre.getLocation());
//	         theatreData.put("screens", theatre.getScreens());
//	         theatreData.put("shows", dtoList);  // Add all the movie shows for this theatre
//
//	         map.put(theatre.getName(), theatreData);  // Add to map by theatre name
//	     }
//
//	     // Create the ModelAndView with the collected data
//	     ModelAndView modelAndView = new ModelAndView("AltmovieBooking1");
//	     modelAndView.addObject("theatreData", map); 
//	     modelAndView.addObject("movieId", id);  // Pass movie ID to the view for context
//	     return modelAndView;
//	 }
//




	

}
