=begin
#FoneStorm API 2.4.0 (Thunder)

#FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ConferencesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ConferencesApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ConferencesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConferencesApi' do
    it 'should create an instance of ConferencesApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ConferencesApi)
    end
  end

  # unit tests for create_conference
  # Create Conference
  # Create a conference.
  # @param label Label of conference
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_time Start time and date of conference
  # @option opts [Date] :end_time End time and date of conference
  # @option opts [BigDecimal] :fonenumber Fonenumber to use for conference
  # @option opts [String] :before_message Message to play before conference start time
  # @option opts [String] :after_message Message to play after conference end time
  # @option opts [Float] :max_members Maximum number of allowed conference attendees
  # @return [InlineResponse20111]
  describe 'create_conference test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_conference_0
  # Create Conference
  # Create a conference.
  # @param label Label of conference
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_time Start time and date of conference
  # @option opts [Date] :end_time End time and date of conference
  # @option opts [BigDecimal] :fonenumber Fonenumber to use for conference
  # @option opts [String] :before_message Message to play before conference start time
  # @option opts [String] :after_message Message to play after conference end time
  # @option opts [Float] :max_members Maximum number of allowed conference attendees
  # @return [InlineResponse20111]
  describe 'create_conference_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_conference
  # Delete Conference
  # Delete a conference.
  # @param id Conference id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20111]
  describe 'delete_conference test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_conference_0
  # Delete Conference
  # Delete a conference.
  # @param id Conference id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20111]
  describe 'delete_conference_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conference
  # Get Conference
  # Get information about a conference.
  # @param id Conference id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20111]
  describe 'get_conference test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conference_0
  # Get Conference
  # Get information about a conference.
  # @param id Conference id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20111]
  describe 'get_conference_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conference_fonenumbers
  # Conference Fonenumbers
  # Get fonenumbers assigned to a conference.
  # @param id Conference id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20015]
  describe 'get_conference_fonenumbers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conference_fonenumbers_0
  # Conference Fonenumbers
  # Get fonenumbers assigned to a conference.
  # @param id Conference id
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse20015]
  describe 'get_conference_fonenumbers_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conferences
  # Get Conferences
  # Get a list of all conferences.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2008]
  describe 'get_conferences test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conferences_0
  # Get Conferences
  # Get a list of all conferences.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2008]
  describe 'get_conferences_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_conference
  # Update Conference
  # Update a conference.
  # @param id Conference id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label Label of conference
  # @option opts [Date] :start_time Start time and date of conference
  # @option opts [Date] :end_time End time and date of conference
  # @option opts [BigDecimal] :fonenumber Fonenumber to use for conference
  # @option opts [String] :before_message Message to play before conference start time
  # @option opts [String] :after_message Message to play after conference end time
  # @option opts [Float] :max_members Maximum number of allowed conference attendees
  # @return [InlineResponse20111]
  describe 'update_conference test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_conference_0
  # Update Conference
  # Update a conference.
  # @param id Conference id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label Label of conference
  # @option opts [Date] :start_time Start time and date of conference
  # @option opts [Date] :end_time End time and date of conference
  # @option opts [BigDecimal] :fonenumber Fonenumber to use for conference
  # @option opts [String] :before_message Message to play before conference start time
  # @option opts [String] :after_message Message to play after conference end time
  # @option opts [Float] :max_members Maximum number of allowed conference attendees
  # @return [InlineResponse20111]
  describe 'update_conference_0 test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
