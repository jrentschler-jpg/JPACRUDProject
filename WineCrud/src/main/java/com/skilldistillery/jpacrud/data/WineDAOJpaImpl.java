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
//		em.close();
		return wine;
	}

	@Override
	public void deleteWine(int id) {
//		Wine badWine = em.find(Wine.class, id);
		String jpql = "DELETE FROM Wine w WHERE w.id = :id";
		id = em.createQuery(jpql)
				.setParameter("id", id)
				.executeUpdate();
		
//		em.remove(badWine);
//		boolean badWineDeleted = ! em.contains(badWine);
		
		em.flush();
		
//		em.close();
//		return badWineDeleted;
//		return badWine;
	}

	@Override
	public Wine updateWine(Wine wine) {
	
//		String jpql = "UPDATE w FROM Wine w WHERE w.id = :id";
//		int  updates = em.createQuery(jpql, Wine.class)
//				.setParameter("id", wine.getId())
//				.executeUpdate();
		Wine updateWine = em.find(Wine.class, wine.getId());
		updateWine.setLabelName(wine.getLabelName());
		updateWine.setType(wine.getType());
		updateWine.setDescription(wine.getDescription());
		updateWine.setRating(wine.getRating());
		updateWine.setCost(wine.getCost());
		updateWine.setVineyard(wine.getVineyard());
		updateWine.setYearProduced(wine.getYearProduced());
		
		em.flush();
//		em.close();
		
		return wine;
	}

}
