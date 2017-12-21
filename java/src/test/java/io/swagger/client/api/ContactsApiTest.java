/*
 * FoneStorm API 2.2.0 (Breeze)
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.2.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.api;

import io.swagger.client.ApiException;
import io.swagger.client.model.Error;
import io.swagger.client.model.InlineResponse200;
import io.swagger.client.model.InlineResponse2013;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for ContactsApi
 */
@Ignore
public class ContactsApiTest {

    private final ContactsApi api = new ContactsApi();

    
    /**
     * Create Contact
     *
     * Create a contact.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createContactTest() throws ApiException {
        String email = null;
        String firstName = null;
        String lastName = null;
        Boolean optInCall = null;
        Boolean optInEmail = null;
        Boolean optInFax = null;
        Boolean optInMessage = null;
        String phone = null;
        InlineResponse2013 response = api.createContact(email, firstName, lastName, optInCall, optInEmail, optInFax, optInMessage, phone);

        // TODO: test validations
    }
    
    /**
     * Create Contact
     *
     * Create a contact.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createContact_0Test() throws ApiException {
        String email = null;
        String firstName = null;
        String lastName = null;
        Boolean optInCall = null;
        Boolean optInEmail = null;
        Boolean optInFax = null;
        Boolean optInMessage = null;
        String phone = null;
        InlineResponse2013 response = api.createContact_0(email, firstName, lastName, optInCall, optInEmail, optInFax, optInMessage, phone);

        // TODO: test validations
    }
    
    /**
     * Get Contacts
     *
     * Get a list of all contacts.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getContactsTest() throws ApiException {
        InlineResponse200 response = api.getContacts();

        // TODO: test validations
    }
    
    /**
     * Get Contacts
     *
     * Get a list of all contacts.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getContacts_0Test() throws ApiException {
        InlineResponse200 response = api.getContacts_0();

        // TODO: test validations
    }
    
}