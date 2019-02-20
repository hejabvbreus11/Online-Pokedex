package com.xrom.ssh.repository;

import com.xrom.ssh.entity.DB_evolution;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Qualifier("EvolutionRepository")
public class EvolutionRepository_impl implements EvolutionRepository{
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    public DB_evolution load(Integer id) {
        return (DB_evolution)getCurrentSession().load(DB_evolution.class,id);
    }

    public DB_evolution get(Integer id) {
        return (DB_evolution)getCurrentSession().get(DB_evolution.class,id);
    }

    public List<DB_evolution> findAll() {
        return null;
    }

    public void persist(DB_evolution entity) {
        getCurrentSession().persist(entity);
    }

    public Integer save(DB_evolution entity) {
        return (Integer) getCurrentSession().save(entity);
    }

    public void saveOrUpdate(DB_evolution entity) {
        getCurrentSession().saveOrUpdate(entity);
    }

    public void delete(Integer id) {
        DB_evolution person = load(id);
        getCurrentSession().delete(person);
    }

    public void flush() {
        getCurrentSession().flush();
    }
}
