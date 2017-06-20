package com.mydomain.portfolio.database;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

/**
 * Created by doche on 6/20/2017.
 */
public class SelectStatement
{
    /**
     * Connect to the database
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
     * select all rows in the warehouses table
     */
    public void selectAll()
    {
        String sql = "SELECT id, name, capacity FROM languages";

        try(Connection conn = this.connect();
            Statement stmt  = conn.createStatement();
            ResultSet rs    = stmt.executeQuery(sql))
        {

            // loop through the result set
            while (rs.next())
            {
                System.out.println(rs.getInt("id") +  "\t" +
                        rs.getString("name") + "\t" +
                        rs.getDouble("capacity"));
            }
        }
        catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Get the warehouse whose capacity greater than a specified capacity
     * @param capacity
     */
    public void getCapacityGreaterThan(double capacity)
    {
        String sql = "SELECT id, name, capacity "
                + "FROM warehouses WHERE capacity > ?";
        /*
SELECT
 name,
 description,
 qty
FROM
 materials
INNER JOIN inventory ON inventory.material_id = materials.id
INNER JOIN warehouses ON warehouses.id = inventory.warehouse_id;
 */


        try (Connection conn = this.connect();
             PreparedStatement pstmt  = conn.prepareStatement(sql))
        {

            // set the value
            pstmt.setDouble(1,capacity);
            //
            ResultSet rs  = pstmt.executeQuery();

            // loop through the result set
            while (rs.next())
            {
                System.out.println(rs.getInt("id") +  "\t" +
                        rs.getString("name") + "\t" +
                        rs.getDouble("capacity"));
            }
        }
        catch (SQLException e)
        {
            System.out.println(e.getMessage());
        }
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
        SelectStatement app = new SelectStatement();
        app.selectAll();
    }
}
