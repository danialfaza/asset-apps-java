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
public class KotaApiResponse {
    private int status;
    private String message;
    private List<Kota> result;

    public int getStatus() {
        return status;
    }

    public String getMessage() {
        return message;
    }

    public List<Kota> getResult() {
        return result;
    }
}
