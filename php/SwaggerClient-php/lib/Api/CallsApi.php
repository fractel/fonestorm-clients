<?php
/**
 * CallsApi
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * FoneStorm API 2.4.0 (Thunder)
 *
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.4.0
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
 * CallsApi Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class CallsApi
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
     * @return CallsApi
     */
    public function setApiClient(\Swagger\Client\ApiClient $apiClient)
    {
        $this->apiClient = $apiClient;
        return $this;
    }

    /**
     * Operation configureCallReceiveNotify
     *
     * Set Receive Callback
     *
     * @param string $fonenumber FoneNumber associated with the account (required)
     * @param string $method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. (required)
     * @param string $url Callback URL. See **Notes** for additional information. (required)
     * @param string $url_username Username for HTTP **Basic** authentication scheme (optional)
     * @param string $url_password Password for HTTP **Basic** authentication scheme (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return \Swagger\Client\Model\InlineResponse2014
     */
    public function configureCallReceiveNotify($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        list($response) = $this->configureCallReceiveNotifyWithHttpInfo($fonenumber, $method, $url, $url_username, $url_password);
        return $response;
    }

    /**
     * Operation configureCallReceiveNotifyWithHttpInfo
     *
     * Set Receive Callback
     *
     * @param string $fonenumber FoneNumber associated with the account (required)
     * @param string $method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. (required)
     * @param string $url Callback URL. See **Notes** for additional information. (required)
     * @param string $url_username Username for HTTP **Basic** authentication scheme (optional)
     * @param string $url_password Password for HTTP **Basic** authentication scheme (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of \Swagger\Client\Model\InlineResponse2014, HTTP status code, HTTP response headers (array of strings)
     */
    public function configureCallReceiveNotifyWithHttpInfo($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling configureCallReceiveNotify');
        }
        // verify the required parameter 'method' is set
        if ($method === null) {
            throw new \InvalidArgumentException('Missing the required parameter $method when calling configureCallReceiveNotify');
        }
        // verify the required parameter 'url' is set
        if ($url === null) {
            throw new \InvalidArgumentException('Missing the required parameter $url when calling configureCallReceiveNotify');
        }
        // parse inputs
        $resourcePath = "/calls/receive_notify";
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
        if ($fonenumber !== null) {
            $formParams['fonenumber'] = $this->apiClient->getSerializer()->toFormValue($fonenumber);
        }
        // form params
        if ($method !== null) {
            $formParams['method'] = $this->apiClient->getSerializer()->toFormValue($method);
        }
        // form params
        if ($url !== null) {
            $formParams['url'] = $this->apiClient->getSerializer()->toFormValue($url);
        }
        // form params
        if ($url_username !== null) {
            $formParams['url_username'] = $this->apiClient->getSerializer()->toFormValue($url_username);
        }
        // form params
        if ($url_password !== null) {
            $formParams['url_password'] = $this->apiClient->getSerializer()->toFormValue($url_password);
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('token');
        if (strlen($apiKey) !== 0) {
            $headerParams['token'] = $apiKey;
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse2014',
                '/calls/receive_notify'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse2014', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse2014', $e->getResponseHeaders());
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

    /**
     * Operation configureCallReceiveNotify_0
     *
     * Set Receive Callback
     *
     * @param string $fonenumber FoneNumber associated with the account (required)
     * @param string $method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. (required)
     * @param string $url Callback URL. See **Notes** for additional information. (required)
     * @param string $url_username Username for HTTP **Basic** authentication scheme (optional)
     * @param string $url_password Password for HTTP **Basic** authentication scheme (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return \Swagger\Client\Model\InlineResponse2014
     */
    public function configureCallReceiveNotify_0($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        list($response) = $this->configureCallReceiveNotify_0WithHttpInfo($fonenumber, $method, $url, $url_username, $url_password);
        return $response;
    }

    /**
     * Operation configureCallReceiveNotify_0WithHttpInfo
     *
     * Set Receive Callback
     *
     * @param string $fonenumber FoneNumber associated with the account (required)
     * @param string $method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. (required)
     * @param string $url Callback URL. See **Notes** for additional information. (required)
     * @param string $url_username Username for HTTP **Basic** authentication scheme (optional)
     * @param string $url_password Password for HTTP **Basic** authentication scheme (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of \Swagger\Client\Model\InlineResponse2014, HTTP status code, HTTP response headers (array of strings)
     */
    public function configureCallReceiveNotify_0WithHttpInfo($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling configureCallReceiveNotify_0');
        }
        // verify the required parameter 'method' is set
        if ($method === null) {
            throw new \InvalidArgumentException('Missing the required parameter $method when calling configureCallReceiveNotify_0');
        }
        // verify the required parameter 'url' is set
        if ($url === null) {
            throw new \InvalidArgumentException('Missing the required parameter $url when calling configureCallReceiveNotify_0');
        }
        // parse inputs
        $resourcePath = "/calls/receive_notify";
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
        if ($fonenumber !== null) {
            $formParams['fonenumber'] = $this->apiClient->getSerializer()->toFormValue($fonenumber);
        }
        // form params
        if ($method !== null) {
            $formParams['method'] = $this->apiClient->getSerializer()->toFormValue($method);
        }
        // form params
        if ($url !== null) {
            $formParams['url'] = $this->apiClient->getSerializer()->toFormValue($url);
        }
        // form params
        if ($url_username !== null) {
            $formParams['url_username'] = $this->apiClient->getSerializer()->toFormValue($url_username);
        }
        // form params
        if ($url_password !== null) {
            $formParams['url_password'] = $this->apiClient->getSerializer()->toFormValue($url_password);
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('token');
        if (strlen($apiKey) !== 0) {
            $headerParams['token'] = $apiKey;
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse2014',
                '/calls/receive_notify'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse2014', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse2014', $e->getResponseHeaders());
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

    /**
     * Operation configureCallSendNotify
     *
     * Set Send Callback
     *
     * @param string $fonenumber FoneNumber associated with the account (required)
     * @param string $method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. (required)
     * @param string $url Callback URL. See **Notes** for additional information. (required)
     * @param string $url_username Username for HTTP **Basic** authentication scheme (optional)
     * @param string $url_password Password for HTTP **Basic** authentication scheme (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return \Swagger\Client\Model\InlineResponse2014
     */
    public function configureCallSendNotify($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        list($response) = $this->configureCallSendNotifyWithHttpInfo($fonenumber, $method, $url, $url_username, $url_password);
        return $response;
    }

    /**
     * Operation configureCallSendNotifyWithHttpInfo
     *
     * Set Send Callback
     *
     * @param string $fonenumber FoneNumber associated with the account (required)
     * @param string $method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. (required)
     * @param string $url Callback URL. See **Notes** for additional information. (required)
     * @param string $url_username Username for HTTP **Basic** authentication scheme (optional)
     * @param string $url_password Password for HTTP **Basic** authentication scheme (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of \Swagger\Client\Model\InlineResponse2014, HTTP status code, HTTP response headers (array of strings)
     */
    public function configureCallSendNotifyWithHttpInfo($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling configureCallSendNotify');
        }
        // verify the required parameter 'method' is set
        if ($method === null) {
            throw new \InvalidArgumentException('Missing the required parameter $method when calling configureCallSendNotify');
        }
        // verify the required parameter 'url' is set
        if ($url === null) {
            throw new \InvalidArgumentException('Missing the required parameter $url when calling configureCallSendNotify');
        }
        // parse inputs
        $resourcePath = "/calls/send_notify";
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
        if ($fonenumber !== null) {
            $formParams['fonenumber'] = $this->apiClient->getSerializer()->toFormValue($fonenumber);
        }
        // form params
        if ($method !== null) {
            $formParams['method'] = $this->apiClient->getSerializer()->toFormValue($method);
        }
        // form params
        if ($url !== null) {
            $formParams['url'] = $this->apiClient->getSerializer()->toFormValue($url);
        }
        // form params
        if ($url_username !== null) {
            $formParams['url_username'] = $this->apiClient->getSerializer()->toFormValue($url_username);
        }
        // form params
        if ($url_password !== null) {
            $formParams['url_password'] = $this->apiClient->getSerializer()->toFormValue($url_password);
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('token');
        if (strlen($apiKey) !== 0) {
            $headerParams['token'] = $apiKey;
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse2014',
                '/calls/send_notify'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse2014', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse2014', $e->getResponseHeaders());
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

    /**
     * Operation configureCallSendNotify_0
     *
     * Set Send Callback
     *
     * @param string $fonenumber FoneNumber associated with the account (required)
     * @param string $method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. (required)
     * @param string $url Callback URL. See **Notes** for additional information. (required)
     * @param string $url_username Username for HTTP **Basic** authentication scheme (optional)
     * @param string $url_password Password for HTTP **Basic** authentication scheme (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return \Swagger\Client\Model\InlineResponse2014
     */
    public function configureCallSendNotify_0($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        list($response) = $this->configureCallSendNotify_0WithHttpInfo($fonenumber, $method, $url, $url_username, $url_password);
        return $response;
    }

    /**
     * Operation configureCallSendNotify_0WithHttpInfo
     *
     * Set Send Callback
     *
     * @param string $fonenumber FoneNumber associated with the account (required)
     * @param string $method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information. (required)
     * @param string $url Callback URL. See **Notes** for additional information. (required)
     * @param string $url_username Username for HTTP **Basic** authentication scheme (optional)
     * @param string $url_password Password for HTTP **Basic** authentication scheme (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of \Swagger\Client\Model\InlineResponse2014, HTTP status code, HTTP response headers (array of strings)
     */
    public function configureCallSendNotify_0WithHttpInfo($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling configureCallSendNotify_0');
        }
        // verify the required parameter 'method' is set
        if ($method === null) {
            throw new \InvalidArgumentException('Missing the required parameter $method when calling configureCallSendNotify_0');
        }
        // verify the required parameter 'url' is set
        if ($url === null) {
            throw new \InvalidArgumentException('Missing the required parameter $url when calling configureCallSendNotify_0');
        }
        // parse inputs
        $resourcePath = "/calls/send_notify";
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
        if ($fonenumber !== null) {
            $formParams['fonenumber'] = $this->apiClient->getSerializer()->toFormValue($fonenumber);
        }
        // form params
        if ($method !== null) {
            $formParams['method'] = $this->apiClient->getSerializer()->toFormValue($method);
        }
        // form params
        if ($url !== null) {
            $formParams['url'] = $this->apiClient->getSerializer()->toFormValue($url);
        }
        // form params
        if ($url_username !== null) {
            $formParams['url_username'] = $this->apiClient->getSerializer()->toFormValue($url_username);
        }
        // form params
        if ($url_password !== null) {
            $formParams['url_password'] = $this->apiClient->getSerializer()->toFormValue($url_password);
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('token');
        if (strlen($apiKey) !== 0) {
            $headerParams['token'] = $apiKey;
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse2014',
                '/calls/send_notify'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse2014', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse2014', $e->getResponseHeaders());
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

    /**
     * Operation createCall
     *
     * Create Call
     *
     * @param string $fonenumber FoneNumber to use as caller (required)
     * @param string $to Receiving 10 digit phone number (required)
     * @param string $tts Text to speech message (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return \Swagger\Client\Model\InlineResponse2011
     */
    public function createCall($fonenumber, $to, $tts = null)
    {
        list($response) = $this->createCallWithHttpInfo($fonenumber, $to, $tts);
        return $response;
    }

    /**
     * Operation createCallWithHttpInfo
     *
     * Create Call
     *
     * @param string $fonenumber FoneNumber to use as caller (required)
     * @param string $to Receiving 10 digit phone number (required)
     * @param string $tts Text to speech message (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of \Swagger\Client\Model\InlineResponse2011, HTTP status code, HTTP response headers (array of strings)
     */
    public function createCallWithHttpInfo($fonenumber, $to, $tts = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling createCall');
        }
        // verify the required parameter 'to' is set
        if ($to === null) {
            throw new \InvalidArgumentException('Missing the required parameter $to when calling createCall');
        }
        // parse inputs
        $resourcePath = "/calls";
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
        if ($fonenumber !== null) {
            $formParams['fonenumber'] = $this->apiClient->getSerializer()->toFormValue($fonenumber);
        }
        // form params
        if ($to !== null) {
            $formParams['to'] = $this->apiClient->getSerializer()->toFormValue($to);
        }
        // form params
        if ($tts !== null) {
            $formParams['tts'] = $this->apiClient->getSerializer()->toFormValue($tts);
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('token');
        if (strlen($apiKey) !== 0) {
            $headerParams['token'] = $apiKey;
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse2011',
                '/calls'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse2011', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 201:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse2011', $e->getResponseHeaders());
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

    /**
     * Operation createCall_0
     *
     * Create Call
     *
     * @param string $fonenumber FoneNumber to use as caller (required)
     * @param string $to Receiving 10 digit phone number (required)
     * @param string $tts Text to speech message (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return \Swagger\Client\Model\InlineResponse2011
     */
    public function createCall_0($fonenumber, $to, $tts = null)
    {
        list($response) = $this->createCall_0WithHttpInfo($fonenumber, $to, $tts);
        return $response;
    }

    /**
     * Operation createCall_0WithHttpInfo
     *
     * Create Call
     *
     * @param string $fonenumber FoneNumber to use as caller (required)
     * @param string $to Receiving 10 digit phone number (required)
     * @param string $tts Text to speech message (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of \Swagger\Client\Model\InlineResponse2011, HTTP status code, HTTP response headers (array of strings)
     */
    public function createCall_0WithHttpInfo($fonenumber, $to, $tts = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling createCall_0');
        }
        // verify the required parameter 'to' is set
        if ($to === null) {
            throw new \InvalidArgumentException('Missing the required parameter $to when calling createCall_0');
        }
        // parse inputs
        $resourcePath = "/calls";
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
        if ($fonenumber !== null) {
            $formParams['fonenumber'] = $this->apiClient->getSerializer()->toFormValue($fonenumber);
        }
        // form params
        if ($to !== null) {
            $formParams['to'] = $this->apiClient->getSerializer()->toFormValue($to);
        }
        // form params
        if ($tts !== null) {
            $formParams['tts'] = $this->apiClient->getSerializer()->toFormValue($tts);
        }

        // for model (json/xml)
        if (isset($_tempBody)) {
            $httpBody = $_tempBody; // $_tempBody is the method argument, if present
        } elseif (count($formParams) > 0) {
            $httpBody = $formParams; // for HTTP post (form)
        }
        // this endpoint requires API key authentication
        $apiKey = $this->apiClient->getApiKeyWithPrefix('token');
        if (strlen($apiKey) !== 0) {
            $headerParams['token'] = $apiKey;
        }
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                '\Swagger\Client\Model\InlineResponse2011',
                '/calls'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, '\Swagger\Client\Model\InlineResponse2011', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 201:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), '\Swagger\Client\Model\InlineResponse2011', $e->getResponseHeaders());
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
