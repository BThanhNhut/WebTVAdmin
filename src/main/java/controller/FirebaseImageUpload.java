package controller;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.cloud.storage.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class FirebaseImageUpload {
    public static void main(String[] args) {
        try {
            FileInputStream serviceAccount = new FileInputStream("D:\\JAVA_BACK_END\\BaiTap_KhoaHoc\\WebThuVien\\src\\main\\java\\controlleer\\admin.json");

            Storage storage = StorageOptions.newBuilder()
                    .setCredentials(GoogleCredentials.fromStream(serviceAccount))
                    .setProjectId("mydata-87b4c")
                    .build()
                    .getService();

            String localImagePath = "D:/Image/2.jpg";
            String storagePath = "images/2.jpg";

            BlobId blobId = BlobId.of("mydata-87b4c.appspot.com", storagePath);
            BlobInfo blobInfo = BlobInfo.newBuilder(blobId)
                    .setContentType("image/jpeg")
                    .build();

            Path path = Paths.get(localImagePath);
            byte[] fileContent = Files.readAllBytes(path);

            Blob blob = storage.create(blobInfo, fileContent);

            String imageUrl = "gs://" + blob.getBucket() + "/" + blob.getName();
            System.out.println("URL của hình ảnh trên Firebase Storage: " + imageUrl);

            String token = null; // Không có thời gian hết hạn
            System.out.println("Token của hình ảnh (không có thời gian hết hạn): " + token);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
