/**
 * FracTEL API 2.1.0
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 2.1.0
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.2.3
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.FracTelApi210) {
      root.FracTelApi210 = {};
    }
    root.FracTelApi210.MessagesApi = factory(root.FracTelApi210.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';

  /**
   * Messages service.
   * @module api/MessagesApi
   * @version 2.1.0
   */

  /**
   * Constructs a new MessagesApi. 
   * @alias module:api/MessagesApi
   * @class
   * @param {module:ApiClient} apiClient Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the postMessagesReceive operation.
     * @callback module:api/MessagesApi~postMessagesReceiveCallback
     * @param {String} error Error message, if any.
     * @param {'String'} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Configure the delivery service type used as the destination for received messages.
     * Returns a JSON response
     * @param {String} fonenumber Your FracTEL phone number.
     * @param {module:model/String} type Message routing type.
     * @param {Object} opts Optional parameters
     * @param {String} opts.value Message routing type value.
     * @param {module:model/String} opts.urlMethod URL method when type is URL.
     * @param {String} opts.urlUsername Optional URL username when type is URL.
     * @param {String} opts.urlPassword Optional URL password when type is URL.
     * @param {module:api/MessagesApi~postMessagesReceiveCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link 'String'}
     */
    this.postMessagesReceive = function(fonenumber, type, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'fonenumber' is set
      if (fonenumber === undefined || fonenumber === null) {
        throw new Error("Missing the required parameter 'fonenumber' when calling postMessagesReceive");
      }

      // verify the required parameter 'type' is set
      if (type === undefined || type === null) {
        throw new Error("Missing the required parameter 'type' when calling postMessagesReceive");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'fonenumber': fonenumber,
        'type': type,
        'value': opts['value'],
        'url_method': opts['urlMethod'],
        'url_username': opts['urlUsername'],
        'url_password': opts['urlPassword']
      };

      var authNames = [];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = [];
      var returnType = 'String';

      return this.apiClient.callApi(
        '/messages/receive', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the postMessagesReceiveNotify operation.
     * @callback module:api/MessagesApi~postMessagesReceiveNotifyCallback
     * @param {String} error Error message, if any.
     * @param {'String'} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Configure the callback URL to notify when a message is received.
     * Returns a JSON response
     * @param {String} fonenumber Your FracTEL phone number.
     * @param {module:model/String} method Callback URL method.
     * @param {String} url Callback URL.
     * @param {Object} opts Optional parameters
     * @param {String} opts.urlUsername Callback URL username.
     * @param {String} opts.urlPassword Callback URL password.
     * @param {module:api/MessagesApi~postMessagesReceiveNotifyCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link 'String'}
     */
    this.postMessagesReceiveNotify = function(fonenumber, method, url, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'fonenumber' is set
      if (fonenumber === undefined || fonenumber === null) {
        throw new Error("Missing the required parameter 'fonenumber' when calling postMessagesReceiveNotify");
      }

      // verify the required parameter 'method' is set
      if (method === undefined || method === null) {
        throw new Error("Missing the required parameter 'method' when calling postMessagesReceiveNotify");
      }

      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling postMessagesReceiveNotify");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'fonenumber': fonenumber,
        'method': method,
        'url': url,
        'url_username': opts['urlUsername'],
        'url_password': opts['urlPassword']
      };

      var authNames = [];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = [];
      var returnType = 'String';

      return this.apiClient.callApi(
        '/messages/receive_notify', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the postMessagesSend operation.
     * @callback module:api/MessagesApi~postMessagesSendCallback
     * @param {String} error Error message, if any.
     * @param {'String'} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Send an SMS or MMS message to a recipient.
     * Returns a JSON response
     * @param {String} to The recipient&#39;s 10 digits phone number.
     * @param {String} fonenumber Your FracTEL phone number to use as from
     * @param {String} message Content of SMS
     * @param {Object} opts Optional parameters
     * @param {Array.<String>} opts.mediaUrl URL for media for send via SMS (up to 10)
     * @param {String} opts.confirmationUrl Callback URL for confirmation
     * @param {String} opts.confirmationUrlUsername Callback URL username for confirmation
     * @param {String} opts.confirmationUrlPassword Callback URL password for confirmation
     * @param {Boolean} opts.requireConfirmation Only send message if confirmation is available
     * @param {module:api/MessagesApi~postMessagesSendCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link 'String'}
     */
    this.postMessagesSend = function(to, fonenumber, message, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'to' is set
      if (to === undefined || to === null) {
        throw new Error("Missing the required parameter 'to' when calling postMessagesSend");
      }

      // verify the required parameter 'fonenumber' is set
      if (fonenumber === undefined || fonenumber === null) {
        throw new Error("Missing the required parameter 'fonenumber' when calling postMessagesSend");
      }

      // verify the required parameter 'message' is set
      if (message === undefined || message === null) {
        throw new Error("Missing the required parameter 'message' when calling postMessagesSend");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'to': to,
        'fonenumber': fonenumber,
        'message': message,
        'media_url': this.apiClient.buildCollectionParam(opts['mediaUrl'], 'multi'),
        'confirmation_url': opts['confirmationUrl'],
        'confirmation_url_username': opts['confirmationUrlUsername'],
        'confirmation_url_password': opts['confirmationUrlPassword'],
        'require_confirmation': opts['requireConfirmation']
      };

      var authNames = [];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = [];
      var returnType = 'String';

      return this.apiClient.callApi(
        '/messages/send', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the postMessagesSendNotify operation.
     * @callback module:api/MessagesApi~postMessagesSendNotifyCallback
     * @param {String} error Error message, if any.
     * @param {'String'} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Configure the callback URL to notify when a message is sent.
     * Returns a JSON response
     * @param {String} fonenumber Your FracTEL phone number
     * @param {module:model/String} method Callback URL method.
     * @param {String} url Callback URL.
     * @param {Object} opts Optional parameters
     * @param {String} opts.urlUsername Callback URL username.
     * @param {String} opts.urlPassword Callback URL password.
     * @param {module:api/MessagesApi~postMessagesSendNotifyCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link 'String'}
     */
    this.postMessagesSendNotify = function(fonenumber, method, url, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'fonenumber' is set
      if (fonenumber === undefined || fonenumber === null) {
        throw new Error("Missing the required parameter 'fonenumber' when calling postMessagesSendNotify");
      }

      // verify the required parameter 'method' is set
      if (method === undefined || method === null) {
        throw new Error("Missing the required parameter 'method' when calling postMessagesSendNotify");
      }

      // verify the required parameter 'url' is set
      if (url === undefined || url === null) {
        throw new Error("Missing the required parameter 'url' when calling postMessagesSendNotify");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'fonenumber': fonenumber,
        'method': method,
        'url': url,
        'url_username': opts['urlUsername'],
        'url_password': opts['urlPassword']
      };

      var authNames = [];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = [];
      var returnType = 'String';

      return this.apiClient.callApi(
        '/messages/send_notify', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
