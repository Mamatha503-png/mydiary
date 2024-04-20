package com.twg.spring.mydiary.dao;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.twg.spring.mydiary.entities.User;

@Component
public class UserDaoInterfaceImpl implements UserDaoInterface {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
    @Transactional(readOnly = false)
	public void save(User user) {
		hibernateTemplate.save(user);
		}
    @Transactional(readOnly = false)
	public void update(User user) {
		hibernateTemplate.update(user);
		

	}
    @Transactional(readOnly = false)
	public void delete(User user) {
		hibernateTemplate.delete(user);

	}

	public User findById(int id) {
		// TODO Auto-generated method stub
		return hibernateTemplate.get(User.class,id);
	}

	public List<User> findAll() {
		// TODO Auto-generated method stub
		return hibernateTemplate.loadAll(User.class);
	}

	public User findByUserName(String username) {
		DetachedCriteria criteria = DetachedCriteria.forClass(User.class); //for selecting the user details
		criteria.add(Restrictions.eq("username", username)); //"username"-from the userclass and username-that is we entered
		User user=null;                                     //if null it will givw error so we intialize it with null
		try {
		user=(User)hibernateTemplate.findByCriteria(criteria).get(0); //it returns list so we give get(0) for first value i
		}catch(Exception e){
			e.printStackTrace();
		}
		return user;
	}

}
