package controller;
import java.io.OutputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Date;

import model.MuonTra;

public class MuonTraApi {

    public static void postMuonTra(MuonTra muonTra) {
        try {
            // Define the API endpoint URL where you want to post the data
            String apiEndpointURL = "https://motionless-grade-production.up.railway.app/muontra"; // Replace with your actual API endpoint

            // Create a URL object with the API endpoint URL
            URL url = new URL(apiEndpointURL);

            // Open a connection to the URL
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            // Set the request method to POST
            connection.setRequestMethod("POST");

            // Set the Content-Type header to specify that you are sending JSON data
            connection.setRequestProperty("Content-Type", "application/json");

            // Enable input/output streams for sending and receiving data
            connection.setDoInput(true);
            connection.setDoOutput(true);

            // Convert the MuonTra object to JSON and write it to the output stream
            String muonTraJson = convertMuonTraToJson(muonTra);
            try (OutputStream os = connection.getOutputStream()) {
                byte[] input = muonTraJson.getBytes("UTF-8");
                os.write(input, 0, input.length);
            }

            // Get the response code from the API
            int responseCode = connection.getResponseCode();

            if (responseCode == HttpURLConnection.HTTP_CREATED) {
                // The request was successful (201 Created)
                System.out.println("MuonTra record posted successfully!");

                // Read the response from the API
                try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
                    String line;
                    StringBuilder response = new StringBuilder();
                    while ((line = reader.readLine()) != null) {
                        response.append(line);
                    }
                    System.out.println("Response: " + response.toString());
                }
            } else {
                // Handle other status codes or errors
                System.out.println("Failed to post MuonTra record. Status code: " + responseCode);

                // Optionally, read and print the error response
                try (BufferedReader errorReader = new BufferedReader(new InputStreamReader(connection.getErrorStream()))) {
                    String line;
                    StringBuilder errorResponse = new StringBuilder();
                    while ((line = errorReader.readLine()) != null) {
                        errorResponse.append(line);
                    }
                    System.out.println("Error response: " + errorResponse.toString());
                }
            }

            // Close the connection
            connection.disconnect();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Utility function to convert MuonTra object to JSON (You can use a JSON library like Gson)
    private static String convertMuonTraToJson(MuonTra muonTra) {
        // Convert the MuonTra object to JSON here (you can use a JSON library like Gson)
        // Example: Use Gson to convert MuonTra object to JSON
        // Gson gson = new Gson();
        // String json = gson.toJson(muonTra);
        // return json;
        return ""; // Implement your JSON conversion logic here
    }

    public static void main(String[] args) {
        // Create a MuonTra object with data
        MuonTra muonTra = new MuonTra();
        muonTra.setId_muon(0);
        muonTra.setId_dg(1);
   
        muonTra.setNgaymuon(java.sql.Date.valueOf("2023-01-02"));
        System.out.println("ket qua"+muonTra.getNgaymuon());
        muonTra.setTinhtrangmuon(1);

        // Call the postMuonTra function to post the MuonTra object to the API
        postMuonTra(muonTra);
    }
}
