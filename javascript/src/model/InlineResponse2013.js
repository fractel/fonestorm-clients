/**
 * FoneStorm API 2.2.0 (Breeze)
 * FracTEL's Middleware API
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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'model/FoneNumber'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('./FoneNumber'));
  } else {
    // Browser globals (root is window)
    if (!root.FoneStormApi220Breeze) {
      root.FoneStormApi220Breeze = {};
    }
    root.FoneStormApi220Breeze.InlineResponse2013 = factory(root.FoneStormApi220Breeze.ApiClient, root.FoneStormApi220Breeze.FoneNumber);
  }
}(this, function(ApiClient, FoneNumber) {
  'use strict';




  /**
   * The InlineResponse2013 model module.
   * @module model/InlineResponse2013
   * @version 2.2.0
   */

  /**
   * Constructs a new <code>InlineResponse2013</code>.
   * @alias module:model/InlineResponse2013
   * @class
   */
  var exports = function() {
    var _this = this;


  };

  /**
   * Constructs a <code>InlineResponse2013</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/InlineResponse2013} obj Optional instance to populate.
   * @return {module:model/InlineResponse2013} The populated <code>InlineResponse2013</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('fonenumber')) {
        obj['fonenumber'] = FoneNumber.constructFromObject(data['fonenumber']);
      }
    }
    return obj;
  }

  /**
   * @member {module:model/FoneNumber} fonenumber
   */
  exports.prototype['fonenumber'] = undefined;



  return exports;
}));


