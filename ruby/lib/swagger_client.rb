=begin
#FoneStorm API 2.2.0 (Breeze)

#FracTEL's Middleware API

OpenAPI spec version: 2.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

# Common files
require 'swagger_client/api_client'
require 'swagger_client/api_error'
require 'swagger_client/version'
require 'swagger_client/configuration'

# Models
require 'swagger_client/models/account'
require 'swagger_client/models/authorization'
require 'swagger_client/models/call'
require 'swagger_client/models/error'
require 'swagger_client/models/fax'
require 'swagger_client/models/fone_number'
require 'swagger_client/models/fone_number_fax_options'
require 'swagger_client/models/fone_number_fax_options_receive_notify'
require 'swagger_client/models/fone_number_fax_options_send_notify'
require 'swagger_client/models/fone_number_sms_options'
require 'swagger_client/models/fone_number_sms_options_receive'
require 'swagger_client/models/fone_number_sms_options_receive_notify'
require 'swagger_client/models/fone_number_sms_options_send_notify'
require 'swagger_client/models/fone_number_voice_options'
require 'swagger_client/models/fone_number_voice_options_receive_notify'
require 'swagger_client/models/fone_number_voice_options_send_notify'
require 'swagger_client/models/inline_response_200'
require 'swagger_client/models/inline_response_200_1'
require 'swagger_client/models/inline_response_201'
require 'swagger_client/models/inline_response_201_1'
require 'swagger_client/models/inline_response_201_2'
require 'swagger_client/models/inline_response_201_3'
require 'swagger_client/models/inline_response_201_4'
require 'swagger_client/models/message'

# APIs
require 'swagger_client/api/accounts_api'
require 'swagger_client/api/auth_api'
require 'swagger_client/api/authorization_api'
require 'swagger_client/api/calls_api'
require 'swagger_client/api/faxes_api'
require 'swagger_client/api/fonenumbers_api'
require 'swagger_client/api/messages_api'

module SwaggerClient
  class << self
    # Customize default settings for the SDK using block.
    #   SwaggerClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
