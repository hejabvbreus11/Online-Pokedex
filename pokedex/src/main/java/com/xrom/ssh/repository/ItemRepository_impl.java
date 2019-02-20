package com.xrom.ssh.repository;
import com.xrom.ssh.entity.DB_item;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Qualifier("ItemRepository")
public class ItemRepository_impl implements ItemRepository{
    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return this.sessionFactory.openSession();
    }

    public DB_item load(Integer id) {
        return (DB_item)getCurrentSession().load(DB_item.class,id);
    }

    public DB_item get(Integer id) {
        return (DB_item)getCurrentSession().get(DB_item.class,id);
    }

    public DB_item getbyname(String name) {
        Session s=null;
        DB_item select_item=new DB_item();
        try{
            s= getCurrentSession();

            //from后面是对象，不是表名
            String hql="from DB_item as item where item.name=:name";//使用命名参数，推荐使用，易读。
            Query query=s.createQuery(hql);
            query.setString("name", name);

            List<DB_item> list=query.list();
            select_item=list.get(0);

            for(DB_item item:list){
                System.out.println(item.getName());
            }
        }finally{
            if(s!=null)
                s.close();
        }
        return select_item;
    }

    public List<DB_item> findAll() {
        return null;
    }

    public void persist(DB_item entity) {
        getCurrentSession().persist(entity);
    }

    public Integer save(DB_item entity) {
        return (Integer) getCurrentSession().save(entity);
    }

    public void saveOrUpdate(DB_item entity) {
        getCurrentSession().saveOrUpdate(entity);
    }

    public void delete(Integer id) {
        DB_item person = load(id);
        getCurrentSession().delete(person);
    }

    public void flush() {
        getCurrentSession().flush();
    }

}
