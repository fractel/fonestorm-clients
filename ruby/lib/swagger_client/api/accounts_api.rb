=begin
#FoneStorm API 2.4.0 (Thunder)

#FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Set CDR Callback
    # Configure the callback URL to notify when a call dialing record is available.
    # @param account_id FoneStorm account id
    # @param method Callback URL method
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Callback URL username
    # @option opts [String] :password Callback URL password
    # @return [InlineResponse20011]
    def configure_account_cdr_notify(account_id, method, url, opts = {})
      data, _status_code, _headers = configure_account_cdr_notify_with_http_info(account_id, method, url, opts)
      return data
    end

    # Set CDR Callback
    # Configure the callback URL to notify when a call dialing record is available.
    # @param account_id FoneStorm account id
    # @param method Callback URL method
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Callback URL username
    # @option opts [String] :password Callback URL password
    # @return [Array<(InlineResponse20011, Fixnum, Hash)>] InlineResponse20011 data, response status code and response headers
    def configure_account_cdr_notify_with_http_info(account_id, method, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.configure_account_cdr_notify ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.configure_account_cdr_notify"
      end
      # verify the required parameter 'method' is set
      if @api_client.config.client_side_validation && method.nil?
        fail ArgumentError, "Missing the required parameter 'method' when calling AccountsApi.configure_account_cdr_notify"
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling AccountsApi.configure_account_cdr_notify"
      end
      # resource path
      local_var_path = "/accounts/cdr_notify"

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
      form_params["account_id"] = account_id
      form_params["method"] = method
      form_params["url"] = url
      form_params["username"] = opts[:'username'] if !opts[:'username'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#configure_account_cdr_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set CDR Callback
    # Configure the callback URL to notify when a call dialing record is available.
    # @param account_id FoneStorm account id
    # @param method Callback URL method
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Callback URL username
    # @option opts [String] :password Callback URL password
    # @return [InlineResponse20011]
    def configure_account_cdr_notify_0(account_id, method, url, opts = {})
      data, _status_code, _headers = configure_account_cdr_notify_0_with_http_info(account_id, method, url, opts)
      return data
    end

    # Set CDR Callback
    # Configure the callback URL to notify when a call dialing record is available.
    # @param account_id FoneStorm account id
    # @param method Callback URL method
    # @param url Callback URL. See **Notes** for additional information.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :username Callback URL username
    # @option opts [String] :password Callback URL password
    # @return [Array<(InlineResponse20011, Fixnum, Hash)>] InlineResponse20011 data, response status code and response headers
    def configure_account_cdr_notify_0_with_http_info(account_id, method, url, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.configure_account_cdr_notify_0 ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountsApi.configure_account_cdr_notify_0"
      end
      # verify the required parameter 'method' is set
      if @api_client.config.client_side_validation && method.nil?
        fail ArgumentError, "Missing the required parameter 'method' when calling AccountsApi.configure_account_cdr_notify_0"
      end
      # verify the required parameter 'url' is set
      if @api_client.config.client_side_validation && url.nil?
        fail ArgumentError, "Missing the required parameter 'url' when calling AccountsApi.configure_account_cdr_notify_0"
      end
      # resource path
      local_var_path = "/accounts/cdr_notify"

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
      form_params["account_id"] = account_id
      form_params["method"] = method
      form_params["url"] = url
      form_params["username"] = opts[:'username'] if !opts[:'username'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#configure_account_cdr_notify_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Account
    # Get information about an account.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20011]
    def get_account(id, opts = {})
      data, _status_code, _headers = get_account_with_http_info(id, opts)
      return data
    end

    # Get Account
    # Get information about an account.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20011, Fixnum, Hash)>] InlineResponse20011 data, response status code and response headers
    def get_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.get_account ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_account"
      end
      # resource path
      local_var_path = "/accounts/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Account
    # Get information about an account.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20011]
    def get_account_0(id, opts = {})
      data, _status_code, _headers = get_account_0_with_http_info(id, opts)
      return data
    end

    # Get Account
    # Get information about an account.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20011, Fixnum, Hash)>] InlineResponse20011 data, response status code and response headers
    def get_account_0_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.get_account_0 ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_account_0"
      end
      # resource path
      local_var_path = "/accounts/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Account Integrations
    # Get configured account integrations.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20010]
    def get_account_integrations(id, opts = {})
      data, _status_code, _headers = get_account_integrations_with_http_info(id, opts)
      return data
    end

    # Get Account Integrations
    # Get configured account integrations.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20010, Fixnum, Hash)>] InlineResponse20010 data, response status code and response headers
    def get_account_integrations_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.get_account_integrations ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_account_integrations"
      end
      # resource path
      local_var_path = "/accounts/{id}/integrations".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20010')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account_integrations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Account Integrations
    # Get configured account integrations.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20010]
    def get_account_integrations_0(id, opts = {})
      data, _status_code, _headers = get_account_integrations_0_with_http_info(id, opts)
      return data
    end

    # Get Account Integrations
    # Get configured account integrations.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20010, Fixnum, Hash)>] InlineResponse20010 data, response status code and response headers
    def get_account_integrations_0_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.get_account_integrations_0 ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.get_account_integrations_0"
      end
      # resource path
      local_var_path = "/accounts/{id}/integrations".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20010')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#get_account_integrations_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Account
    # Update an account.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :primary_color Branding primary color
    # @option opts [String] :secondary_color Branding secondary color
    # @option opts [String] :background_color Branding background color
    # @option opts [String] :font_family Branding font family
    # @option opts [String] :logo Branding logo
    # @return [InlineResponse20011]
    def update_account(id, opts = {})
      data, _status_code, _headers = update_account_with_http_info(id, opts)
      return data
    end

    # Update Account
    # Update an account.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :primary_color Branding primary color
    # @option opts [String] :secondary_color Branding secondary color
    # @option opts [String] :background_color Branding background color
    # @option opts [String] :font_family Branding font family
    # @option opts [String] :logo Branding logo
    # @return [Array<(InlineResponse20011, Fixnum, Hash)>] InlineResponse20011 data, response status code and response headers
    def update_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.update_account ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.update_account"
      end
      # resource path
      local_var_path = "/accounts/{id}".sub('{' + 'id' + '}', id.to_s)

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
      form_params["primary_color"] = opts[:'primary_color'] if !opts[:'primary_color'].nil?
      form_params["secondary_color"] = opts[:'secondary_color'] if !opts[:'secondary_color'].nil?
      form_params["background_color"] = opts[:'background_color'] if !opts[:'background_color'].nil?
      form_params["font_family"] = opts[:'font_family'] if !opts[:'font_family'].nil?
      form_params["logo"] = opts[:'logo'] if !opts[:'logo'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#update_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Account
    # Update an account.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :primary_color Branding primary color
    # @option opts [String] :secondary_color Branding secondary color
    # @option opts [String] :background_color Branding background color
    # @option opts [String] :font_family Branding font family
    # @option opts [String] :logo Branding logo
    # @return [InlineResponse20011]
    def update_account_0(id, opts = {})
      data, _status_code, _headers = update_account_0_with_http_info(id, opts)
      return data
    end

    # Update Account
    # Update an account.
    # @param id Account id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :primary_color Branding primary color
    # @option opts [String] :secondary_color Branding secondary color
    # @option opts [String] :background_color Branding background color
    # @option opts [String] :font_family Branding font family
    # @option opts [String] :logo Branding logo
    # @return [Array<(InlineResponse20011, Fixnum, Hash)>] InlineResponse20011 data, response status code and response headers
    def update_account_0_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.update_account_0 ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AccountsApi.update_account_0"
      end
      # resource path
      local_var_path = "/accounts/{id}".sub('{' + 'id' + '}', id.to_s)

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
      form_params["primary_color"] = opts[:'primary_color'] if !opts[:'primary_color'].nil?
      form_params["secondary_color"] = opts[:'secondary_color'] if !opts[:'secondary_color'].nil?
      form_params["background_color"] = opts[:'background_color'] if !opts[:'background_color'].nil?
      form_params["font_family"] = opts[:'font_family'] if !opts[:'font_family'].nil?
      form_params["logo"] = opts[:'logo'] if !opts[:'logo'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#update_account_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
