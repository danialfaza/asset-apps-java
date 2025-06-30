/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package koneksi;
import java.util.List;

/**
 *
 * @author danialfaza
 */
public class ApiResponse {
    private int status;
    private String message;
    private List<Provinsi> result;

    public int getStatus() {
        return status;
    }

    public String getMessage() {
        return message;
    }

    public List<Provinsi> getResult() {
        return result;
    }
    
}
