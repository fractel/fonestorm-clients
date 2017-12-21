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
    instance = new FoneStormApi220Breeze.FoneNumberSmsOptions();
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

  describe('FoneNumberSmsOptions', function() {
    it('should create an instance of FoneNumberSmsOptions', function() {
      // uncomment below and update the code to test FoneNumberSmsOptions
      //var instane = new FoneStormApi220Breeze.FoneNumberSmsOptions();
      //expect(instance).to.be.a(FoneStormApi220Breeze.FoneNumberSmsOptions);
    });

    it('should have the property receive (base name: "receive")', function() {
      // uncomment below and update the code to test the property receive
      //var instane = new FoneStormApi220Breeze.FoneNumberSmsOptions();
      //expect(instance).to.be();
    });

    it('should have the property receiveNotify (base name: "receive_notify")', function() {
      // uncomment below and update the code to test the property receiveNotify
      //var instane = new FoneStormApi220Breeze.FoneNumberSmsOptions();
      //expect(instance).to.be();
    });

    it('should have the property sendNotify (base name: "send_notify")', function() {
      // uncomment below and update the code to test the property sendNotify
      //var instane = new FoneStormApi220Breeze.FoneNumberSmsOptions();
      //expect(instance).to.be();
    });

    it('should have the property smsEnabled (base name: "sms_enabled")', function() {
      // uncomment below and update the code to test the property smsEnabled
      //var instane = new FoneStormApi220Breeze.FoneNumberSmsOptions();
      //expect(instance).to.be();
    });

    it('should have the property mmsEnabled (base name: "mms_enabled")', function() {
      // uncomment below and update the code to test the property mmsEnabled
      //var instane = new FoneStormApi220Breeze.FoneNumberSmsOptions();
      //expect(instance).to.be();
    });

  });

}));