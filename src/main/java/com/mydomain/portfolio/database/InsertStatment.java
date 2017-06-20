package com.mydomain.portfolio.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by doche on 6/20/2017.
 */
public class InsertStatment
{
    /**
     * Connect to the database
     *
     * @return the Connection object
     */
    private Connection connect()
    {
        // SQLite connection string
        String url = "jdbc:sqlite:C:/Users/doche/Desktop/" +
            "DevProjects/portfolio_sample/src/main/resources/DevJobs.db";

        Connection conn = null;
        try
        {
            conn = DriverManager.getConnection(url);
        }
        catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }
        return conn;
    }

    /**
     * Insert a new row into requested table
     *
     * @param name
     * @param capacity
     */
    public void insert(String name, double capacity)
    {
        String sql = "INSERT INTO warehouses(name,capacity) VALUES(?,?)";

        try (Connection conn = this.connect();
             PreparedStatement pstmt = conn.prepareStatement(sql))
        {
            pstmt.setString(1, name);
            pstmt.setDouble(2, capacity);
            pstmt.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {

        InsertStatment app = new InsertStatment();
        // insert three new rows
        app.insert("Raw Materials", 3000);
        app.insert("Semifinished Goods", 4000);
        app.insert("Finished Goods", 5000);
    }
}
