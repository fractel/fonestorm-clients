=begin
#FoneStorm API 2.4.0 (Thunder)

#FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class FonenumbersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create FoneNumber
    # Order a new FoneNumber for a given area code.
    # @param area_code Valid 3-digit area code
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2014]
    def create_fonenumber(area_code, opts = {})
      data, _status_code, _headers = create_fonenumber_with_http_info(area_code, opts)
      return data
    end

    # Create FoneNumber
    # Order a new FoneNumber for a given area code.
    # @param area_code Valid 3-digit area code
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def create_fonenumber_with_http_info(area_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.create_fonenumber ..."
      end
      # verify the required parameter 'area_code' is set
      if @api_client.config.client_side_validation && area_code.nil?
        fail ArgumentError, "Missing the required parameter 'area_code' when calling FonenumbersApi.create_fonenumber"
      end
      # resource path
      local_var_path = "/fonenumbers"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["area_code"] = area_code

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#create_fonenumber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create FoneNumber
    # Order a new FoneNumber for a given area code.
    # @param area_code Valid 3-digit area code
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2014]
    def create_fonenumber_0(area_code, opts = {})
      data, _status_code, _headers = create_fonenumber_0_with_http_info(area_code, opts)
      return data
    end

    # Create FoneNumber
    # Order a new FoneNumber for a given area code.
    # @param area_code Valid 3-digit area code
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def create_fonenumber_0_with_http_info(area_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.create_fonenumber_0 ..."
      end
      # verify the required parameter 'area_code' is set
      if @api_client.config.client_side_validation && area_code.nil?
        fail ArgumentError, "Missing the required parameter 'area_code' when calling FonenumbersApi.create_fonenumber_0"
      end
      # resource path
      local_var_path = "/fonenumbers"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["area_code"] = area_code

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#create_fonenumber_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FoneNumber
    # Remove a FoneNumber from an account.
    # @param fonenumber FoneNumber associated with the account
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2014]
    def delete_fonenumber(fonenumber, opts = {})
      data, _status_code, _headers = delete_fonenumber_with_http_info(fonenumber, opts)
      return data
    end

    # Delete FoneNumber
    # Remove a FoneNumber from an account.
    # @param fonenumber FoneNumber associated with the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def delete_fonenumber_with_http_info(fonenumber, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.delete_fonenumber ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FonenumbersApi.delete_fonenumber"
      end
      # resource path
      local_var_path = "/fonenumbers/{fonenumber}".sub('{' + 'fonenumber' + '}', fonenumber.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#delete_fonenumber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FoneNumber
    # Remove a FoneNumber from an account.
    # @param fonenumber FoneNumber associated with the account
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2014]
    def delete_fonenumber_0(fonenumber, opts = {})
      data, _status_code, _headers = delete_fonenumber_0_with_http_info(fonenumber, opts)
      return data
    end

    # Delete FoneNumber
    # Remove a FoneNumber from an account.
    # @param fonenumber FoneNumber associated with the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def delete_fonenumber_0_with_http_info(fonenumber, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.delete_fonenumber_0 ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FonenumbersApi.delete_fonenumber_0"
      end
      # resource path
      local_var_path = "/fonenumbers/{fonenumber}".sub('{' + 'fonenumber' + '}', fonenumber.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#delete_fonenumber_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FoneNumber
    # Get information for a single FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2014]
    def get_fonenumber(fonenumber, opts = {})
      data, _status_code, _headers = get_fonenumber_with_http_info(fonenumber, opts)
      return data
    end

    # Get FoneNumber
    # Get information for a single FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def get_fonenumber_with_http_info(fonenumber, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.get_fonenumber ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FonenumbersApi.get_fonenumber"
      end
      # resource path
      local_var_path = "/fonenumbers/{fonenumber}".sub('{' + 'fonenumber' + '}', fonenumber.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#get_fonenumber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FoneNumber
    # Get information for a single FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2014]
    def get_fonenumber_0(fonenumber, opts = {})
      data, _status_code, _headers = get_fonenumber_0_with_http_info(fonenumber, opts)
      return data
    end

    # Get FoneNumber
    # Get information for a single FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def get_fonenumber_0_with_http_info(fonenumber, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.get_fonenumber_0 ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FonenumbersApi.get_fonenumber_0"
      end
      # resource path
      local_var_path = "/fonenumbers/{fonenumber}".sub('{' + 'fonenumber' + '}', fonenumber.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#get_fonenumber_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FoneNumbers
    # Get a list of all FoneNumbers, or a selection based on a filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter the response attributes. Allowed values are &#x60;fonenumbers&#x60; or &#x60;all&#x60;. See **Notes** for additional information.
    # @return [InlineResponse2001]
    def get_fonenumbers(opts = {})
      data, _status_code, _headers = get_fonenumbers_with_http_info(opts)
      return data
    end

    # Get FoneNumbers
    # Get a list of all FoneNumbers, or a selection based on a filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter the response attributes. Allowed values are &#x60;fonenumbers&#x60; or &#x60;all&#x60;. See **Notes** for additional information.
    # @return [Array<(InlineResponse2001, Fixnum, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_fonenumbers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.get_fonenumbers ..."
      end
      if @api_client.config.client_side_validation && opts[:'filter'] && !['fonenumbers', 'all'].include?(opts[:'filter'])
        fail ArgumentError, 'invalid value for "filter", must be one of fonenumbers, all'
      end
      # resource path
      local_var_path = "/fonenumbers"

      # query parameters
      query_params = {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2001')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#get_fonenumbers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FoneNumbers
    # Get a list of all FoneNumbers, or a selection based on a filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter the response attributes. Allowed values are &#x60;fonenumbers&#x60; or &#x60;all&#x60;. See **Notes** for additional information.
    # @return [InlineResponse2001]
    def get_fonenumbers_0(opts = {})
      data, _status_code, _headers = get_fonenumbers_0_with_http_info(opts)
      return data
    end

    # Get FoneNumbers
    # Get a list of all FoneNumbers, or a selection based on a filter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter Filter the response attributes. Allowed values are &#x60;fonenumbers&#x60; or &#x60;all&#x60;. See **Notes** for additional information.
    # @return [Array<(InlineResponse2001, Fixnum, Hash)>] InlineResponse2001 data, response status code and response headers
    def get_fonenumbers_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.get_fonenumbers_0 ..."
      end
      if @api_client.config.client_side_validation && opts[:'filter'] && !['fonenumbers', 'all'].include?(opts[:'filter'])
        fail ArgumentError, 'invalid value for "filter", must be one of fonenumbers, all'
      end
      # resource path
      local_var_path = "/fonenumbers"

      # query parameters
      query_params = {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2001')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#get_fonenumbers_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set Service Type
    # Set service type for a FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param service_type Service type. Allowed values are &#x60;Conference&#x60;, &#x60;Hangup&#x60;, &#x60;Busy&#x60;, &#x60;Reject&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :service_id Service id
    # @return [InlineResponse2014]
    def set_fonenumber_service_type(fonenumber, service_type, opts = {})
      data, _status_code, _headers = set_fonenumber_service_type_with_http_info(fonenumber, service_type, opts)
      return data
    end

    # Set Service Type
    # Set service type for a FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param service_type Service type. Allowed values are &#x60;Conference&#x60;, &#x60;Hangup&#x60;, &#x60;Busy&#x60;, &#x60;Reject&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :service_id Service id
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def set_fonenumber_service_type_with_http_info(fonenumber, service_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.set_fonenumber_service_type ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FonenumbersApi.set_fonenumber_service_type"
      end
      # verify the required parameter 'service_type' is set
      if @api_client.config.client_side_validation && service_type.nil?
        fail ArgumentError, "Missing the required parameter 'service_type' when calling FonenumbersApi.set_fonenumber_service_type"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Conference', 'Hangup', 'Busy', 'Reject'].include?(service_type)
        fail ArgumentError, "invalid value for 'service_type', must be one of Conference, Hangup, Busy, Reject"
      end
      # resource path
      local_var_path = "/fonenumbers/{fonenumber}/service".sub('{' + 'fonenumber' + '}', fonenumber.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["service_type"] = service_type
      form_params["service_id"] = opts[:'service_id'] if !opts[:'service_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#set_fonenumber_service_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set Service Type
    # Set service type for a FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param service_type Service type. Allowed values are &#x60;Conference&#x60;, &#x60;Hangup&#x60;, &#x60;Busy&#x60;, &#x60;Reject&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :service_id Service id
    # @return [InlineResponse2014]
    def set_fonenumber_service_type_0(fonenumber, service_type, opts = {})
      data, _status_code, _headers = set_fonenumber_service_type_0_with_http_info(fonenumber, service_type, opts)
      return data
    end

    # Set Service Type
    # Set service type for a FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param service_type Service type. Allowed values are &#x60;Conference&#x60;, &#x60;Hangup&#x60;, &#x60;Busy&#x60;, &#x60;Reject&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :service_id Service id
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def set_fonenumber_service_type_0_with_http_info(fonenumber, service_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.set_fonenumber_service_type_0 ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FonenumbersApi.set_fonenumber_service_type_0"
      end
      # verify the required parameter 'service_type' is set
      if @api_client.config.client_side_validation && service_type.nil?
        fail ArgumentError, "Missing the required parameter 'service_type' when calling FonenumbersApi.set_fonenumber_service_type_0"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Conference', 'Hangup', 'Busy', 'Reject'].include?(service_type)
        fail ArgumentError, "invalid value for 'service_type', must be one of Conference, Hangup, Busy, Reject"
      end
      # resource path
      local_var_path = "/fonenumbers/{fonenumber}/service".sub('{' + 'fonenumber' + '}', fonenumber.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["service_type"] = service_type
      form_params["service_id"] = opts[:'service_id'] if !opts[:'service_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#set_fonenumber_service_type_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FoneNumber
    # Update a FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param type Message routing type. Allowed values are &#x60;None&#x60;, &#x60;Device&#x60;, &#x60;Email&#x60;, &#x60;URL&#x60;, or &#x60;Forward&#x60;.
    # @param value Message routing type value
    # @param url_method URL method. Allowed values are &#x60;GET&#x60;, &#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [InlineResponse2014]
    def update_fonenumber(fonenumber, type, value, url_method, opts = {})
      data, _status_code, _headers = update_fonenumber_with_http_info(fonenumber, type, value, url_method, opts)
      return data
    end

    # Update FoneNumber
    # Update a FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param type Message routing type. Allowed values are &#x60;None&#x60;, &#x60;Device&#x60;, &#x60;Email&#x60;, &#x60;URL&#x60;, or &#x60;Forward&#x60;.
    # @param value Message routing type value
    # @param url_method URL method. Allowed values are &#x60;GET&#x60;, &#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def update_fonenumber_with_http_info(fonenumber, type, value, url_method, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.update_fonenumber ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FonenumbersApi.update_fonenumber"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling FonenumbersApi.update_fonenumber"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['None', 'Device', 'Email', 'URL', 'Forward'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of None, Device, Email, URL, Forward"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling FonenumbersApi.update_fonenumber"
      end
      # verify the required parameter 'url_method' is set
      if @api_client.config.client_side_validation && url_method.nil?
        fail ArgumentError, "Missing the required parameter 'url_method' when calling FonenumbersApi.update_fonenumber"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['GET', 'POST', 'JSON'].include?(url_method)
        fail ArgumentError, "invalid value for 'url_method', must be one of GET, POST, JSON"
      end
      # resource path
      local_var_path = "/fonenumbers/{fonenumber}".sub('{' + 'fonenumber' + '}', fonenumber.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["type"] = type
      form_params["value"] = value
      form_params["url_method"] = url_method
      form_params["url_username"] = opts[:'url_username'] if !opts[:'url_username'].nil?
      form_params["url_password"] = opts[:'url_password'] if !opts[:'url_password'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#update_fonenumber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FoneNumber
    # Update a FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param type Message routing type. Allowed values are &#x60;None&#x60;, &#x60;Device&#x60;, &#x60;Email&#x60;, &#x60;URL&#x60;, or &#x60;Forward&#x60;.
    # @param value Message routing type value
    # @param url_method URL method. Allowed values are &#x60;GET&#x60;, &#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [InlineResponse2014]
    def update_fonenumber_0(fonenumber, type, value, url_method, opts = {})
      data, _status_code, _headers = update_fonenumber_0_with_http_info(fonenumber, type, value, url_method, opts)
      return data
    end

    # Update FoneNumber
    # Update a FoneNumber.
    # @param fonenumber FoneNumber associated with the account
    # @param type Message routing type. Allowed values are &#x60;None&#x60;, &#x60;Device&#x60;, &#x60;Email&#x60;, &#x60;URL&#x60;, or &#x60;Forward&#x60;.
    # @param value Message routing type value
    # @param url_method URL method. Allowed values are &#x60;GET&#x60;, &#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def update_fonenumber_0_with_http_info(fonenumber, type, value, url_method, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FonenumbersApi.update_fonenumber_0 ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FonenumbersApi.update_fonenumber_0"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling FonenumbersApi.update_fonenumber_0"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['None', 'Device', 'Email', 'URL', 'Forward'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of None, Device, Email, URL, Forward"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling FonenumbersApi.update_fonenumber_0"
      end
      # verify the required parameter 'url_method' is set
      if @api_client.config.client_side_validation && url_method.nil?
        fail ArgumentError, "Missing the required parameter 'url_method' when calling FonenumbersApi.update_fonenumber_0"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['GET', 'POST', 'JSON'].include?(url_method)
        fail ArgumentError, "invalid value for 'url_method', must be one of GET, POST, JSON"
      end
      # resource path
      local_var_path = "/fonenumbers/{fonenumber}".sub('{' + 'fonenumber' + '}', fonenumber.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["type"] = type
      form_params["value"] = value
      form_params["url_method"] = url_method
      form_params["url_username"] = opts[:'url_username'] if !opts[:'url_username'].nil?
      form_params["url_password"] = opts[:'url_password'] if !opts[:'url_password'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FonenumbersApi#update_fonenumber_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
