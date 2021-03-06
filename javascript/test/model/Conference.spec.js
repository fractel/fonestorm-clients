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
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.FoneStormApi240Thunder);
  }
}(this, function(expect, FoneStormApi240Thunder) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new FoneStormApi240Thunder.Conference();
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

  describe('Conference', function() {
    it('should create an instance of Conference', function() {
      // uncomment below and update the code to test Conference
      //var instane = new FoneStormApi240Thunder.Conference();
      //expect(instance).to.be.a(FoneStormApi240Thunder.Conference);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new FoneStormApi240Thunder.Conference();
      //expect(instance).to.be();
    });

    it('should have the property endTime (base name: "end_time")', function() {
      // uncomment below and update the code to test the property endTime
      //var instane = new FoneStormApi240Thunder.Conference();
      //expect(instance).to.be();
    });

    it('should have the property label (base name: "label")', function() {
      // uncomment below and update the code to test the property label
      //var instane = new FoneStormApi240Thunder.Conference();
      //expect(instance).to.be();
    });

    it('should have the property startTime (base name: "start_time")', function() {
      // uncomment below and update the code to test the property startTime
      //var instane = new FoneStormApi240Thunder.Conference();
      //expect(instance).to.be();
    });

    it('should have the property beforeMessage (base name: "before_message")', function() {
      // uncomment below and update the code to test the property beforeMessage
      //var instane = new FoneStormApi240Thunder.Conference();
      //expect(instance).to.be();
    });

    it('should have the property afterMessage (base name: "after_message")', function() {
      // uncomment below and update the code to test the property afterMessage
      //var instane = new FoneStormApi240Thunder.Conference();
      //expect(instance).to.be();
    });

    it('should have the property maxMembers (base name: "max_members")', function() {
      // uncomment below and update the code to test the property maxMembers
      //var instane = new FoneStormApi240Thunder.Conference();
      //expect(instance).to.be();
    });

  });

}));
