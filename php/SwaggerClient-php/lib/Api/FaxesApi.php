<?php
/**
 * FaxesApi
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
 * FaxesApi Class Doc Comment
 *
 * @category Class
 * @package  Swagger\Client
 * @author   Swagger Codegen team
 * @link     https://github.com/swagger-api/swagger-codegen
 */
class FaxesApi
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
     * @return FaxesApi
     */
    public function setApiClient(\Swagger\Client\ApiClient $apiClient)
    {
        $this->apiClient = $apiClient;
        return $this;
    }

    /**
     * Operation postFaxes
     *
     * Create a new fax under the account.
     *
     * @param string $fonenumber FracTEL phone number to use for fax. (required)
     * @param string $to Phone number to fax. (required)
     * @param string $message Message to fax. (optional)
     * @param string $pdf  (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return string
     */
    public function postFaxes($fonenumber, $to, $message = null, $pdf = null)
    {
        list($response) = $this->postFaxesWithHttpInfo($fonenumber, $to, $message, $pdf);
        return $response;
    }

    /**
     * Operation postFaxesWithHttpInfo
     *
     * Create a new fax under the account.
     *
     * @param string $fonenumber FracTEL phone number to use for fax. (required)
     * @param string $to Phone number to fax. (required)
     * @param string $message Message to fax. (optional)
     * @param string $pdf  (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function postFaxesWithHttpInfo($fonenumber, $to, $message = null, $pdf = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling postFaxes');
        }
        // verify the required parameter 'to' is set
        if ($to === null) {
            throw new \InvalidArgumentException('Missing the required parameter $to when calling postFaxes');
        }
        // parse inputs
        $resourcePath = "/faxes";
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
        if ($fonenumber !== null) {
            $formParams['fonenumber'] = $this->apiClient->getSerializer()->toFormValue($fonenumber);
        }
        // form params
        if ($to !== null) {
            $formParams['to'] = $this->apiClient->getSerializer()->toFormValue($to);
        }
        // form params
        if ($message !== null) {
            $formParams['message'] = $this->apiClient->getSerializer()->toFormValue($message);
        }
        // form params
        if ($pdf !== null) {
            $formParams['pdf'] = $this->apiClient->getSerializer()->toFormValue($pdf);
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
                '/faxes'
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
     * Operation postFaxesReceiveNotify
     *
     * Configure the callback URL to notify when a fax is received.
     *
     * @param string $fonenumber Your FracTEL phone number. (required)
     * @param string $method Callback URL method. (required)
     * @param string $url Callback URL. (required)
     * @param string $url_username Callback URL username. (optional)
     * @param string $url_password Callback URL password. (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return string
     */
    public function postFaxesReceiveNotify($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        list($response) = $this->postFaxesReceiveNotifyWithHttpInfo($fonenumber, $method, $url, $url_username, $url_password);
        return $response;
    }

    /**
     * Operation postFaxesReceiveNotifyWithHttpInfo
     *
     * Configure the callback URL to notify when a fax is received.
     *
     * @param string $fonenumber Your FracTEL phone number. (required)
     * @param string $method Callback URL method. (required)
     * @param string $url Callback URL. (required)
     * @param string $url_username Callback URL username. (optional)
     * @param string $url_password Callback URL password. (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function postFaxesReceiveNotifyWithHttpInfo($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling postFaxesReceiveNotify');
        }
        // verify the required parameter 'method' is set
        if ($method === null) {
            throw new \InvalidArgumentException('Missing the required parameter $method when calling postFaxesReceiveNotify');
        }
        // verify the required parameter 'url' is set
        if ($url === null) {
            throw new \InvalidArgumentException('Missing the required parameter $url when calling postFaxesReceiveNotify');
        }
        // parse inputs
        $resourcePath = "/faxes/receive_notify";
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
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                'string',
                '/faxes/receive_notify'
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
     * Operation postFaxesSendNotify
     *
     * Configure the callback URL to notify when a fax is made.
     *
     * @param string $fonenumber Your FracTEL phone number (required)
     * @param string $method Callback URL method. (required)
     * @param string $url Callback URL. (required)
     * @param string $url_username Callback URL username. (optional)
     * @param string $url_password Callback URL password. (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return string
     */
    public function postFaxesSendNotify($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        list($response) = $this->postFaxesSendNotifyWithHttpInfo($fonenumber, $method, $url, $url_username, $url_password);
        return $response;
    }

    /**
     * Operation postFaxesSendNotifyWithHttpInfo
     *
     * Configure the callback URL to notify when a fax is made.
     *
     * @param string $fonenumber Your FracTEL phone number (required)
     * @param string $method Callback URL method. (required)
     * @param string $url Callback URL. (required)
     * @param string $url_username Callback URL username. (optional)
     * @param string $url_password Callback URL password. (optional)
     * @throws \Swagger\Client\ApiException on non-2xx response
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function postFaxesSendNotifyWithHttpInfo($fonenumber, $method, $url, $url_username = null, $url_password = null)
    {
        // verify the required parameter 'fonenumber' is set
        if ($fonenumber === null) {
            throw new \InvalidArgumentException('Missing the required parameter $fonenumber when calling postFaxesSendNotify');
        }
        // verify the required parameter 'method' is set
        if ($method === null) {
            throw new \InvalidArgumentException('Missing the required parameter $method when calling postFaxesSendNotify');
        }
        // verify the required parameter 'url' is set
        if ($url === null) {
            throw new \InvalidArgumentException('Missing the required parameter $url when calling postFaxesSendNotify');
        }
        // parse inputs
        $resourcePath = "/faxes/send_notify";
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
        // make the API Call
        try {
            list($response, $statusCode, $httpHeader) = $this->apiClient->callApi(
                $resourcePath,
                'POST',
                $queryParams,
                $httpBody,
                $headerParams,
                'string',
                '/faxes/send_notify'
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
