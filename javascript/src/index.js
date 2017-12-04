/**
 * FoneStorm API 2.2.0
 * Extended API Documentation: https://developer.fonestorm.com
 *
 * OpenAPI spec version: 2.2.0
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
    define(['ApiClient', 'api/AuthApi', 'api/CallsApi', 'api/FaxesApi', 'api/FonenumbersApi', 'api/MessagesApi'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('./ApiClient'), require('./api/AuthApi'), require('./api/CallsApi'), require('./api/FaxesApi'), require('./api/FonenumbersApi'), require('./api/MessagesApi'));
  }
}(function(ApiClient, AuthApi, CallsApi, FaxesApi, FonenumbersApi, MessagesApi) {
  'use strict';

  /**
   * Extended_API_Documentation_httpsdeveloper_fonestorm_com.<br>
   * The <code>index</code> module provides access to constructors for all the classes which comprise the public API.
   * <p>
   * An AMD (recommended!) or CommonJS application will generally do something equivalent to the following:
   * <pre>
   * var FoneStormApi220 = require('index'); // See note below*.
   * var xxxSvc = new FoneStormApi220.XxxApi(); // Allocate the API class we're going to use.
   * var yyyModel = new FoneStormApi220.Yyy(); // Construct a model instance.
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
   * var xxxSvc = new FoneStormApi220.XxxApi(); // Allocate the API class we're going to use.
   * var yyy = new FoneStormApi220.Yyy(); // Construct a model instance.
   * yyyModel.someProperty = 'someValue';
   * ...
   * var zzz = xxxSvc.doSomething(yyyModel); // Invoke the service.
   * ...
   * </pre>
   * </p>
   * @module index
   * @version 2.2.0
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
     * The CallsApi service constructor.
     * @property {module:api/CallsApi}
     */
    CallsApi: CallsApi,
    /**
     * The FaxesApi service constructor.
     * @property {module:api/FaxesApi}
     */
    FaxesApi: FaxesApi,
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
