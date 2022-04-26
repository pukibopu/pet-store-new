package com.example.dao;

import com.example.utils.JDBCUtils;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class PetDao {
    private JdbcTemplate template=new JdbcTemplate(JDBCUtils.getDataSource());
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
