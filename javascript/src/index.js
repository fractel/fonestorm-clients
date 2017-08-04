/**
 * FracTEL API 2.1.1
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 * OpenAPI spec version: 2.1.1
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 2.2.3
 *
 * Do not edit the class manually.
 *
 */

(function(factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'api/AuthApi', 'api/FonenumbersApi', 'api/MessagesApi'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('./ApiClient'), require('./api/AuthApi'), require('./api/FonenumbersApi'), require('./api/MessagesApi'));
  }
}(function(ApiClient, AuthApi, FonenumbersApi, MessagesApi) {
  'use strict';

  /**
   * ERROR_UNKNOWN.<br>
   * The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
   * <p>
   * An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
   * <pre>
   * var FracTelApi211 = require('index'); // See note below*.
   * var xxxSvc = new FracTelApi211.XxxApi(); // Allocate the API class we're going to use.
   * var yyyModel = new FracTelApi211.Yyy(); // Construct a model instance.
   * yyyModel.someProperty = 'someValue';
   * ...
   * var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
   * ...
   * </pre>
   * <em>*NOTE: For a top-level AMD script, use require(['index'], function(){...})
   * and put the application logic within the callback function.</em>
   * </p>
   * <p>
   * A non-AMD browser application (discouraged) might do something like this:
   * <pre>
   * var xxxSvc = new FracTelApi211.XxxApi(); // Allocate the API class we're going to use.
   * var yyy = new FracTelApi211.Yyy(); // Construct a model instance.
   * yyyModel.someProperty = 'someValue';
   * ...
   * var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
   * ...
   * </pre>
   * </p>
   * @module index
   * @version 2.1.1
   */
  var exports = {
    /**
     * The ApiClient constructor.
     * @property {module:ApiClient}
     */
    ApiClient: ApiClient,
    /**
     * The AuthApi service constructor.
     * @property {module:api/AuthApi}
     */
    AuthApi: AuthApi,
    /**
     * The FonenumbersApi service constructor.
     * @property {module:api/FonenumbersApi}
     */
    FonenumbersApi: FonenumbersApi,
    /**
     * The MessagesApi service constructor.
     * @property {module:api/MessagesApi}
     */
    MessagesApi: MessagesApi
  };

  return exports;
}));
