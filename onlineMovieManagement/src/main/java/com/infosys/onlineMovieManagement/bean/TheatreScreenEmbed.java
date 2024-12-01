package com.infosys.onlineMovieManagement.bean;

import java.io.Serializable;
import java.util.Objects;

import javax.validation.constraints.NotNull;

import jakarta.persistence.Embeddable;

@Embeddable
public class TheatreScreenEmbed  implements Serializable {
	@NotNull
	private Integer theatreId;
	@NotNull
	private Integer screenId;
	public TheatreScreenEmbed() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TheatreScreenEmbed(@NotNull Integer theatreId, @NotNull Integer screenId) {
		super();
		this.theatreId = theatreId;
		this.screenId = screenId;
	}
	
	public Integer getTheatreId() {
		return theatreId;
	}
	public void setTheatreId(Integer theatreId) {
		this.theatreId = theatreId;
	}
	public Integer getScreen_id() {
		return screenId;
	}
	public void setScreen_id(Integer screenId) {
		this.screenId = screenId;
	}
	@Override
	public int hashCode() {
		return Objects.hash(screenId, theatreId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TheatreScreenEmbed other = (TheatreScreenEmbed) obj;
		return Objects.equals(screenId, other.screenId) && Objects.equals(theatreId, other.theatreId);
	}
	@Override
	public String toString() {
		return "TheatreScreenEmbed [theatreId=" + theatreId + ", screenId=" + screenId + "]";
	}
	
	
}
