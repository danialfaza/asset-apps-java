/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package koneksi;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import com.google.gson.Gson;
import java.util.List;
import java.util.ArrayList;

public class koneksi_api {
    public static List<Provinsi> getDataProvinsi() {
        List<Provinsi> listProvinsi = new ArrayList<>();
        StringBuilder response = new StringBuilder();

        try {
            String apiUrl = "https://alamat.thecloudalert.com/api/provinsi/get";
            URL url = new URL(apiUrl);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");

            int responseCode = conn.getResponseCode();

            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader in = new BufferedReader(
                        new InputStreamReader(conn.getInputStream()));
                String inputLine;

                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }
                in.close();

                Gson gson = new Gson();
                ApiResponse apiResponse = gson.fromJson(response.toString(), ApiResponse.class);        
                listProvinsi = apiResponse.getResult();
            } else {
                System.out.println("GET request gagal. Response Code: " + responseCode);
            }

            conn.disconnect();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return listProvinsi;
    }
    
     public static List<Kota> getDataKota(String idProvinsi) {
        List<Kota> listKota = new ArrayList<>();
    StringBuilder response = new StringBuilder();

    try {
        String apiUrl = "https://alamat.thecloudalert.com/api/kabkota/get/?d_provinsi_id=" + idProvinsi;
        URL url = new URL(apiUrl);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Accept", "application/json");

        int responseCode = conn.getResponseCode();

        if (responseCode == HttpURLConnection.HTTP_OK) {
            BufferedReader in = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));
            String inputLine;

            while ((inputLine = in.readLine()) != null) {
                response.append(inputLine);
            }
            in.close();
        } else {
            System.out.println("GET kota gagal. Code: " + responseCode);
        }

        conn.disconnect();

        Gson gson = new Gson();
        KotaApiResponse apiResponse = gson.fromJson(response.toString(), KotaApiResponse.class);
        listKota = apiResponse.getResult();

    } catch (Exception e) {
        e.printStackTrace();
    }

    return listKota;
    }
}
