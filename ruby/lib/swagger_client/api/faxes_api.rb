=begin
#FoneStorm API 2.4.0 (Thunder)

#FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class FaxesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set Receive Callback
    # Configure the callback URL to notify when an inbound fax is received. Each FoneNumber can be configured to use its own callback URL for handling receive notifications.
    # @param fonenumber FoneNumber associated with the account
    # @param method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [InlineResponse2014]
    def configure_fax_receive_notify(fonenumber, method, url, opts = {})
      data, _status_code, _headers = configure_fax_receive_notify_with_http_info(fonenumber, method, url, opts)
      return data
    end

    # Set Receive Callback
    # Configure the callback URL to notify when an inbound fax is received. Each FoneNumber can be configured to use its own callback URL for handling receive notifications.
    # @param fonenumber FoneNumber associated with the account
    # @param method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def configure_fax_receive_notify_with_http_info(fonenumber, method, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxesApi.configure_fax_receive_notify ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FaxesApi.configure_fax_receive_notify"
      end
      # verify the required parameter 'method' is set
      if @api_client.config.client_side_validation && method.nil?
        fail ArgumentError, "Missing the required parameter 'method' when calling FaxesApi.configure_fax_receive_notify"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['GET', 'POST', 'JSON'].include?(method)
        fail ArgumentError, "invalid value for 'method', must be one of GET, POST, JSON"
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling FaxesApi.configure_fax_receive_notify"
      end
      # resource path
      local_var_path = "/faxes/receive_notify"

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
      form_params["fonenumber"] = fonenumber
      form_params["method"] = method
      form_params["url"] = url
      form_params["url_username"] = opts[:'url_username'] if !opts[:'url_username'].nil?
      form_params["url_password"] = opts[:'url_password'] if !opts[:'url_password'].nil?

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
        @api_client.config.logger.debug "API called: FaxesApi#configure_fax_receive_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set Receive Callback
    # Configure the callback URL to notify when an inbound fax is received. Each FoneNumber can be configured to use its own callback URL for handling receive notifications.
    # @param fonenumber FoneNumber associated with the account
    # @param method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [InlineResponse2014]
    def configure_fax_receive_notify_0(fonenumber, method, url, opts = {})
      data, _status_code, _headers = configure_fax_receive_notify_0_with_http_info(fonenumber, method, url, opts)
      return data
    end

    # Set Receive Callback
    # Configure the callback URL to notify when an inbound fax is received. Each FoneNumber can be configured to use its own callback URL for handling receive notifications.
    # @param fonenumber FoneNumber associated with the account
    # @param method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def configure_fax_receive_notify_0_with_http_info(fonenumber, method, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxesApi.configure_fax_receive_notify_0 ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FaxesApi.configure_fax_receive_notify_0"
      end
      # verify the required parameter 'method' is set
      if @api_client.config.client_side_validation && method.nil?
        fail ArgumentError, "Missing the required parameter 'method' when calling FaxesApi.configure_fax_receive_notify_0"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['GET', 'POST', 'JSON'].include?(method)
        fail ArgumentError, "invalid value for 'method', must be one of GET, POST, JSON"
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling FaxesApi.configure_fax_receive_notify_0"
      end
      # resource path
      local_var_path = "/faxes/receive_notify"

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
      form_params["fonenumber"] = fonenumber
      form_params["method"] = method
      form_params["url"] = url
      form_params["url_username"] = opts[:'url_username'] if !opts[:'url_username'].nil?
      form_params["url_password"] = opts[:'url_password'] if !opts[:'url_password'].nil?

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
        @api_client.config.logger.debug "API called: FaxesApi#configure_fax_receive_notify_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set Send Callback
    # Configure the callback URL to notify when an outbound fax is made. Each FoneNumber can be configured to use its own callback URL for handling send notifications.
    # @param fonenumber FoneNumber associated with the account
    # @param method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [InlineResponse2014]
    def configure_fax_send_notify(fonenumber, method, url, opts = {})
      data, _status_code, _headers = configure_fax_send_notify_with_http_info(fonenumber, method, url, opts)
      return data
    end

    # Set Send Callback
    # Configure the callback URL to notify when an outbound fax is made. Each FoneNumber can be configured to use its own callback URL for handling send notifications.
    # @param fonenumber FoneNumber associated with the account
    # @param method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def configure_fax_send_notify_with_http_info(fonenumber, method, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxesApi.configure_fax_send_notify ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FaxesApi.configure_fax_send_notify"
      end
      # verify the required parameter 'method' is set
      if @api_client.config.client_side_validation && method.nil?
        fail ArgumentError, "Missing the required parameter 'method' when calling FaxesApi.configure_fax_send_notify"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['GET', 'POST', 'JSON'].include?(method)
        fail ArgumentError, "invalid value for 'method', must be one of GET, POST, JSON"
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling FaxesApi.configure_fax_send_notify"
      end
      # resource path
      local_var_path = "/faxes/send_notify"

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
      form_params["fonenumber"] = fonenumber
      form_params["method"] = method
      form_params["url"] = url
      form_params["url_username"] = opts[:'url_username'] if !opts[:'url_username'].nil?
      form_params["url_password"] = opts[:'url_password'] if !opts[:'url_password'].nil?

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
        @api_client.config.logger.debug "API called: FaxesApi#configure_fax_send_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set Send Callback
    # Configure the callback URL to notify when an outbound fax is made. Each FoneNumber can be configured to use its own callback URL for handling send notifications.
    # @param fonenumber FoneNumber associated with the account
    # @param method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [InlineResponse2014]
    def configure_fax_send_notify_0(fonenumber, method, url, opts = {})
      data, _status_code, _headers = configure_fax_send_notify_0_with_http_info(fonenumber, method, url, opts)
      return data
    end

    # Set Send Callback
    # Configure the callback URL to notify when an outbound fax is made. Each FoneNumber can be configured to use its own callback URL for handling send notifications.
    # @param fonenumber FoneNumber associated with the account
    # @param method Callback URL method. Allowed values are &#x60;GET&#x60;,&#x60;POST&#x60;, or &#x60;JSON&#x60;. See **Notes** for additional information.
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :url_username Username for HTTP **Basic** authentication scheme
    # @option opts [String] :url_password Password for HTTP **Basic** authentication scheme
    # @return [Array<(InlineResponse2014, Fixnum, Hash)>] InlineResponse2014 data, response status code and response headers
    def configure_fax_send_notify_0_with_http_info(fonenumber, method, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxesApi.configure_fax_send_notify_0 ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FaxesApi.configure_fax_send_notify_0"
      end
      # verify the required parameter 'method' is set
      if @api_client.config.client_side_validation && method.nil?
        fail ArgumentError, "Missing the required parameter 'method' when calling FaxesApi.configure_fax_send_notify_0"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['GET', 'POST', 'JSON'].include?(method)
        fail ArgumentError, "invalid value for 'method', must be one of GET, POST, JSON"
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling FaxesApi.configure_fax_send_notify_0"
      end
      # resource path
      local_var_path = "/faxes/send_notify"

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
      form_params["fonenumber"] = fonenumber
      form_params["method"] = method
      form_params["url"] = url
      form_params["url_username"] = opts[:'url_username'] if !opts[:'url_username'].nil?
      form_params["url_password"] = opts[:'url_password'] if !opts[:'url_password'].nil?

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
        @api_client.config.logger.debug "API called: FaxesApi#configure_fax_send_notify_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Fax
    # Send a fax to a recipient phone number.
    # @param fonenumber FoneNumber to use for fax
    # @param to Receiving 10 digit phone number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message Message to fax
    # @option opts [String] :pdf URL of a PDF file to send with fax
    # @return [InlineResponse2012]
    def create_fax(fonenumber, to, opts = {})
      data, _status_code, _headers = create_fax_with_http_info(fonenumber, to, opts)
      return data
    end

    # Create Fax
    # Send a fax to a recipient phone number.
    # @param fonenumber FoneNumber to use for fax
    # @param to Receiving 10 digit phone number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message Message to fax
    # @option opts [String] :pdf URL of a PDF file to send with fax
    # @return [Array<(InlineResponse2012, Fixnum, Hash)>] InlineResponse2012 data, response status code and response headers
    def create_fax_with_http_info(fonenumber, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxesApi.create_fax ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FaxesApi.create_fax"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling FaxesApi.create_fax"
      end
      # resource path
      local_var_path = "/faxes"

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
      form_params["fonenumber"] = fonenumber
      form_params["to"] = to
      form_params["message"] = opts[:'message'] if !opts[:'message'].nil?
      form_params["pdf"] = opts[:'pdf'] if !opts[:'pdf'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxesApi#create_fax\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Fax
    # Send a fax to a recipient phone number.
    # @param fonenumber FoneNumber to use for fax
    # @param to Receiving 10 digit phone number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message Message to fax
    # @option opts [String] :pdf URL of a PDF file to send with fax
    # @return [InlineResponse2012]
    def create_fax_0(fonenumber, to, opts = {})
      data, _status_code, _headers = create_fax_0_with_http_info(fonenumber, to, opts)
      return data
    end

    # Create Fax
    # Send a fax to a recipient phone number.
    # @param fonenumber FoneNumber to use for fax
    # @param to Receiving 10 digit phone number
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message Message to fax
    # @option opts [String] :pdf URL of a PDF file to send with fax
    # @return [Array<(InlineResponse2012, Fixnum, Hash)>] InlineResponse2012 data, response status code and response headers
    def create_fax_0_with_http_info(fonenumber, to, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FaxesApi.create_fax_0 ..."
      end
      # verify the required parameter 'fonenumber' is set
      if @api_client.config.client_side_validation && fonenumber.nil?
        fail ArgumentError, "Missing the required parameter 'fonenumber' when calling FaxesApi.create_fax_0"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling FaxesApi.create_fax_0"
      end
      # resource path
      local_var_path = "/faxes"

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
      form_params["fonenumber"] = fonenumber
      form_params["to"] = to
      form_params["message"] = opts[:'message'] if !opts[:'message'].nil?
      form_params["pdf"] = opts[:'pdf'] if !opts[:'pdf'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FaxesApi#create_fax_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
