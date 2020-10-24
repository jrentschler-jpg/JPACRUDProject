package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Wine {
	
	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "label_name")
	private String labelName;
	
	private String type;
	private String flavor;
	private String description;
	private Double rating;
	private Double cost;
	private String vineyard;
	
	@Column(name = "year_produced")
	private String yearProduced;
	

	
	
	
	
	public Wine() {
		super();
	}
	
	
	
	

	

	public Wine(int id, String labelName, String type, String flavor, String description, Double rating, Double cost,
			String vineyard, String yearProduced) {
		super();
		this.id = id;
		this.labelName = labelName;
		this.type = type;
		this.flavor = flavor;
		this.description = description;
		this.rating = rating;
		this.cost = cost;
		this.vineyard = vineyard;
		this.yearProduced = yearProduced;
	}







	public int getId() {
		return id;
	}





	public void setId(int id) {
		this.id = id;
	}





	public String getLabelName() {
		return labelName;
	}





	public void setLabelName(String labelName) {
		this.labelName = labelName;
	}





	public String getType() {
		return type;
	}





	public void setType(String type) {
		this.type = type;
	}





	public String getFlavor() {
		return flavor;
	}





	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}





	public String getDescription() {
		return description;
	}





	public void setDescription(String description) {
		this.description = description;
	}





	public Double getRating() {
		return rating;
	}





	public void setRating(Double rating) {
		this.rating = rating;
	}





	public Double getCost() {
		return cost;
	}





	public void setCost(Double cost) {
		this.cost = cost;
	}





	public String getVineyard() {
		return vineyard;
	}





	public void setVineyard(String vineyard) {
		this.vineyard = vineyard;
	}





	public String getYearProduced() {
		return yearProduced;
	}





	public void setYearProduced(String yearProduced) {
		this.yearProduced = yearProduced;
	}





	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Wine [id=").append(id).append(", labelName=").append(labelName).append(", type=").append(type)
				.append(", flavor=").append(flavor).append(", description=").append(description).append(", rating=")
				.append(rating).append(", cost=").append(cost).append(", vineyard=").append(vineyard)
				.append(", yearProduced=").append(yearProduced).append("]");
		return builder.toString();
	}







}
