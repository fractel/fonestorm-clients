/*
 * FoneStorm API 2.4.0 (Thunder)
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.4.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


package io.swagger.client.api;

import io.swagger.client.ApiException;
import io.swagger.client.model.Error;
import io.swagger.client.model.InlineResponse2006;
import io.swagger.client.model.InlineResponse2019;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for TemplatesApi
 */
@Ignore
public class TemplatesApiTest {

    private final TemplatesApi api = new TemplatesApi();

    
    /**
     * Create Template
     *
     * Create a template
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createTemplateTest() throws ApiException {
        String name = null;
        String type = null;
        String body = null;
        InlineResponse2019 response = api.createTemplate(name, type, body);

        // TODO: test validations
    }
    
    /**
     * Create Template
     *
     * Create a template
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void createTemplate_0Test() throws ApiException {
        String name = null;
        String type = null;
        String body = null;
        InlineResponse2019 response = api.createTemplate_0(name, type, body);

        // TODO: test validations
    }
    
    /**
     * Delete Template
     *
     * Delete a template.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteTemplateTest() throws ApiException {
        String id = null;
        InlineResponse2019 response = api.deleteTemplate(id);

        // TODO: test validations
    }
    
    /**
     * Delete Template
     *
     * Delete a template.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void deleteTemplate_0Test() throws ApiException {
        String id = null;
        InlineResponse2019 response = api.deleteTemplate_0(id);

        // TODO: test validations
    }
    
    /**
     * Get Template
     *
     * Get information about a template.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getTemplateTest() throws ApiException {
        String id = null;
        Boolean attributes = null;
        InlineResponse2019 response = api.getTemplate(id, attributes);

        // TODO: test validations
    }
    
    /**
     * Get Template
     *
     * Get information about a template.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getTemplate_0Test() throws ApiException {
        String id = null;
        Boolean attributes = null;
        InlineResponse2019 response = api.getTemplate_0(id, attributes);

        // TODO: test validations
    }
    
    /**
     * Get Templates
     *
     * Get a list of templates.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getTemplatesTest() throws ApiException {
        InlineResponse2006 response = api.getTemplates();

        // TODO: test validations
    }
    
    /**
     * Get Templates
     *
     * Get a list of templates.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getTemplates_0Test() throws ApiException {
        InlineResponse2006 response = api.getTemplates_0();

        // TODO: test validations
    }
    
    /**
     * Update Template
     *
     * Update a template.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateTemplateTest() throws ApiException {
        String id = null;
        String name = null;
        String type = null;
        String body = null;
        InlineResponse2019 response = api.updateTemplate(id, name, type, body);

        // TODO: test validations
    }
    
    /**
     * Update Template
     *
     * Update a template.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void updateTemplate_0Test() throws ApiException {
        String id = null;
        String name = null;
        String type = null;
        String body = null;
        InlineResponse2019 response = api.updateTemplate_0(id, name, type, body);

        // TODO: test validations
    }
    
}