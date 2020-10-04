package btl.spring.mvc.daos.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import btl.spring.mvc.daos.CTDonHangDAO;
import btl.spring.mvc.entities.CTDonHang;
import btl.spring.mvc.entities.DonHang;

@Repository
@Transactional
public class CTDonHangDAOImpl implements CTDonHangDAO{

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<CTDonHang> listCtDonHangs(int id) {
		
		return em.createQuery("Select p from CTDonHang p where p.donHang=:dh", CTDonHang.class).setParameter("dh", new DonHang(id)).getResultList();
	}
	
	
}
