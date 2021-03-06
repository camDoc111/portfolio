package com.mydomain.portfolio.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by doche on 6/20/2017.
 */
public class SQLiteConnection
{
    /**
     * Gets connection with database
     */
    public static void connect()
    {
        Connection conn = null;

        try
        {
            String url = "jdbc:sqlite:C:/sampleDB/chinook/chinook.db";
            // create a connection to the database
            conn = DriverManager.getConnection(url);

            System.out.println("Connection to SQLite has been established.");

        }
        catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }
        finally
        {
            try
            {
                if(conn != null)
                {
                    conn.close();
                }
            }
            catch(SQLException ex)
            {
                System.out.println(ex.getMessage());
            }
        }
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)
    {
        connect();
    }
}
