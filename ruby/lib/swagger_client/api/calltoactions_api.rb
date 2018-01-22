=begin
#FoneStorm API 2.4.0 (Thunder)

#FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class CalltoactionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Call to Action
    # Create a call-to-action.
    # @param name Call-to-action name
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20114]
    def create_call_to_action(name, opts = {})
      data, _status_code, _headers = create_call_to_action_with_http_info(name, opts)
      return data
    end

    # Create Call to Action
    # Create a call-to-action.
    # @param name Call-to-action name
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20114, Fixnum, Hash)>] InlineResponse20114 data, response status code and response headers
    def create_call_to_action_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalltoactionsApi.create_call_to_action ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CalltoactionsApi.create_call_to_action"
      end
      # resource path
      local_var_path = "/call-to-actions"

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
      form_params["name"] = name

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20114')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalltoactionsApi#create_call_to_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Call to Action
    # Delete a call-to-action.
    # @param id Call-to-action id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20114]
    def delete_call_to_action(id, opts = {})
      data, _status_code, _headers = delete_call_to_action_with_http_info(id, opts)
      return data
    end

    # Delete Call to Action
    # Delete a call-to-action.
    # @param id Call-to-action id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20114, Fixnum, Hash)>] InlineResponse20114 data, response status code and response headers
    def delete_call_to_action_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalltoactionsApi.delete_call_to_action ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CalltoactionsApi.delete_call_to_action"
      end
      # resource path
      local_var_path = "/call-to-actions/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20114')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalltoactionsApi#delete_call_to_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Call to Action
    # Get information about a call-to-action.
    # @param id Call-to-action id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20114]
    def get_call_to_action(id, opts = {})
      data, _status_code, _headers = get_call_to_action_with_http_info(id, opts)
      return data
    end

    # Get Call to Action
    # Get information about a call-to-action.
    # @param id Call-to-action id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20114, Fixnum, Hash)>] InlineResponse20114 data, response status code and response headers
    def get_call_to_action_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalltoactionsApi.get_call_to_action ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CalltoactionsApi.get_call_to_action"
      end
      # resource path
      local_var_path = "/call-to-actions/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded', 'application/offset+octet-stream', 'multipart/form-data'])

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
        :return_type => 'InlineResponse20114')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalltoactionsApi#get_call_to_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Call to Actions
    # Get a list of all call-to-actions.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20012]
    def get_call_to_actions(opts = {})
      data, _status_code, _headers = get_call_to_actions_with_http_info(opts)
      return data
    end

    # Get Call to Actions
    # Get a list of all call-to-actions.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def get_call_to_actions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalltoactionsApi.get_call_to_actions ..."
      end
      # resource path
      local_var_path = "/call-to-actions"

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
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalltoactionsApi#get_call_to_actions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Call to Action
    # Update a call-to-action.
    # @param id Call-to-action id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Call-to-action name
    # @return [InlineResponse20114]
    def update_call_to_action(id, opts = {})
      data, _status_code, _headers = update_call_to_action_with_http_info(id, opts)
      return data
    end

    # Update Call to Action
    # Update a call-to-action.
    # @param id Call-to-action id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Call-to-action name
    # @return [Array<(InlineResponse20114, Fixnum, Hash)>] InlineResponse20114 data, response status code and response headers
    def update_call_to_action_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CalltoactionsApi.update_call_to_action ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CalltoactionsApi.update_call_to_action"
      end
      # resource path
      local_var_path = "/call-to-actions/{id}".sub('{' + 'id' + '}', id.to_s)

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
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20114')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CalltoactionsApi#update_call_to_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
