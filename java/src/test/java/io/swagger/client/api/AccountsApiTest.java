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
import io.swagger.client.model.InlineResponse2002;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for AccountsApi
 */
@Ignore
public class AccountsApiTest {

    private final AccountsApi api = new AccountsApi();

    
    /**
     * Set CDR Callback
     *
     * Configure the callback URL to notify when a call dialing record is available.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void configureAccountCdrNotifyTest() throws ApiException {
        String accountId = null;
        String method = null;
        String url = null;
        String username = null;
        String password = null;
        InlineResponse2002 response = api.configureAccountCdrNotify(accountId, method, url, username, password);

        // TODO: test validations
    }
    
    /**
     * Set CDR Callback
     *
     * Configure the callback URL to notify when a call dialing record is available.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void configureAccountCdrNotify_0Test() throws ApiException {
        String accountId = null;
        String method = null;
        String url = null;
        String username = null;
        String password = null;
        InlineResponse2002 response = api.configureAccountCdrNotify_0(accountId, method, url, username, password);

        // TODO: test validations
    }
    
    /**
     * Get Account
     *
     * Get information about an account.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getAccountTest() throws ApiException {
        String id = null;
        InlineResponse2002 response = api.getAccount(id);

        // TODO: test validations
    }
    
    /**
     * Get Account
     *
     * Get information about an account.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getAccount_0Test() throws ApiException {
        String id = null;
        InlineResponse2002 response = api.getAccount_0(id);

        // TODO: test validations
    }
    
    /**
     * Update Account
     *
     * Update an account.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateAccountTest() throws ApiException {
        String id = null;
        String primaryColor = null;
        String secondaryColor = null;
        String backgroundColor = null;
        String fontFamily = null;
        String logo = null;
        InlineResponse2002 response = api.updateAccount(id, primaryColor, secondaryColor, backgroundColor, fontFamily, logo);

        // TODO: test validations
    }
    
    /**
     * Update Account
     *
     * Update an account.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateAccount_0Test() throws ApiException {
        String id = null;
        String primaryColor = null;
        String secondaryColor = null;
        String backgroundColor = null;
        String fontFamily = null;
        String logo = null;
        InlineResponse2002 response = api.updateAccount_0(id, primaryColor, secondaryColor, backgroundColor, fontFamily, logo);

        // TODO: test validations
    }
    
}
