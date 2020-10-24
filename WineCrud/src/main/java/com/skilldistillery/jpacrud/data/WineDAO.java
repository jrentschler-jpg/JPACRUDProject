package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Wine;

public interface WineDAO {
	public Wine findWineById(int id);
	public List<Wine> findAllWine();
//	public void printIndividualWine(Wine wine);
	public List<Wine> findWineFromSearch(String userSearch);
	
	
	public Wine createWine(Wine wine);
	public Wine updateWine(Wine wine);
	public boolean deleteWine(int id);

}
