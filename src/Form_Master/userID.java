/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Form_Master;

/**
 *
 * @author danialfaza
 */
public class userID {
    
    private static String kd;
    
    public static void setUserLogin(String kode){
        kd = kode;
    }
    
    public static String getUserLogin(){
        return kd;
    }
    
}
