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
	public Wine updateWine(int id, Wine wine) {
	
		Wine updateWine = em.find(Wine.class, id);
		updateWine.setLabelName(wine.getLabelName());
		updateWine.setCost(wine.getCost());
		updateWine.setDescription(wine.getDescription());
		
//		String jpql = "UPDATE w FROM Wine w WHERE w.id = :id";
//		wine = em.createQuery(jpql)
//				.setParameter("id", id)
//				.executeUpdate();
		em.flush();
//		em.close();
		
		return wine;
	}

}
