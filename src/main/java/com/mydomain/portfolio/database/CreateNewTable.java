package com.mydomain.portfolio.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by doche on 6/20/2017.
 */
public class CreateNewTable
{
    /**
     * Create a new table in the test database
     *
     */
    public static void createNewTable()
    {
        // SQLite connection string
        String url = "jdbc:sqlite:C:/Users/doche/Desktop/" +
                "DevProjects/portfolio_sample/src/main/resources/DevJobs.db";

        // SQL statement for creating a new table
        String sql = "CREATE TABLE IF NOT EXISTS languages (\n"
                + "	id integer PRIMARY KEY,\n"
                + " name text NOT NULL,\n"
                + "	capacity real\n"
                + ");";
        String sql2 = "CREATE TABLE IF NOT EXISTS materials ( "
                + "id integer PRIMARY KEY,"
                + "description text NOT NULL"
                + ");";
        String sql3 = "CREATE TABLE IF NOT EXISTS inventory (\n"
                + "warehouse_id integer,\n"
                + "material_id integer,\n"
                + "qty real,\n"
                + "PRIMARY KEY (warehouse_id, material_id),\n"
                + "FOREIGN KEY (warehouse_id) REFERENCES warehouses (id),\n"
                + "FOREIGN KEY (material_id) REFERENCES materials (id)"
                + ")";

        try(Connection conn = DriverManager.getConnection(url);
             Statement stmt = conn.createStatement())
        {
            // create a new table
            stmt.execute(sql);
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
        createNewTable();
    }
}
