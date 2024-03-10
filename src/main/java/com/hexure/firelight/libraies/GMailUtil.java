package com.hexure.firelight.libraies;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.gmail.Gmail;
import com.google.api.services.gmail.GmailScopes;
import com.google.api.services.gmail.model.ListMessagesResponse;
import com.google.api.services.gmail.model.Message;
import com.google.api.services.gmail.model.MessagePart;

import io.restassured.path.json.JsonPath;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.support.ui.WebDriverWait;

public class GMailUtil {
    private static final String APPLICATION_NAME = "testhexure";
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();
    private static final String USER_ID = "me";
    private static final Logger Log = LogManager.getLogger(GMailUtil.class);

    private static final List<String> SCOPES = Collections.singletonList(GmailScopes.MAIL_GOOGLE_COM);
    private static final String CREDENTIALS_FILE_PATH =
            System.getProperty("user.dir") +
                    File.separator + "src" +
                    File.separator + "main" +
                    File.separator + "resources" +
                    File.separator + "credentials" +
                    File.separator + "credentials_new.json";

    private static final String TOKENS_DIRECTORY_PATH = System.getProperty("user.dir") +
            File.separator + "src" +
            File.separator + "main" +
            File.separator + "resources" +
            File.separator + "credentials";

    private static Credential getCredentials(final NetHttpTransport HTTP_TRANSPORT) throws IOException {
        // Load client secrets.
        InputStream input = new FileInputStream(new File(CREDENTIALS_FILE_PATH));
        if (input == null) {
            throw new FileNotFoundException("Resource not found: " + CREDENTIALS_FILE_PATH);
        }
        GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(input));
        // Build flow and trigger user authorization request.
        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
                HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, SCOPES)
                .setDataStoreFactory(new FileDataStoreFactory(new java.io.File(TOKENS_DIRECTORY_PATH)))
                .setAccessType("offline")
                .build();
        LocalServerReceiver receiver = new LocalServerReceiver.Builder().setPort(9999).build();
        return new AuthorizationCodeInstalledApp(flow, receiver).authorize("user");
    }

    public static Gmail getService() throws IOException, GeneralSecurityException {
        // Build a new authorized API client service.
        final NetHttpTransport HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
        Gmail service = new Gmail.Builder(HTTP_TRANSPORT, JSON_FACTORY, getCredentials(HTTP_TRANSPORT))
                .setApplicationName(APPLICATION_NAME)
                .build();
        return service;
    }
    public static List<Message> listMessagesMatchingQuery(Gmail service, String userId,
                                                          String query) throws IOException {
        ListMessagesResponse response = service.users().messages().list(userId).setQ(query).execute();
        List<Message> messages = new ArrayList<Message>();
        while (response.getMessages() != null) {
            messages.addAll(response.getMessages());
            if (response.getNextPageToken() != null) {
                String pageToken = response.getNextPageToken();
                response = service.users().messages().list(userId).setQ(query)
                        .setPageToken(pageToken).execute();
            } else {
                break;
            }
        }
        return messages;
    }
    public static Message getMessage(Gmail service, String userId, List<Message> messages, int index)
            throws IOException {
        Message message = service.users().messages().get(userId, messages.get(index).getId()).execute();
        return message;
    }
    public static HashMap<String, String> getGmailData(String query) {
        try {
            Gmail service = getService();
            List<Message> messages = listMessagesMatchingQuery(service, USER_ID, "subject:"+query);
            Message message = getMessage(service, USER_ID, messages, 0);
            JsonPath jsonMessage = new JsonPath(message.toString());

            String subject = jsonMessage.getString("payload.headers.find { it.name == 'Subject' }.value");
            String body = new String(Base64.getDecoder().decode(jsonMessage.getString("payload.body.data")));
            String link = null;
            String messagePart[] = body.split("\n");
            for(String part: messagePart) {
                part = part.trim();
                if(part.startsWith("http") || part.startsWith("https")) {
                    link = part.trim();
                }
            }
            HashMap<String, String> mapEmail = new HashMap<String, String>();
            mapEmail.put("subject", subject);
            mapEmail.put("body", body);
            mapEmail.put("link", link);
            return mapEmail;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static List<Message> getMessages(ListMessagesResponse response) {
        List<Message> messages = new ArrayList<Message>();
        try {
            final NetHttpTransport HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
            Gmail service = new Gmail.Builder(HTTP_TRANSPORT, JSON_FACTORY, getCredentials(HTTP_TRANSPORT))
                    .setApplicationName(APPLICATION_NAME)
                    .build();
            while (response.getMessages() != null) {
                messages.addAll(response.getMessages());
                if (response.getNextPageToken() != null) {
                    String pageToken = response.getNextPageToken();
                    response = service.users().messages().list(USER_ID)
                            .setPageToken(pageToken).execute();
                } else {
                    break;
                }
            }
            return messages;
        } catch (Exception e) {
            System.out.println("Exception log " + e);
            return messages;
        }
    }

    public static HashMap<String, String> getGmailDataByBodyAndSubject(String subjectInput,String bodyInput) {
        try {
            Gmail service = getService();
            List<Message> messages = listMessagesMatchingQuery(service, USER_ID, subjectInput, bodyInput);
            Message message = getMessage(service, USER_ID, messages, 0);
            String body = "";
            JsonPath jsonMessage = new JsonPath(message.toString());
            String content = jsonMessage.getString("payload.headers.find { it.name == 'Content-Type' }.value");
            String subject = jsonMessage.getString("payload.headers.find { it.name == 'Subject' }.value");
            if(content.contains("text/plain"))
                body = new String(Base64.getDecoder().decode(jsonMessage.getString("payload.body.data")));
            else
                body = new String(Base64.getUrlDecoder().decode(message.getPayload().getParts().get(0).getBody().getData()), "UTF-8");

            String link = null;
            String messagePart[] = body.split("\n");
            for(String part: messagePart) {
                part = part.trim();
                if(part.startsWith("http") || part.startsWith("https")) {
                    link = part.trim();
                }
            }
            HashMap<String, String> mapEmail = new HashMap<String, String>();
            mapEmail.put("subject", subject);
            mapEmail.put("body", body);
            mapEmail.put("link", link);
            return mapEmail;
        } catch (Exception e)
        {
            Log.error("No message found with given subject", e);
            throw new FLException("No message found with given subject >>>> " + e.getMessage());
        }
    }
    public static List<Message> listMessagesMatchingQuery(Gmail service, String userId, String subjectQuery, String bodyQuery) throws IOException {
        try {
            String query = "subject:" + subjectQuery + " " + bodyQuery;
            ListMessagesResponse response = new ListMessagesResponse();
            int count =0;
            while (response.size() < 2 & count < 300) {
                response = service.users().messages().list(userId).setQ(query).execute();
                Thread.sleep(1000);
                count++;
            }
            Log.info("Email with subject " + subjectQuery + " and body " + bodyQuery + " arrived in " + count + " seconds");
            List<Message> messages = new ArrayList<Message>();
            while (response.getMessages() != null) {
                messages.addAll(response.getMessages());
                if (response.getNextPageToken() != null) {
                    String pageToken = response.getNextPageToken();
                    response = service.users().messages().list(userId).setQ(query).setPageToken(pageToken).execute();
                } else {
                    break;
                }
            }
            return messages;
        } catch (Exception e)
        {
            Log.error("No message found ", e);
            throw new FLException("No message found >>>> " + e.getMessage());
        }
    }
}