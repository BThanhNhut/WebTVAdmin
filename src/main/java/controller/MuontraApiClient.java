package controller;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.simple.JSONObject;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.TypeFactory;

import model.ChitietmuontraDTO;
import model.MuonTra;
import model.MuontraDTO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MuontraApiClient {

	public List<MuontraDTO> getAllMuontraFromApi() {
		List<MuontraDTO> muontraList = new ArrayList<>();
		String apiUrl = "https://apithuvien-production-7709.up.railway.app/muontra/info";
		try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
			HttpGet httpGet = new HttpGet(apiUrl);
			try (CloseableHttpResponse response = httpClient.execute(httpGet)) {
				HttpEntity entity = response.getEntity();
				if (entity != null) {
					String json = EntityUtils.toString(entity);
					ObjectMapper objectMapper = new ObjectMapper();
					TypeFactory typeFactory = objectMapper.getTypeFactory();
					CollectionType collectionType = typeFactory.constructCollectionType(List.class, MuontraDTO.class);
					muontraList = objectMapper.readValue(json, collectionType);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		return muontraList;
	}

	public List<MuontraDTO> getAllMuontraFromApi2() {
		List<MuontraDTO> muontraList = new ArrayList<>();
		String apiUrl = "https://apithuvien-production-7709.up.railway.app/muontra/info2";
		try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
			HttpGet httpGet = new HttpGet(apiUrl);
			try (CloseableHttpResponse response = httpClient.execute(httpGet)) {
				HttpEntity entity = response.getEntity();
				if (entity != null) {
					String json = EntityUtils.toString(entity);
					ObjectMapper objectMapper = new ObjectMapper();
					TypeFactory typeFactory = objectMapper.getTypeFactory();
					CollectionType collectionType = typeFactory.constructCollectionType(List.class, MuontraDTO.class);
					muontraList = objectMapper.readValue(json, collectionType);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		return muontraList;
	}

	public List<ChitietmuontraDTO> getAllChitietmuontraFromApi() {
		List<ChitietmuontraDTO> chitietmuontras = new ArrayList<>();
		String apiUrl = "http://localhost:8080/chitietmuontra/info";

		try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
			HttpGet httpGet = new HttpGet(apiUrl);

			try (CloseableHttpResponse response = httpClient.execute(httpGet)) {
				HttpEntity entity = response.getEntity();

				if (entity != null) {
					String json = EntityUtils.toString(entity);
					ObjectMapper objectMapper = new ObjectMapper();
					TypeFactory typeFactory = objectMapper.getTypeFactory();
					CollectionType collectionType = typeFactory.constructCollectionType(List.class,
							ChitietmuontraDTO.class);
					chitietmuontras = objectMapper.readValue(json, collectionType);
				}
			} catch (IOException e) {
				e.printStackTrace();
				// Xử lý lỗi ở đây nếu cần thiết
			}
		} catch (IOException e) {
			e.printStackTrace();
			// Xử lý lỗi ở đây nếu cần thiết
		}

		return chitietmuontras;
	}

	public void updateTinhtrangmuon(Integer id, int tinhtrangmuon) {
		String apiUrl = "https://apithuvien-production-7709.up.railway.app/muontra/" + id + "/tinhtrangmuon";

		try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
			HttpPut httpPut = new HttpPut(apiUrl);
			StringEntity entity = new StringEntity("tinhtrangmuon=" + tinhtrangmuon);
			entity.setContentType("application/x-www-form-urlencoded");
			httpPut.setEntity(entity);

			try (CloseableHttpResponse response = httpClient.execute(httpPut)) {
				int statusCode = response.getStatusLine().getStatusCode();

				if (statusCode == 200) {
					String responseContent = EntityUtils.toString(response.getEntity());
					System.out.println("Thành công " + statusCode);
				} else {
					// Xử lý lỗi hoặc trạng thái khác 200 nếu cần
					System.out.println("Lỗi khi cập nhật tình trạng mượn, mã lỗi: " + statusCode);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			// Xử lý lỗi ở đây nếu cần thiết
		}
	}
	
	public void updateTinhtrangtra(Integer id, int tinhtrangtra) {
	    String apiUrl = "https://apithuvien-production-7709.up.railway.app/chitietmuontra/" + id + "/tinhtrangtra";

	    try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
	        HttpPut httpPut = new HttpPut(apiUrl);
	        StringEntity entity = new StringEntity("tinhtrangtra=" + tinhtrangtra);
	        entity.setContentType("application/x-www-form-urlencoded");
	        httpPut.setEntity(entity);

	        try (CloseableHttpResponse response = httpClient.execute(httpPut)) {
	            int statusCode = response.getStatusLine().getStatusCode();

	            if (statusCode == 200) {
	                String responseContent = EntityUtils.toString(response.getEntity());
	                System.out.println("Thành công chi tiết mượn trả" + statusCode);
	            } else {
	                System.out.println("Error updating tinhtrangtra, status code: " + statusCode);
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
	public List<ChitietmuontraDTO> getChitietmuonsachListFromApi(int id) {
		List<ChitietmuontraDTO> chitietmuonsachList = new ArrayList<>();
		String apiUrl = "https://apithuvien-production-7709.up.railway.app/chitietmuontra/info/" + id;

		try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
			HttpGet httpGet = new HttpGet(apiUrl);

			try (CloseableHttpResponse response = httpClient.execute(httpGet)) {
				HttpEntity entity = response.getEntity();

				if (entity != null) {
					String json = EntityUtils.toString(entity);
					ObjectMapper objectMapper = new ObjectMapper();
					TypeFactory typeFactory = objectMapper.getTypeFactory();
					CollectionType collectionType = typeFactory.constructCollectionType(List.class,
							ChitietmuontraDTO.class);
					chitietmuonsachList = objectMapper.readValue(json, collectionType);
				}
			} catch (IOException e) {
				e.printStackTrace();
				// Handle errors here if needed
			}
		} catch (IOException e) {
			e.printStackTrace();
			// Handle errors here if needed
		}

		return chitietmuonsachList;
	}

	public static void main(String[] args) {
		MuontraApiClient apiClient = new MuontraApiClient();
		List<MuontraDTO> muontraList = apiClient.getAllMuontraFromApi();
//        List<ChitietmuontraDTO> muontralist = apiClient.getAllChitietmuontraFromApi();
//
//        for (MuontraDTO muontra : muontraList) {
//        	System.out.println("ID muon " + muontra.getId_muon());
//            System.out.println("ID Độc giả: " + muontra.getId_dg());
//            System.out.println("ID Nhân viên: " + muontra.getId_nv());
//            System.out.println("Ngày mượn: " + muontra.getNgaymuon());
//            System.out.println("Tình trạng mượn: " + muontra.getTintrangmuon());
//            System.out.println("Tên nhân viên: " + muontra.getTen_nv());
//            System.out.println("Email: " + muontra.getEmail());
//            System.out.println();
//        }
		List<ChitietmuontraDTO> chitietmuontraList = apiClient.getAllChitietmuontraFromApi();

		for (ChitietmuontraDTO chitietmuontra : chitietmuontraList) {
			System.out.println("ID Chi tiết mượn: " + chitietmuontra.getId_ctmuon());
			System.out.println("ID Mượn: " + chitietmuontra.getId_muon());
			System.out.println("ID Tài liệu: " + chitietmuontra.getId_tailieu());
			System.out.println("Ngày trả: " + chitietmuontra.getNgaytra());
			System.out.println("Tình trạng trả: " + chitietmuontra.getTinhtrangtra());
			System.out.println("Hình: " + chitietmuontra.getHinh());
			System.out.println("Tên tài liệu: " + chitietmuontra.getTentailieu());
			System.out.println();
		}
	}
}
