package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Wine;

public interface WineDAO {
	public Wine findWineById(int id);
	public List<Wine> findAllWine();
	public List<Wine> findWineByName(String labelName);
	
	
	public Wine createWine(Wine wine);
	public Wine updateWine(Wine wine);
	public void deleteWine(int id);

}
