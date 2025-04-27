/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author danialfaza
 */
public class koneksi {
    private Connection koneksi;
    public Connection connect(){
         String url = "jdbc:mysql://localhost:3306/db_asset?useSSL=false&serverTimezone=UTC";

        try {
            koneksi = DriverManager.getConnection(url, "root", "");
            System.out.println("Berhasil konek DB");
        } catch (SQLException ex) {
            System.out.println("Error konek: " + ex);
        }
        
        return koneksi;
    }
    
}
