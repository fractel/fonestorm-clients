/**
 * FoneStorm API 2.4.0 (Thunder)
 * FracTEL's Middleware API
 *
 * OpenAPI spec version: 2.4.0
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
    define(['ApiClient', 'model/BigDecimal', 'model/Error', 'model/InlineResponse200', 'model/InlineResponse2002', 'model/InlineResponse2013'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('../model/BigDecimal'), require('../model/Error'), require('../model/InlineResponse200'), require('../model/InlineResponse2002'), require('../model/InlineResponse2013'));
  } else {
    // Browser globals (root is window)
    if (!root.FoneStormApi240Thunder) {
      root.FoneStormApi240Thunder = {};
    }
    root.FoneStormApi240Thunder.ConferencesApi = factory(root.FoneStormApi240Thunder.ApiClient, root.FoneStormApi240Thunder.BigDecimal, root.FoneStormApi240Thunder.Error, root.FoneStormApi240Thunder.InlineResponse200, root.FoneStormApi240Thunder.InlineResponse2002, root.FoneStormApi240Thunder.InlineResponse2013);
  }
}(this, function(ApiClient, BigDecimal, Error, InlineResponse200, InlineResponse2002, InlineResponse2013) {
  'use strict';

  /**
   * Conferences service.
   * @module api/ConferencesApi
   * @version 2.4.0
   */

  /**
   * Constructs a new ConferencesApi. 
   * @alias module:api/ConferencesApi
   * @class
   * @param {module:ApiClient} apiClient Optional API client implementation to use,
   * default to {@link module:ApiClient#instance} if unspecified.
   */
  var exports = function(apiClient) {
    this.apiClient = apiClient || ApiClient.instance;


    /**
     * Callback function to receive the result of the createConference operation.
     * @callback module:api/ConferencesApi~createConferenceCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2013} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create Conference
     * Create a conference.
     * @param {String} label Label of conference
     * @param {Object} opts Optional parameters
     * @param {Date} opts.startTime Start time and date of conference
     * @param {Date} opts.endTime End time and date of conference
     * @param {module:model/BigDecimal} opts.fonenumber Fonenumber to use for conference
     * @param {String} opts.beforeMessage Message to play before conference start time
     * @param {String} opts.afterMessage Message to play after conference end time
     * @param {Number} opts.maxMembers Maximum number of allowed conference attendees
     * @param {module:api/ConferencesApi~createConferenceCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2013}
     */
    this.createConference = function(label, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'label' is set
      if (label === undefined || label === null) {
        throw new Error("Missing the required parameter 'label' when calling createConference");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'label': label,
        'start_time': opts['startTime'],
        'end_time': opts['endTime'],
        'fonenumber': opts['fonenumber'],
        'before_message': opts['beforeMessage'],
        'after_message': opts['afterMessage'],
        'max_members': opts['maxMembers']
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2013;

      return this.apiClient.callApi(
        '/conferences', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the createConference_0 operation.
     * @callback module:api/ConferencesApi~createConference_0Callback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2013} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Create Conference
     * Create a conference.
     * @param {String} label Label of conference
     * @param {Object} opts Optional parameters
     * @param {Date} opts.startTime Start time and date of conference
     * @param {Date} opts.endTime End time and date of conference
     * @param {module:model/BigDecimal} opts.fonenumber Fonenumber to use for conference
     * @param {String} opts.beforeMessage Message to play before conference start time
     * @param {String} opts.afterMessage Message to play after conference end time
     * @param {Number} opts.maxMembers Maximum number of allowed conference attendees
     * @param {module:api/ConferencesApi~createConference_0Callback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2013}
     */
    this.createConference_0 = function(label, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'label' is set
      if (label === undefined || label === null) {
        throw new Error("Missing the required parameter 'label' when calling createConference_0");
      }


      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'label': label,
        'start_time': opts['startTime'],
        'end_time': opts['endTime'],
        'fonenumber': opts['fonenumber'],
        'before_message': opts['beforeMessage'],
        'after_message': opts['afterMessage'],
        'max_members': opts['maxMembers']
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2013;

      return this.apiClient.callApi(
        '/conferences', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteConference operation.
     * @callback module:api/ConferencesApi~deleteConferenceCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2013} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete Conference
     * Delete a conference.
     * @param {String} id Conference id
     * @param {module:api/ConferencesApi~deleteConferenceCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2013}
     */
    this.deleteConference = function(id, callback) {
      var postBody = null;

      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling deleteConference");
      }


      var pathParams = {
        'id': id
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2013;

      return this.apiClient.callApi(
        '/conferences/{id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteConference_0 operation.
     * @callback module:api/ConferencesApi~deleteConference_0Callback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2013} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Delete Conference
     * Delete a conference.
     * @param {String} id Conference id
     * @param {module:api/ConferencesApi~deleteConference_0Callback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2013}
     */
    this.deleteConference_0 = function(id, callback) {
      var postBody = null;

      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling deleteConference_0");
      }


      var pathParams = {
        'id': id
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2013;

      return this.apiClient.callApi(
        '/conferences/{id}', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getConference operation.
     * @callback module:api/ConferencesApi~getConferenceCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2013} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Conference
     * Get information about a conference.
     * @param {String} id Conference id
     * @param {module:api/ConferencesApi~getConferenceCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2013}
     */
    this.getConference = function(id, callback) {
      var postBody = null;

      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getConference");
      }


      var pathParams = {
        'id': id
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2013;

      return this.apiClient.callApi(
        '/conferences/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getConferenceFonenumbers operation.
     * @callback module:api/ConferencesApi~getConferenceFonenumbersCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2002} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Conference Fonenumbers
     * Get fonenumbers assigned to a conference.
     * @param {String} id Conference id
     * @param {module:api/ConferencesApi~getConferenceFonenumbersCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2002}
     */
    this.getConferenceFonenumbers = function(id, callback) {
      var postBody = null;

      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getConferenceFonenumbers");
      }


      var pathParams = {
        'id': id
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2002;

      return this.apiClient.callApi(
        '/conferences/{id}/fonenumbers', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getConferenceFonenumbers_0 operation.
     * @callback module:api/ConferencesApi~getConferenceFonenumbers_0Callback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2002} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Conference Fonenumbers
     * Get fonenumbers assigned to a conference.
     * @param {String} id Conference id
     * @param {module:api/ConferencesApi~getConferenceFonenumbers_0Callback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2002}
     */
    this.getConferenceFonenumbers_0 = function(id, callback) {
      var postBody = null;

      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getConferenceFonenumbers_0");
      }


      var pathParams = {
        'id': id
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2002;

      return this.apiClient.callApi(
        '/conferences/{id}/fonenumbers', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getConference_0 operation.
     * @callback module:api/ConferencesApi~getConference_0Callback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2013} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Conference
     * Get information about a conference.
     * @param {String} id Conference id
     * @param {module:api/ConferencesApi~getConference_0Callback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2013}
     */
    this.getConference_0 = function(id, callback) {
      var postBody = null;

      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling getConference_0");
      }


      var pathParams = {
        'id': id
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2013;

      return this.apiClient.callApi(
        '/conferences/{id}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getConferences operation.
     * @callback module:api/ConferencesApi~getConferencesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse200} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Conferences
     * Get a list of all conferences.
     * @param {module:api/ConferencesApi~getConferencesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse200}
     */
    this.getConferences = function(callback) {
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse200;

      return this.apiClient.callApi(
        '/conferences', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the getConferences_0 operation.
     * @callback module:api/ConferencesApi~getConferences_0Callback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse200} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get Conferences
     * Get a list of all conferences.
     * @param {module:api/ConferencesApi~getConferences_0Callback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse200}
     */
    this.getConferences_0 = function(callback) {
      var postBody = null;


      var pathParams = {
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse200;

      return this.apiClient.callApi(
        '/conferences', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the updateConference operation.
     * @callback module:api/ConferencesApi~updateConferenceCallback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2013} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update Conference
     * Update a conference.
     * @param {String} id Conference id
     * @param {Object} opts Optional parameters
     * @param {String} opts.label Label of conference
     * @param {Date} opts.startTime Start time and date of conference
     * @param {Date} opts.endTime End time and date of conference
     * @param {module:model/BigDecimal} opts.fonenumber Fonenumber to use for conference
     * @param {String} opts.beforeMessage Message to play before conference start time
     * @param {String} opts.afterMessage Message to play after conference end time
     * @param {Number} opts.maxMembers Maximum number of allowed conference attendees
     * @param {module:api/ConferencesApi~updateConferenceCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2013}
     */
    this.updateConference = function(id, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling updateConference");
      }


      var pathParams = {
        'id': id
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'label': opts['label'],
        'start_time': opts['startTime'],
        'end_time': opts['endTime'],
        'fonenumber': opts['fonenumber'],
        'before_message': opts['beforeMessage'],
        'after_message': opts['afterMessage'],
        'max_members': opts['maxMembers']
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2013;

      return this.apiClient.callApi(
        '/conferences/{id}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }

    /**
     * Callback function to receive the result of the updateConference_0 operation.
     * @callback module:api/ConferencesApi~updateConference_0Callback
     * @param {String} error Error message, if any.
     * @param {module:model/InlineResponse2013} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Update Conference
     * Update a conference.
     * @param {String} id Conference id
     * @param {Object} opts Optional parameters
     * @param {String} opts.label Label of conference
     * @param {Date} opts.startTime Start time and date of conference
     * @param {Date} opts.endTime End time and date of conference
     * @param {module:model/BigDecimal} opts.fonenumber Fonenumber to use for conference
     * @param {String} opts.beforeMessage Message to play before conference start time
     * @param {String} opts.afterMessage Message to play after conference end time
     * @param {Number} opts.maxMembers Maximum number of allowed conference attendees
     * @param {module:api/ConferencesApi~updateConference_0Callback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/InlineResponse2013}
     */
    this.updateConference_0 = function(id, opts, callback) {
      opts = opts || {};
      var postBody = null;

      // verify the required parameter 'id' is set
      if (id === undefined || id === null) {
        throw new Error("Missing the required parameter 'id' when calling updateConference_0");
      }


      var pathParams = {
        'id': id
      };
      var queryParams = {
      };
      var headerParams = {
      };
      var formParams = {
        'label': opts['label'],
        'start_time': opts['startTime'],
        'end_time': opts['endTime'],
        'fonenumber': opts['fonenumber'],
        'before_message': opts['beforeMessage'],
        'after_message': opts['afterMessage'],
        'max_members': opts['maxMembers']
      };

      var authNames = ['jwt'];
      var contentTypes = ['application/x-www-form-urlencoded'];
      var accepts = ['application/json'];
      var returnType = InlineResponse2013;

      return this.apiClient.callApi(
        '/conferences/{id}', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, callback
      );
    }
  };

  return exports;
}));
