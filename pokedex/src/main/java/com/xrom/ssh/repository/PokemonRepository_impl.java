package com.xrom.ssh.repository;

import com.xrom.ssh.entity.DB_pokemon;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Qualifier("PokemonRepository")
public class PokemonRepository_impl implements PokemonRepository {
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    public DB_pokemon load(Integer id) {
        return (DB_pokemon)getCurrentSession().load(DB_pokemon.class,id);
    }

    public DB_pokemon get(Integer id) {
        return (DB_pokemon)getCurrentSession().get(DB_pokemon.class,id);
    }

    public List<DB_pokemon> findAll() {
        return null;
    }

    public void persist(DB_pokemon entity) {
        getCurrentSession().persist(entity);
    }

    public Integer save(DB_pokemon entity) {
        return (Integer) getCurrentSession().save(entity);
    }

    public void saveOrUpdate(DB_pokemon entity) {
        getCurrentSession().saveOrUpdate(entity);
    }

    public void delete(Integer id) {
        DB_pokemon person = load(id);
        getCurrentSession().delete(person);
    }

    public void flush() {
        getCurrentSession().flush();
    }

    public List<DB_pokemon>  getpokemonbyorder(String order_field) {
        Session s=null;
        List<DB_pokemon> list = null;
        try{
            s= getCurrentSession();
            String hql;
            if(order_field.equals("name")) hql="from DB_pokemon as pokemon order by pokemon."+order_field+" asc";
            else hql="from DB_pokemon as pokemon order by --pokemon."+order_field+" desc";
            Query query=s.createQuery(hql);
            list=query.list();
        }finally{
            if(s!=null)
                s.close();
        }
        return list;
    }

    public List<DB_pokemon>  getpokemonbytype(String type) {
        Session s=null;
        List<DB_pokemon> list = null;
        try{
            s= getCurrentSession();
            String hql="from DB_pokemon as pokemon where pokemon.type like :type";
            Query query=s.createQuery(hql);
            query.setString("type", '%'+type+'%');
            list=query.list();
        }finally{
            if(s!=null)
                s.close();
        }
        return list;
    }

    public List<DB_pokemon>  getpokemonbymove(String move) {
        Session s=null;
        List<DB_pokemon> list = null;
        try{
            s= getCurrentSession();
            String hql="from DB_pokemon as pokemon where pokemon.moves like :move";
            Query query=s.createQuery(hql);
            query.setString("move", '%'+move+'%');
            list=query.list();
        }finally{
            if(s!=null)
                s.close();
        }
        return list;
    }

    public List<DB_pokemon>  getpokemonbyability(String ability) {
        Session s=null;
        List<DB_pokemon> list = null;
        try{
            s= getCurrentSession();
            String hql="from DB_pokemon as pokemon where pokemon.abilities like :ability";
            Query query=s.createQuery(hql);
            query.setString("ability", '%'+ability+'%');
            list=query.list();
        }finally{
            if(s!=null)
                s.close();
        }
        return list;
    }

    public List<DB_pokemon>  getpokemonbyname(String name) {
        Session s=null;
        List<DB_pokemon> list = null;
        try{
            s= getCurrentSession();
            String hql="from DB_pokemon as pokemon where pokemon.name=:name";
            Query query=s.createQuery(hql);
            query.setString("name", name);
            list=query.list();
        }finally{
            if(s!=null)
                s.close();
        }
        return list;
    }

}
