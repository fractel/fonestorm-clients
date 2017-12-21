<?php
/**
 * AuthorizationApi
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * FoneStorm API 2.2.0 (Breeze)
 *
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.2.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 *
 */

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace Swagger\Client\Api;

use \Swagger\Client\ApiClient;
use \Swagger\Client\ApiException;
use \Swagger\Client\Configuration;
use \Swagger\Client\ObjectSerializer;

/**
 * AuthorizationApi Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class AuthorizationApi
{
    /**
     * API Client
     *
     * @var \Swagger\Client\ApiClient instance of the ApiClient
     */
    protected $apiClient;

    /**
     * Constructor
     *
     * @param \Swagger\Client\ApiClient|null $apiClient The api client to use
     */
    public function __construct(\Swagger\Client\ApiClient $apiClient = null)
    {
        if ($apiClient === null) {
            $apiClient = new ApiClient();
        }

        $this->apiClient = $apiClient;
    }

    /**
     * Get API client
     *
     * @return \Swagger\Client\ApiClient get the API client
     */
    public function getApiClient()
    {
        return $this->apiClient;
    }

    /**
     * Set the API client
     *
     * @param \Swagger\Client\ApiClient $apiClient set the API client
     *
     * @return AuthorizationApi
     */
    public function setApiClient(\Swagger\Client\ApiClient $apiClient)
    {
        $this->apiClient = $apiClient;
        return $this;
    }

    /**
     * Operation createToken
     *
     * Create Auth Token
     *
     * @param string $username FracTEL username (required)
     * @param string $password FracTEL password (required)
     * @param int $expires FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 86400 seconds (24 hours) (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return \Swagger\Client\Model\InlineResponse201
     */
    public function createToken($username, $password, $expires = null)
    {
        list($response) = $this->createTokenWithHttpInfo($username, $password, $expires);
        return $response;
    }

    /**
     * Operation createTokenWithHttpInfo
     *
     * Create Auth Token
     *
     * @param string $username FracTEL username (required)
     * @param string $password FracTEL password (required)
     * @param int $expires FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 86400 seconds (24 hours) (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of \Swagger\Client\Model\InlineResponse201, HTTP status code, HTTP response headers (array of strings)
     */
    public function createTokenWithHttpInfo($username, $password, $expires = null)
    {
        // verify the required parameter 'username' is set
        if ($username === null) {
            throw new \InvalidArgumentException('Missing the required parameter $username when calling createToken');
        }
        // verify the required parameter 'password' is set
        if ($password === null) {
            throw new \InvalidArgumentException('Missing the required parameter $password when calling createToken');
        }
        // parse inputs
        $resourcePath = "/auth";
        $httpBody = '';
        $queryParams = [];
        $headerParams = [];
        $formParams = [];
        $_header_accept = $this->apiClient->selectHeaderAccept(['application/json']);
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(['application/x-www-form-urlencoded']);

        // form params
        if ($username !== null) {
            $formParams['username'] = $this->apiClient->getSerializer()->toFormValue($username);
        }
        // form params
        if ($password !== null) {
            $formParams['password'] = $this->apiClient->getSerializer()->toFormValue($password);
        }
        // form params
        if ($expires !== null) {
            $formParams['expires'] = $this->apiClient->getSerializer()->toFormValue($expires);
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse201',
                '/auth'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse201', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 201:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse201', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
                default:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\Error', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }
}
