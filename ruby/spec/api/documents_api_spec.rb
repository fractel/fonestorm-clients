=begin
#FoneStorm API 2.4.0 (Thunder)

#FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::DocumentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DocumentsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::DocumentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DocumentsApi' do
    it 'should create an instance of DocumentsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::DocumentsApi)
    end
  end

  # unit tests for create_document
  # Create Document
  # Create a document.
  # @param name Document name
  # @param file Document file
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2018]
  describe 'create_document test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_document_0
  # Create Document
  # Create a document.
  # @param name Document name
  # @param file Document file
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2018]
  describe 'create_document_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_document
  # Delete Document
  # Delete a document.
  # @param id Document id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2018]
  describe 'delete_document test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_document_0
  # Delete Document
  # Delete a document.
  # @param id Document id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2018]
  describe 'delete_document_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_document
  # Get Document
  # Get information about a document.
  # @param id Document id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2018]
  describe 'get_document test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_document_0
  # Get Document
  # Get information about a document.
  # @param id Document id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2018]
  describe 'get_document_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_documents
  # Get Documents
  # Get a list of all documents.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'get_documents test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_documents_0
  # Get Documents
  # Get a list of all documents.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2005]
  describe 'get_documents_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_document
  # Update Document
  # Update a document.
  # @param id Document id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Document name
  # @option opts [String] :file Document file
  # @return [InlineResponse2018]
  describe 'update_document test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_document_0
  # Update Document
  # Update a document.
  # @param id Document id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :name Document name
  # @option opts [String] :file Document file
  # @return [InlineResponse2018]
  describe 'update_document_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
