=begin
#FoneStorm API 2.4.0 (Thunder)

#FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::CalltoactionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CalltoactionsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::CalltoactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CalltoactionsApi' do
    it 'should create an instance of CalltoactionsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::CalltoactionsApi)
    end
  end

  # unit tests for create_call_to_action
  # Create Call to Action
  # Create a call-to-action.
  # @param name Call-to-action name
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20114]
  describe 'create_call_to_action test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_call_to_action
  # Delete Call to Action
  # Delete a call-to-action.
  # @param id Call-to-action id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20114]
  describe 'delete_call_to_action test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_call_to_action
  # Get Call to Action
  # Get information about a call-to-action.
  # @param id Call-to-action id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20114]
  describe 'get_call_to_action test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_call_to_actions
  # Get Call to Actions
  # Get a list of all call-to-actions.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20012]
  describe 'get_call_to_actions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_call_to_action
  # Update Call to Action
  # Update a call-to-action.
  # @param id Call-to-action id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Call-to-action name
  # @return [InlineResponse20114]
  describe 'update_call_to_action test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
