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
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.FoneStormApi240Thunder) {
      root.FoneStormApi240Thunder = {};
    }
    root.FoneStormApi240Thunder.Message = factory(root.FoneStormApi240Thunder.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';




  /**
   * The Message model module.
   * @module model/Message
   * @version 2.4.0
   */

  /**
   * Constructs a new <code>Message</code>.
   * @alias module:model/Message
   * @class
   * @param id {String} Unique identifier of message.
   */
  var exports = function(id) {
    var _this = this;

    _this['id'] = id;
  };

  /**
   * Constructs a <code>Message</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/Message} obj Optional instance to populate.
   * @return {module:model/Message} The populated <code>Message</code> instance.
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
   * Unique identifier of message.
   * @member {String} id
   */
  exports.prototype['id'] = undefined;



  return exports;
}));


