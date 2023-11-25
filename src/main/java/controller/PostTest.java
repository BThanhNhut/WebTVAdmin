package controller;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.sql.Date;

import org.json.simple.JSONObject;

import model.MuonTra;

public class PostTest {
    public static void main(String[] args) {
        try {

            String apiUrl = "https://motionless-grade-production.up.railway.app/muontra";

            URL url = new URL(apiUrl);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("POST"); 

            
            MuonTra muonTraToCreate = new MuonTra();
//            muonTraToCreate.setId_muon(0);
            muonTraToCreate.setId_dg(3);
            muonTraToCreate.setId_nv(1);
            muonTraToCreate.setNgaymuon(Date.valueOf("2023-12-05"));
            muonTraToCreate.setTinhtrangmuon(1);

            connection.setRequestProperty("Content-Type", "application/json");

          
            JSONObject muonTraJson = new JSONObject();
//            muonTraJson.put("id_muon", muonTraToCreate.getId_muon());
            muonTraJson.put("id_dg", muonTraToCreate.getId_dg());
            muonTraJson.put("id_nv", muonTraToCreate.getId_nv());
            muonTraJson.put("ngaymuon", muonTraToCreate.getNgaymuon().toString());
            muonTraJson.put("tinhtrangmuon", muonTraToCreate.getTinhtrangmuon());

   
            byte[] postData = muonTraJson.toString().getBytes(StandardCharsets.UTF_8);
            connection.setDoOutput(true);
            try (OutputStream os = connection.getOutputStream()) {
                os.write(postData);
            }

     
            int responseCode = connection.getResponseCode();

            if (responseCode == HttpURLConnection.HTTP_OK) {
                System.out.println("Tạo mượn trả mới thành công.");
            } else {
                System.out.println("Tạo mượn trả mới thất bại. Mã lỗi: " + responseCode);
            }

            connection.disconnect();
        } catch (Exception e) {
            e.printStackTrace();
            // Xử lý lỗi nếu có
        }
    }
}

