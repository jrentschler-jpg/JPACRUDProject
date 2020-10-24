package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Wine;

@Transactional 
@Service
public class WineDAOJpaImpl implements WineDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Wine findWineById(int id) {
		return em.find(Wine.class, id);
	}

	@Override
	public List<Wine> findAllWine() {
		return null;
		// TODO Auto-generated method stub
		
	}

//	@Override
//	public void printIndividualWine(Wine wine) {
//		// TODO Auto-generated method stub
//		
//	}

	@Override
	public List<Wine> findWineFromSearch(String userSearch) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Wine createWine(Wine wine) {
		em.persist(wine);
		em.flush();
		em.close();
		return wine;
	}

	@Override
	public boolean deleteWine(int wineId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Wine updateWine(Wine wine) {
		// TODO Auto-generated method stub
		return null;
	}

}
