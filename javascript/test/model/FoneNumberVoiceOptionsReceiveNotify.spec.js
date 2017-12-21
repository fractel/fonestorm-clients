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
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.FoneStormApi220Breeze);
  }
}(this, function(expect, FoneStormApi220Breeze) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new FoneStormApi220Breeze.FoneNumberVoiceOptionsReceiveNotify();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('FoneNumberVoiceOptionsReceiveNotify', function() {
    it('should create an instance of FoneNumberVoiceOptionsReceiveNotify', function() {
      // uncomment below and update the code to test FoneNumberVoiceOptionsReceiveNotify
      //var instane = new FoneStormApi220Breeze.FoneNumberVoiceOptionsReceiveNotify();
      //expect(instance).to.be.a(FoneStormApi220Breeze.FoneNumberVoiceOptionsReceiveNotify);
    });

    it('should have the property url (base name: "url")', function() {
      // uncomment below and update the code to test the property url
      //var instane = new FoneStormApi220Breeze.FoneNumberVoiceOptionsReceiveNotify();
      //expect(instance).to.be();
    });

    it('should have the property method (base name: "method")', function() {
      // uncomment below and update the code to test the property method
      //var instane = new FoneStormApi220Breeze.FoneNumberVoiceOptionsReceiveNotify();
      //expect(instance).to.be();
    });

  });

}));
