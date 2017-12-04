<?php
/**
 * FonenumbersApi
 * PHP version 5
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */

/**
 * FoneStorm API 2.2.0
 *
 * Extended API Documentation: https://developer.fonestorm.com
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
 * FonenumbersApi Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class FonenumbersApi
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
     * @return FonenumbersApi
     */
    public function setApiClient(\Swagger\Client\ApiClient $apiClient)
    {
        $this->apiClient = $apiClient;
        return $this;
    }

    /**
     * Operation deleteFonenumbersFonenumber
     *
     * Delete a fonenumber identified by fonenumber.
     *
     * @param string $fonenumber Your FracTEL fonenumber. (required)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return string
     */
    public function deleteFonenumbersFonenumber($fonenumber)
    {
        list($response) = $this->deleteFonenumbersFonenumberWithHttpInfo($fonenumber);
        return $response;
    }

    /**
     * Operation deleteFonenumbersFonenumberWithHttpInfo
     *
     * Delete a fonenumber identified by fonenumber.
     *
     * @param string $fonenumber Your FracTEL fonenumber. (required)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function deleteFonenumbersFonenumberWithHttpInfo($fonenumber)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling deleteFonenumbersFonenumber');
        }
        // parse inputs
        $resourcePath = "/fonenumbers/{fonenumber}";
        $httpBody = '';
        $queryParams = [];
        $headerParams = [];
        $formParams = [];
        $_header_accept = $this->apiClient->selectHeaderAccept([]);
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(['application/x-www-form-urlencoded']);

        // path params
        if ($fonenumber !== null) {
            $resourcePath = str_replace(
                "{" . "fonenumber" . "}",
                $this->apiClient->getSerializer()->toPathValue($fonenumber),
                $resourcePath
            );
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
                'DELETE',
                $queryParams,
                $httpBody,
                $headerParams,
                'string',
                '/fonenumbers/{fonenumber}'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, 'string', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                default:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), 'string', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation getFonenumbers
     *
     * Get a list of all active fonenumbers under the account.
     *
     * @param string $filter Filters for the response. (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return string
     */
    public function getFonenumbers($filter = null)
    {
        list($response) = $this->getFonenumbersWithHttpInfo($filter);
        return $response;
    }

    /**
     * Operation getFonenumbersWithHttpInfo
     *
     * Get a list of all active fonenumbers under the account.
     *
     * @param string $filter Filters for the response. (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function getFonenumbersWithHttpInfo($filter = null)
    {
        // parse inputs
        $resourcePath = "/fonenumbers";
        $httpBody = '';
        $queryParams = [];
        $headerParams = [];
        $formParams = [];
        $_header_accept = $this->apiClient->selectHeaderAccept([]);
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(['application/x-www-form-urlencoded']);

        // query params
        if ($filter !== null) {
            $queryParams['filter'] = $this->apiClient->getSerializer()->toQueryValue($filter);
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
                'GET',
                $queryParams,
                $httpBody,
                $headerParams,
                'string',
                '/fonenumbers'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, 'string', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                default:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), 'string', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation getFonenumbersFonenumber
     *
     * Get a fonenumber identified by fonenumber.
     *
     * @param string $fonenumber Your FracTEL fonenumber. (required)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return string
     */
    public function getFonenumbersFonenumber($fonenumber)
    {
        list($response) = $this->getFonenumbersFonenumberWithHttpInfo($fonenumber);
        return $response;
    }

    /**
     * Operation getFonenumbersFonenumberWithHttpInfo
     *
     * Get a fonenumber identified by fonenumber.
     *
     * @param string $fonenumber Your FracTEL fonenumber. (required)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function getFonenumbersFonenumberWithHttpInfo($fonenumber)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling getFonenumbersFonenumber');
        }
        // parse inputs
        $resourcePath = "/fonenumbers/{fonenumber}";
        $httpBody = '';
        $queryParams = [];
        $headerParams = [];
        $formParams = [];
        $_header_accept = $this->apiClient->selectHeaderAccept([]);
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(['application/x-www-form-urlencoded']);

        // path params
        if ($fonenumber !== null) {
            $resourcePath = str_replace(
                "{" . "fonenumber" . "}",
                $this->apiClient->getSerializer()->toPathValue($fonenumber),
                $resourcePath
            );
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
                'GET',
                $queryParams,
                $httpBody,
                $headerParams,
                'string',
                '/fonenumbers/{fonenumber}'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, 'string', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                default:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), 'string', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation postFonenumbers
     *
     * Create a fonenumber under the account.
     *
     * @param string $area_code A valid 3-digit Area Code. (required)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return string
     */
    public function postFonenumbers($area_code)
    {
        list($response) = $this->postFonenumbersWithHttpInfo($area_code);
        return $response;
    }

    /**
     * Operation postFonenumbersWithHttpInfo
     *
     * Create a fonenumber under the account.
     *
     * @param string $area_code A valid 3-digit Area Code. (required)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function postFonenumbersWithHttpInfo($area_code)
    {
        // verify the required parameter 'area_code' is set
        if ($area_code === null) {
            throw new \InvalidArgumentException('Missing the required parameter $area_code when calling postFonenumbers');
        }
        // parse inputs
        $resourcePath = "/fonenumbers";
        $httpBody = '';
        $queryParams = [];
        $headerParams = [];
        $formParams = [];
        $_header_accept = $this->apiClient->selectHeaderAccept([]);
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(['application/x-www-form-urlencoded']);

        // form params
        if ($area_code !== null) {
            $formParams['area_code'] = $this->apiClient->getSerializer()->toFormValue($area_code);
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
                'string',
                '/fonenumbers'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, 'string', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                default:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), 'string', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }

    /**
     * Operation putFonenumbersFonenumber
     *
     * Update a fonenumber identified by fonenumber.
     *
     * @param string $fonenumber Your FracTEL fonenumber. (required)
     * @param string $type Message routing type. (required)
     * @param string $value Message routing type value. (optional)
     * @param string $url_method URL method. (optional)
     * @param string $url_username URL auth username. (optional)
     * @param string $url_password URL auth password. (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return string
     */
    public function putFonenumbersFonenumber($fonenumber, $type, $value = null, $url_method = null, $url_username = null, $url_password = null)
    {
        list($response) = $this->putFonenumbersFonenumberWithHttpInfo($fonenumber, $type, $value, $url_method, $url_username, $url_password);
        return $response;
    }

    /**
     * Operation putFonenumbersFonenumberWithHttpInfo
     *
     * Update a fonenumber identified by fonenumber.
     *
     * @param string $fonenumber Your FracTEL fonenumber. (required)
     * @param string $type Message routing type. (required)
     * @param string $value Message routing type value. (optional)
     * @param string $url_method URL method. (optional)
     * @param string $url_username URL auth username. (optional)
     * @param string $url_password URL auth password. (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function putFonenumbersFonenumberWithHttpInfo($fonenumber, $type, $value = null, $url_method = null, $url_username = null, $url_password = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling putFonenumbersFonenumber');
        }
        // verify the required parameter 'type' is set
        if ($type === null) {
            throw new \InvalidArgumentException('Missing the required parameter $type when calling putFonenumbersFonenumber');
        }
        // parse inputs
        $resourcePath = "/fonenumbers/{fonenumber}";
        $httpBody = '';
        $queryParams = [];
        $headerParams = [];
        $formParams = [];
        $_header_accept = $this->apiClient->selectHeaderAccept([]);
        if (!is_null($_header_accept)) {
            $headerParams['Accept'] = $_header_accept;
        }
        $headerParams['Content-Type'] = $this->apiClient->selectHeaderContentType(['application/x-www-form-urlencoded']);

        // path params
        if ($fonenumber !== null) {
            $resourcePath = str_replace(
                "{" . "fonenumber" . "}",
                $this->apiClient->getSerializer()->toPathValue($fonenumber),
                $resourcePath
            );
        }
        // form params
        if ($type !== null) {
            $formParams['type'] = $this->apiClient->getSerializer()->toFormValue($type);
        }
        // form params
        if ($value !== null) {
            $formParams['value'] = $this->apiClient->getSerializer()->toFormValue($value);
        }
        // form params
        if ($url_method !== null) {
            $formParams['url_method'] = $this->apiClient->getSerializer()->toFormValue($url_method);
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
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'PUT',
                $queryParams,
                $httpBody,
                $headerParams,
                'string',
                '/fonenumbers/{fonenumber}'
            );

            return [$this->apiClient->getSerializer()->deserialize($response, 'string', $httpHeader), $statusCode, $httpHeader];
        } catch (ApiException $e) {
            switch ($e->getCode()) {
                default:
                    $data = $this->apiClient->getSerializer()->deserialize($e->getResponseBody(), 'string', $e->getResponseHeaders());
                    $e->setResponseObject($data);
                    break;
            }

            throw $e;
        }
    }
}
