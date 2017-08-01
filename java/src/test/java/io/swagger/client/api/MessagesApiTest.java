/*
 * FracTEL API 2.1.0
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 2.1.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.api;

import io.swagger.client.ApiException;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for MessagesApi
 */
@Ignore
public class MessagesApiTest {

    private final MessagesApi api = new MessagesApi();

    
    /**
     * Configure the delivery service type used as the destination for received messages.
     *
     * Returns a JSON response
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void postMessagesReceiveTest() throws ApiException {
        String fonenumber = null;
        String type = null;
        String value = null;
        String urlMethod = null;
        String urlUsername = null;
        String urlPassword = null;
        String response = api.postMessagesReceive(fonenumber, type, value, urlMethod, urlUsername, urlPassword);

        // TODO: test validations
    }
    
    /**
     * Configure the callback URL to notify when a message is received.
     *
     * Returns a JSON response
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void postMessagesReceiveNotifyTest() throws ApiException {
        String fonenumber = null;
        String method = null;
        String url = null;
        String urlUsername = null;
        String urlPassword = null;
        String response = api.postMessagesReceiveNotify(fonenumber, method, url, urlUsername, urlPassword);

        // TODO: test validations
    }
    
    /**
     * Send an SMS or MMS message to a recipient.
     *
     * Returns a JSON response
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void postMessagesSendTest() throws ApiException {
        String to = null;
        String fonenumber = null;
        String message = null;
        List<String> mediaUrl = null;
        String confirmationUrl = null;
        String confirmationUrlUsername = null;
        String confirmationUrlPassword = null;
        Boolean requireConfirmation = null;
        String response = api.postMessagesSend(to, fonenumber, message, mediaUrl, confirmationUrl, confirmationUrlUsername, confirmationUrlPassword, requireConfirmation);

        // TODO: test validations
    }
    
    /**
     * Configure the callback URL to notify when a message is sent.
     *
     * Returns a JSON response
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void postMessagesSendNotifyTest() throws ApiException {
        String fonenumber = null;
        String method = null;
        String url = null;
        String urlUsername = null;
        String urlPassword = null;
        String response = api.postMessagesSendNotify(fonenumber, method, url, urlUsername, urlPassword);

        // TODO: test validations
    }
    
}
