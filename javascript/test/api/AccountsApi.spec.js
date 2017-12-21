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
    instance = new FoneStormApi220Breeze.AccountsApi();
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

  describe('AccountsApi', function() {
    describe('configureAccountCdrNotify', function() {
      it('should call configureAccountCdrNotify successfully', function(done) {
        //uncomment below and update the code to test configureAccountCdrNotify
        //instance.configureAccountCdrNotify(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('configureAccountCdrNotify_0', function() {
      it('should call configureAccountCdrNotify_0 successfully', function(done) {
        //uncomment below and update the code to test configureAccountCdrNotify_0
        //instance.configureAccountCdrNotify_0(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAccount', function() {
      it('should call getAccount successfully', function(done) {
        //uncomment below and update the code to test getAccount
        //instance.getAccount(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAccount_0', function() {
      it('should call getAccount_0 successfully', function(done) {
        //uncomment below and update the code to test getAccount_0
        //instance.getAccount_0(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateAccount', function() {
      it('should call updateAccount successfully', function(done) {
        //uncomment below and update the code to test updateAccount
        //instance.updateAccount(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateAccount_0', function() {
      it('should call updateAccount_0 successfully', function(done) {
        //uncomment below and update the code to test updateAccount_0
        //instance.updateAccount_0(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));