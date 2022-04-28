package com.example.dao;

import com.example.entity.Pet;
import com.example.utils.JDBCUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class PetDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
    public  Pet getById(int id){
        Pet pet = null;
        try {
            //1.编写sql
            String sql = "select * from pets where id = ?";
            //2.调用query方法
            pet = template.queryForObject(sql,
                    new BeanPropertyRowMapper<Pet>(Pet.class),
                    id);
        } catch (DataAccessException e) {
            e.printStackTrace();
        } finally {
            return pet;
        }
    }
    public List<Pet> getList(){
        List<Pet> petList = null;
        try {
            String sql = "select * from pets";
            petList = template.query(sql, new BeanPropertyRowMapper<>(Pet.class));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            return petList;
        }
    }
}
