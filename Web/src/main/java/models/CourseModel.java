package models;

import beans.Category;
import beans.Course;
import org.sql2o.Connection;
import utils.DbUtils;

import java.util.List;
import java.util.Optional;

public class CourseModel {


    public static List<Course> getAll() {
        final String sql = "select * from course";
        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }
    public static List<Course> getAll2(String a) {

        final String sql = "SELECT * from course where ProID='"+a+"'";

        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }
    public static List<Course> getAll3() {

        /*final String sql = "SELECT * from documents order by CatID ;*/
        final String sql = "SELECT * from course order by ProID LIMIT  0,5";

        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }
    public static List<Course> getAll4(String s) {


        final String sql = "SELECT * from course order by ProID LIMIT "+s+","+"5";

        try (Connection con = DbUtils.getConnection()) {
            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }
    /*
    public static List<Course> getAll1(String name) {
        final String sql = "select * from documents where CatName='"+name+"'";
        try (Connection con = DbUtils.getConnection()) {

            return con.createQuery(sql).executeAndFetch(Course.class);
        }
    }*/
/*    public static int getNumber() {

        final String sql = "select count(*)from documents";
        try (Connection con = DbUtils.getConnection()) {

             return (int)con.createQuery(sql).executeAndFetchFirst(int.class);
        }
    }*/




 /*   public static void add(Course d) {
        final String sql = "INSERT INTO documents (CatID,CatName,CatDemo) VALUES (:catid,:catname,:catdemo)";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("catid", d.getCatID())
                    .addParameter("catname", d.getCatName())
                    .addParameter("catdemo", d.getCatDemo())
                    .executeUpdate();
        }
    }
    public static Optional<Document> findById(int id) {
        final String sql = "select * from documents where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            List<Document> list = con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeAndFetch(Document.class);

            if (list.size() == 0) {
                return Optional.empty();
            }

            return Optional.ofNullable(list.get(0));
        }
    }



    public static void delete(int id) {
        final String sql = "delete from documents where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", id)
                    .executeUpdate();
        }
    }

    public static void update(Category c) {
        final String sql = "update documents set CatName = :CatName where CatID = :CatID";
        try (Connection con = DbUtils.getConnection()) {
            con.createQuery(sql)
                    .addParameter("CatID", c.getCatID())
                    .addParameter("CatName", c.getCatName())
                    .executeUpdate();
        }
    }*/

}
