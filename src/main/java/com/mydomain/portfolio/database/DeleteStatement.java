package com.mydomain.portfolio.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by doche on 6/20/2017.
 */
public class DeleteStatement
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
     * Delete one of a table type specified by the id
     *
     * @param id
     */
    public void delete(int id)
    {
        String sql = "DELETE FROM languges WHERE id = ?";

        try(Connection conn = this.connect();
            PreparedStatement pstmt = conn.prepareStatement(sql))
        {
            // set the corresponding param
            pstmt.setInt(1, id);
            // execute the delete statement
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
        DeleteStatement app = new DeleteStatement();
        // delete the row with id 3
        app.delete(3);
    }
}
