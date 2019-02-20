package com.xrom.ssh.repository;

import com.xrom.ssh.entity.DB_moves;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Qualifier("MoveRepository")
public class MoveRepository_impl implements MoveRepository {
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    public DB_moves load(Integer id) {
        return (DB_moves)getCurrentSession().load(DB_moves.class,id);
    }

    public DB_moves get(Integer id) {
        return (DB_moves)getCurrentSession().get(DB_moves.class,id);
    }

    public List<DB_moves> findAll() {
        return null;
    }

    public void persist(DB_moves entity) {
        getCurrentSession().persist(entity);
    }

    public Integer save(DB_moves entity) {
        return (Integer) getCurrentSession().save(entity);
    }

    public void saveOrUpdate(DB_moves entity) {
        getCurrentSession().saveOrUpdate(entity);
    }

    public void delete(Integer id) {
        DB_moves person = load(id);
        getCurrentSession().delete(person);
    }

    public void flush() {
        getCurrentSession().flush();
    }

    public DB_moves getmovebyname(String name) {
        Session s=null;
        DB_moves select_move = null;
        try{
            s= getCurrentSession();

            String hql="from DB_moves as moves where moves.name=:name";
            Query query=s.createQuery(hql);
            query.setString("name", name);
            if(query.list().size()==0) return null;
            else{
                List<DB_moves> list=query.list();
                select_move=list.get(0);
                return select_move;
            }
        }finally{
            if(s!=null)
                s.close();
        }
    }

}
