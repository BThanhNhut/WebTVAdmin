package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.TypeFactory;

import model.ChiTietPhat;
import model.MuonTra;
import model.MuontraDTO;

public class handleFunction {
	public MuontraDTO getMuontraByIdFromApi(int id) {
	    MuontraDTO muontra = null;
	    String apiUrl = "https://apithuvien-production-7709.up.railway.app/muontra/info2/" + id;
	    try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
	        HttpGet httpGet = new HttpGet(apiUrl);
	        try (CloseableHttpResponse response = httpClient.execute(httpGet)) {
	            int statusCode = response.getStatusLine().getStatusCode();
	            if (statusCode == 200) {
	                ObjectMapper objectMapper = new ObjectMapper();
	                String json = EntityUtils.toString(response.getEntity());
	                // Kiểm tra xem JSON có giá trị null hay không
	                if (!json.trim().isEmpty()) {
	                    muontra = objectMapper.readValue(json, MuontraDTO.class);
	                }
	            }
	        }
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return muontra;
	}
	
    public void addChitietpphat(ChiTietPhat chitietpphat) {
        String apiUrl = "https://apithuvien-production-7709.up.railway.app/chitietphat";

        try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
            ObjectMapper objectMapper = new ObjectMapper();
            String requestBody = objectMapper.writeValueAsString(chitietpphat);

            HttpPost httpPost = new HttpPost(apiUrl);
            StringEntity requestEntity = new StringEntity(requestBody);
            httpPost.setEntity(requestEntity);
            httpPost.setHeader("Content-type", "application/json");

            try (CloseableHttpResponse response = httpClient.execute(httpPost)) {
                if (response.getStatusLine().getStatusCode() == 200) {
                    System.out.println("Thêm thành công.");
                } else {
                    System.out.println("Lỗi khi thêm đối tượng.");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
//    public MuonTra createMuontra(MuonTra muontra) {
//        String apiUrl = "https://your-api-url.com"; // Thay thế bằng URL của API của bạn
//
//        try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
//            ObjectMapper objectMapper = new ObjectMapper();
//            String requestBody = objectMapper.writeValueAsString(muontra);
//
//            HttpPost httpPost = new HttpPost(apiUrl);
//            StringEntity requestEntity = new StringEntity(requestBody);
//            httpPost.setEntity(requestEntity);
//            httpPost.setHeader("Content-type", "application/json");
//
//            try (CloseableHttpResponse response = httpClient.execute(httpPost)) {
//                if (response.getStatusLine().getStatusCode() == 200) {
//                    HttpEntity responseEntity = response.getEntity();
//                    // Xử lý phản hồi từ server nếu cần thiết
//                    // Ví dụ: Đọc và chuyển đổi phản hồi thành đối tượng Muontra nếu server trả về thông tin cụ thể
//                    // Muontra createdMuontra = objectMapper.readValue(responseEntity.getContent(), Muontra.class);
//                    System.out.println("Tạo Muontra thành công.");
//                    return muontra;
//                } else {
//                    // Xử lý lỗi nếu phản hồi không thành công
//                    System.out.println("Lỗi khi tạo Muontra.");
//                }
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
    
}
