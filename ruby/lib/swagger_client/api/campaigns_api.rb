=begin
#FoneStorm API 2.4.0 (Thunder)

#FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "uri"

module SwaggerClient
  class CampaignsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Campaign
    # Create a campaign.
    # @param name Campaign name
    # @param start_time Campaign start time
    # @param end_time Campaign end time
    # @param list_id Campaign list
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20110]
    def create_campaign(name, start_time, end_time, list_id, opts = {})
      data, _status_code, _headers = create_campaign_with_http_info(name, start_time, end_time, list_id, opts)
      return data
    end

    # Create Campaign
    # Create a campaign.
    # @param name Campaign name
    # @param start_time Campaign start time
    # @param end_time Campaign end time
    # @param list_id Campaign list
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20110, Fixnum, Hash)>] InlineResponse20110 data, response status code and response headers
    def create_campaign_with_http_info(name, start_time, end_time, list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.create_campaign ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CampaignsApi.create_campaign"
      end
      # verify the required parameter 'start_time' is set
      if @api_client.config.client_side_validation && start_time.nil?
        fail ArgumentError, "Missing the required parameter 'start_time' when calling CampaignsApi.create_campaign"
      end
      # verify the required parameter 'end_time' is set
      if @api_client.config.client_side_validation && end_time.nil?
        fail ArgumentError, "Missing the required parameter 'end_time' when calling CampaignsApi.create_campaign"
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling CampaignsApi.create_campaign"
      end
      # resource path
      local_var_path = "/campaigns"

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
      form_params["start_time"] = start_time
      form_params["end_time"] = end_time
      form_params["list_id"] = list_id

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20110')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#create_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Campaign
    # Create a campaign.
    # @param name Campaign name
    # @param start_time Campaign start time
    # @param end_time Campaign end time
    # @param list_id Campaign list
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20110]
    def create_campaign_0(name, start_time, end_time, list_id, opts = {})
      data, _status_code, _headers = create_campaign_0_with_http_info(name, start_time, end_time, list_id, opts)
      return data
    end

    # Create Campaign
    # Create a campaign.
    # @param name Campaign name
    # @param start_time Campaign start time
    # @param end_time Campaign end time
    # @param list_id Campaign list
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20110, Fixnum, Hash)>] InlineResponse20110 data, response status code and response headers
    def create_campaign_0_with_http_info(name, start_time, end_time, list_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.create_campaign_0 ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling CampaignsApi.create_campaign_0"
      end
      # verify the required parameter 'start_time' is set
      if @api_client.config.client_side_validation && start_time.nil?
        fail ArgumentError, "Missing the required parameter 'start_time' when calling CampaignsApi.create_campaign_0"
      end
      # verify the required parameter 'end_time' is set
      if @api_client.config.client_side_validation && end_time.nil?
        fail ArgumentError, "Missing the required parameter 'end_time' when calling CampaignsApi.create_campaign_0"
      end
      # verify the required parameter 'list_id' is set
      if @api_client.config.client_side_validation && list_id.nil?
        fail ArgumentError, "Missing the required parameter 'list_id' when calling CampaignsApi.create_campaign_0"
      end
      # resource path
      local_var_path = "/campaigns"

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
      form_params["start_time"] = start_time
      form_params["end_time"] = end_time
      form_params["list_id"] = list_id

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20110')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#create_campaign_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Campaign
    # Delete a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20110]
    def delete_campaign(id, opts = {})
      data, _status_code, _headers = delete_campaign_with_http_info(id, opts)
      return data
    end

    # Delete Campaign
    # Delete a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20110, Fixnum, Hash)>] InlineResponse20110 data, response status code and response headers
    def delete_campaign_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.delete_campaign ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.delete_campaign"
      end
      # resource path
      local_var_path = "/campaigns/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20110')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#delete_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Campaign
    # Delete a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20110]
    def delete_campaign_0(id, opts = {})
      data, _status_code, _headers = delete_campaign_0_with_http_info(id, opts)
      return data
    end

    # Delete Campaign
    # Delete a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20110, Fixnum, Hash)>] InlineResponse20110 data, response status code and response headers
    def delete_campaign_0_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.delete_campaign_0 ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.delete_campaign_0"
      end
      # resource path
      local_var_path = "/campaigns/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20110')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#delete_campaign_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Campaign
    # Get information about a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20110]
    def get_campaign(id, opts = {})
      data, _status_code, _headers = get_campaign_with_http_info(id, opts)
      return data
    end

    # Get Campaign
    # Get information about a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20110, Fixnum, Hash)>] InlineResponse20110 data, response status code and response headers
    def get_campaign_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaign ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.get_campaign"
      end
      # resource path
      local_var_path = "/campaigns/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20110')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Campaign
    # Get information about a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse20110]
    def get_campaign_0(id, opts = {})
      data, _status_code, _headers = get_campaign_0_with_http_info(id, opts)
      return data
    end

    # Get Campaign
    # Get information about a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse20110, Fixnum, Hash)>] InlineResponse20110 data, response status code and response headers
    def get_campaign_0_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaign_0 ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.get_campaign_0"
      end
      # resource path
      local_var_path = "/campaigns/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'InlineResponse20110')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaign_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Campaigns
    # Get a list of all campaigns.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    def get_campaigns(opts = {})
      data, _status_code, _headers = get_campaigns_with_http_info(opts)
      return data
    end

    # Get Campaigns
    # Get a list of all campaigns.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def get_campaigns_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaigns ..."
      end
      # resource path
      local_var_path = "/campaigns"

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
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Campaigns
    # Get a list of all campaigns.
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    def get_campaigns_0(opts = {})
      data, _status_code, _headers = get_campaigns_0_with_http_info(opts)
      return data
    end

    # Get Campaigns
    # Get a list of all campaigns.
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def get_campaigns_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.get_campaigns_0 ..."
      end
      # resource path
      local_var_path = "/campaigns"

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
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#get_campaigns_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Campaign
    # Update a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Campaign name
    # @option opts [Date] :start_time Campaign start time
    # @option opts [Date] :end_time Campaign end time
    # @option opts [String] :list_id Campaign list
    # @return [InlineResponse20110]
    def update_campaign(id, opts = {})
      data, _status_code, _headers = update_campaign_with_http_info(id, opts)
      return data
    end

    # Update Campaign
    # Update a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Campaign name
    # @option opts [Date] :start_time Campaign start time
    # @option opts [Date] :end_time Campaign end time
    # @option opts [String] :list_id Campaign list
    # @return [Array<(InlineResponse20110, Fixnum, Hash)>] InlineResponse20110 data, response status code and response headers
    def update_campaign_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.update_campaign ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.update_campaign"
      end
      # resource path
      local_var_path = "/campaigns/{id}".sub('{' + 'id' + '}', id.to_s)

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
      form_params["start_time"] = opts[:'start_time'] if !opts[:'start_time'].nil?
      form_params["end_time"] = opts[:'end_time'] if !opts[:'end_time'].nil?
      form_params["list_id"] = opts[:'list_id'] if !opts[:'list_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20110')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#update_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Campaign
    # Update a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Campaign name
    # @option opts [Date] :start_time Campaign start time
    # @option opts [Date] :end_time Campaign end time
    # @option opts [String] :list_id Campaign list
    # @return [InlineResponse20110]
    def update_campaign_0(id, opts = {})
      data, _status_code, _headers = update_campaign_0_with_http_info(id, opts)
      return data
    end

    # Update Campaign
    # Update a campaign.
    # @param id Campaign id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Campaign name
    # @option opts [Date] :start_time Campaign start time
    # @option opts [Date] :end_time Campaign end time
    # @option opts [String] :list_id Campaign list
    # @return [Array<(InlineResponse20110, Fixnum, Hash)>] InlineResponse20110 data, response status code and response headers
    def update_campaign_0_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CampaignsApi.update_campaign_0 ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.update_campaign_0"
      end
      # resource path
      local_var_path = "/campaigns/{id}".sub('{' + 'id' + '}', id.to_s)

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
      form_params["start_time"] = opts[:'start_time'] if !opts[:'start_time'].nil?
      form_params["end_time"] = opts[:'end_time'] if !opts[:'end_time'].nil?
      form_params["list_id"] = opts[:'list_id'] if !opts[:'list_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['jwt']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20110')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#update_campaign_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
