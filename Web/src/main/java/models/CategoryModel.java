package models;

import beans.Category;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;

public class CategoryModel {


    public static List<Category> getAll() {
        final String sql = "select * from categories";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Category.class);
        }
    }
    public static List<Category> getAll1(String name) {
        String sql="select * from "+name;
        try (Connection con = DbUtils.getConnection()) {

            return con.createQuery(sql).executeAndFetch(Category.class);
        }
    }

    public static void add(Category c) {
        final String sql = "INSERT INTO alo (CatName) VALUES (:catname)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("catname", c.getCatName())
                    .executeUpdate();
        }
    }
}
