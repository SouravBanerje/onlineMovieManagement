package com.infosys.onlineMovieManagement.bean;

import jakarta.persistence.Embeddable;

@Embeddable
public class TheatreScreenMovieShowEmbed {
	private TheatreScreenEmbed theatreScreenEmbed;
    private MovieShowEmbed movieShowEmbed;

    // Default constructor
    public TheatreScreenMovieShowEmbed() {}

    // Constructor with both embedded IDs
    public TheatreScreenMovieShowEmbed(TheatreScreenEmbed theatreScreenEmbed, MovieShowEmbed movieShowEmbed) {
        this.theatreScreenEmbed = theatreScreenEmbed;
        this.movieShowEmbed = movieShowEmbed;
    }

    // Getters and Setters
    public TheatreScreenEmbed getTheatreScreenEmbed() {
        return theatreScreenEmbed;
    }

    public void setTheatreScreenEmbed(TheatreScreenEmbed theatreScreenEmbed) {
        this.theatreScreenEmbed = theatreScreenEmbed;
    }

    public MovieShowEmbed getMovieShowEmbed() {
        return movieShowEmbed;
    }

    public void setMovieShowEmbed(MovieShowEmbed movieShowEmbed) {
        this.movieShowEmbed = movieShowEmbed;
    }

    @Override
    public int hashCode() {
        return theatreScreenEmbed.hashCode() + movieShowEmbed.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null) return false;
        if (getClass() != obj.getClass()) return false;
        TheatreScreenMovieShowEmbed other = (TheatreScreenMovieShowEmbed) obj;
        return theatreScreenEmbed.equals(other.theatreScreenEmbed) && movieShowEmbed.equals(other.movieShowEmbed);
    }
}
