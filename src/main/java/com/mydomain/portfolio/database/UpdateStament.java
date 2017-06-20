package com.mydomain.portfolio.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by doche on 6/20/2017.
 */
public class UpdateStament
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
        try {
            conn = DriverManager.getConnection(url);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }

    /**
     * Update data of a table specified by the id
     *
     * @param id
     * @param name name of the warehouse
     * @param capacity capacity of the warehouse
     */
    public void update(int id, String name, double capacity)
    {
        String sql = "UPDATE languages SET name = ? , "
                + "capacity = ? "
                + "WHERE id = ?";

        try (Connection conn = this.connect();
             PreparedStatement pstmt = conn.prepareStatement(sql))
        {

            // set the corresponding param
            pstmt.setString(1, name);
            pstmt.setDouble(2, capacity);
            pstmt.setInt(3, id);
            // update
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

        UpdateStament app = new UpdateStament();
        // update the warehouse with id 3
        app.update(3, "Finished Products", 5500);
    }
}
