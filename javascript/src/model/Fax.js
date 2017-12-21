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
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.FoneStormApi220Breeze) {
      root.FoneStormApi220Breeze = {};
    }
    root.FoneStormApi220Breeze.Fax = factory(root.FoneStormApi220Breeze.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The Fax model module.
   * @module model/Fax
   * @version 2.2.0
   */

  /**
   * Constructs a new <code>Fax</code>.
   * @alias module:model/Fax
   * @class
   * @param id {String} Unique identifier of fax.
   */
  var exports = function(id) {
    var _this = this;

    _this['id'] = id;
  };

  /**
   * Constructs a <code>Fax</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/Fax} obj Optional instance to populate.
   * @return {module:model/Fax} The populated <code>Fax</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();

      if (data.hasOwnProperty('id')) {
        obj['id'] = ApiClient.convertToType(data['id'], 'String');
      }
    }
    return obj;
  }

  /**
   * Unique identifier of fax.
   * @member {String} id
   */
  exports.prototype['id'] = undefined;



  return exports;
}));


