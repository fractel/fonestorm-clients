=begin
#FoneStorm API 2.2.0

#FracTEL's Middleware API

OpenAPI spec version: 2.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a FoneStorm authentication token.
    # Returns a token that can be used to make authenticated requests
    # @param username FracTEL username
    # @param password FracTEL password
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expires FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 86400 seconds (24 hours)
    # @return [String]
    def post_auth(username, password, opts = {})
      data, _status_code, _headers = post_auth_with_http_info(username, password, opts)
      return data
    end

    # Create a FoneStorm authentication token.
    # Returns a token that can be used to make authenticated requests
    # @param username FracTEL username
    # @param password FracTEL password
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expires FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 86400 seconds (24 hours)
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def post_auth_with_http_info(username, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthApi.post_auth ..."
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling AuthApi.post_auth"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling AuthApi.post_auth"
      end
      # resource path
      local_var_path = "/auth"

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
      form_params["username"] = username
      form_params["password"] = password
      form_params["expires"] = opts[:'expires'] if !opts[:'expires'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#post_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
