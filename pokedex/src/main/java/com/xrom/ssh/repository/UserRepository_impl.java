package com.xrom.ssh.repository;

import com.xrom.ssh.entity.DB_item;
import com.xrom.ssh.entity.Users;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Qualifier("UserRepository")
public class UserRepository_impl implements UserRepository {
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    public Users load(Integer id) {
        return (Users)getCurrentSession().load(Users.class,id);
    }

    public Users get(Integer id) {
        return (Users)getCurrentSession().get(Users.class,id);
    }

    public List<Users> findAll() {
        return null;
    }

    public void persist(Users entity) {
        getCurrentSession().persist(entity);
    }

    public Integer save(Users entity) {
        return (Integer) getCurrentSession().save(entity);
    }

    public void saveOrUpdate(Users entity) {
        getCurrentSession().saveOrUpdate(entity);
    }

    public void delete(Integer id) {
        Users person = load(id);
        getCurrentSession().delete(person);
    }

    public void flush() {
        getCurrentSession().flush();
    }

    public Users getuserbyname(String fname) {
        Session s=null;
        Users select_user = null;
        try{
            s= getCurrentSession();

            String hql="from Users as users where users.fname=:fname";
            Query query=s.createQuery(hql);
            query.setString("fname", fname);
            System.out.println(query.list());
            if(query.list().size()==0) return null;
            else{
                List<Users> list=query.list();
                select_user=list.get(0);
                return select_user;
            }
        }finally{
            if(s!=null)
                s.close();
        }
    }

}
