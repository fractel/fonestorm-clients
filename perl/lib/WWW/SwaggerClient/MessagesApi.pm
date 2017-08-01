=begin comment

FracTEL API 2.1.0

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::MessagesApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# post_messages_receive
#
# Configure the delivery service type used as the destination for received messages.
# 
# @param string $fonenumber Your FracTEL phone number. (required)
# @param string $type Message routing type. (required)
# @param string $value Message routing type value. (optional)
# @param string $url_method URL method when type is URL. (optional)
# @param string $url_username Optional URL username when type is URL. (optional)
# @param string $url_password Optional URL password when type is URL. (optional)
{
    my $params = {
    'fonenumber' => {
        data_type => 'string',
        description => 'Your FracTEL phone number.',
        required => '1',
    },
    'type' => {
        data_type => 'string',
        description => 'Message routing type.',
        required => '1',
    },
    'value' => {
        data_type => 'string',
        description => 'Message routing type value.',
        required => '0',
    },
    'url_method' => {
        data_type => 'string',
        description => 'URL method when type is URL.',
        required => '0',
    },
    'url_username' => {
        data_type => 'string',
        description => 'Optional URL username when type is URL.',
        required => '0',
    },
    'url_password' => {
        data_type => 'string',
        description => 'Optional URL password when type is URL.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_messages_receive' } = { 
    	summary => 'Configure the delivery service type used as the destination for received messages.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub post_messages_receive {
    my ($self, %args) = @_;

    # verify the required parameter 'fonenumber' is set
    unless (exists $args{'fonenumber'}) {
      croak("Missing the required parameter 'fonenumber' when calling post_messages_receive");
    }

    # verify the required parameter 'type' is set
    unless (exists $args{'type'}) {
      croak("Missing the required parameter 'type' when calling post_messages_receive");
    }

    # parse inputs
    my $_resource_path = '/messages/receive';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'fonenumber'} ) {
                $form_params->{'fonenumber'} = $self->{api_client}->to_form_value($args{'fonenumber'});
    }
    
    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }
    
    # form params
    if ( exists $args{'value'} ) {
                $form_params->{'value'} = $self->{api_client}->to_form_value($args{'value'});
    }
    
    # form params
    if ( exists $args{'url_method'} ) {
                $form_params->{'url_method'} = $self->{api_client}->to_form_value($args{'url_method'});
    }
    
    # form params
    if ( exists $args{'url_username'} ) {
                $form_params->{'url_username'} = $self->{api_client}->to_form_value($args{'url_username'});
    }
    
    # form params
    if ( exists $args{'url_password'} ) {
                $form_params->{'url_password'} = $self->{api_client}->to_form_value($args{'url_password'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# post_messages_receive_notify
#
# Configure the callback URL to notify when a message is received.
# 
# @param string $fonenumber Your FracTEL phone number. (required)
# @param string $method Callback URL method. (required)
# @param string $url Callback URL. (required)
# @param string $url_username Callback URL username. (optional)
# @param string $url_password Callback URL password. (optional)
{
    my $params = {
    'fonenumber' => {
        data_type => 'string',
        description => 'Your FracTEL phone number.',
        required => '1',
    },
    'method' => {
        data_type => 'string',
        description => 'Callback URL method.',
        required => '1',
    },
    'url' => {
        data_type => 'string',
        description => 'Callback URL.',
        required => '1',
    },
    'url_username' => {
        data_type => 'string',
        description => 'Callback URL username.',
        required => '0',
    },
    'url_password' => {
        data_type => 'string',
        description => 'Callback URL password.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_messages_receive_notify' } = { 
    	summary => 'Configure the callback URL to notify when a message is received.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub post_messages_receive_notify {
    my ($self, %args) = @_;

    # verify the required parameter 'fonenumber' is set
    unless (exists $args{'fonenumber'}) {
      croak("Missing the required parameter 'fonenumber' when calling post_messages_receive_notify");
    }

    # verify the required parameter 'method' is set
    unless (exists $args{'method'}) {
      croak("Missing the required parameter 'method' when calling post_messages_receive_notify");
    }

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling post_messages_receive_notify");
    }

    # parse inputs
    my $_resource_path = '/messages/receive_notify';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'fonenumber'} ) {
                $form_params->{'fonenumber'} = $self->{api_client}->to_form_value($args{'fonenumber'});
    }
    
    # form params
    if ( exists $args{'method'} ) {
                $form_params->{'method'} = $self->{api_client}->to_form_value($args{'method'});
    }
    
    # form params
    if ( exists $args{'url'} ) {
                $form_params->{'url'} = $self->{api_client}->to_form_value($args{'url'});
    }
    
    # form params
    if ( exists $args{'url_username'} ) {
                $form_params->{'url_username'} = $self->{api_client}->to_form_value($args{'url_username'});
    }
    
    # form params
    if ( exists $args{'url_password'} ) {
                $form_params->{'url_password'} = $self->{api_client}->to_form_value($args{'url_password'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# post_messages_send
#
# Send an SMS or MMS message to a recipient.
# 
# @param string $to The recipient&#39;s 10 digits phone number. (required)
# @param string $fonenumber Your FracTEL phone number to use as from (required)
# @param string $message Content of SMS (required)
# @param ARRAY[string] $media_url URL for media for send via SMS (up to 10) (optional)
# @param string $confirmation_url Callback URL for confirmation (optional)
# @param string $confirmation_url_username Callback URL username for confirmation (optional)
# @param string $confirmation_url_password Callback URL password for confirmation (optional)
# @param boolean $require_confirmation Only send message if confirmation is available (optional)
{
    my $params = {
    'to' => {
        data_type => 'string',
        description => 'The recipient&#39;s 10 digits phone number.',
        required => '1',
    },
    'fonenumber' => {
        data_type => 'string',
        description => 'Your FracTEL phone number to use as from',
        required => '1',
    },
    'message' => {
        data_type => 'string',
        description => 'Content of SMS',
        required => '1',
    },
    'media_url' => {
        data_type => 'ARRAY[string]',
        description => 'URL for media for send via SMS (up to 10)',
        required => '0',
    },
    'confirmation_url' => {
        data_type => 'string',
        description => 'Callback URL for confirmation',
        required => '0',
    },
    'confirmation_url_username' => {
        data_type => 'string',
        description => 'Callback URL username for confirmation',
        required => '0',
    },
    'confirmation_url_password' => {
        data_type => 'string',
        description => 'Callback URL password for confirmation',
        required => '0',
    },
    'require_confirmation' => {
        data_type => 'boolean',
        description => 'Only send message if confirmation is available',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_messages_send' } = { 
    	summary => 'Send an SMS or MMS message to a recipient.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub post_messages_send {
    my ($self, %args) = @_;

    # verify the required parameter 'to' is set
    unless (exists $args{'to'}) {
      croak("Missing the required parameter 'to' when calling post_messages_send");
    }

    # verify the required parameter 'fonenumber' is set
    unless (exists $args{'fonenumber'}) {
      croak("Missing the required parameter 'fonenumber' when calling post_messages_send");
    }

    # verify the required parameter 'message' is set
    unless (exists $args{'message'}) {
      croak("Missing the required parameter 'message' when calling post_messages_send");
    }

    # parse inputs
    my $_resource_path = '/messages/send';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'to'} ) {
                $form_params->{'to'} = $self->{api_client}->to_form_value($args{'to'});
    }
    
    # form params
    if ( exists $args{'fonenumber'} ) {
                $form_params->{'fonenumber'} = $self->{api_client}->to_form_value($args{'fonenumber'});
    }
    
    # form params
    if ( exists $args{'message'} ) {
                $form_params->{'message'} = $self->{api_client}->to_form_value($args{'message'});
    }
    
    # form params
    if ( exists $args{'media_url'} ) {
                $form_params->{'media_url'} = $self->{api_client}->to_form_value($args{'media_url'});
    }
    
    # form params
    if ( exists $args{'confirmation_url'} ) {
                $form_params->{'confirmation_url'} = $self->{api_client}->to_form_value($args{'confirmation_url'});
    }
    
    # form params
    if ( exists $args{'confirmation_url_username'} ) {
                $form_params->{'confirmation_url_username'} = $self->{api_client}->to_form_value($args{'confirmation_url_username'});
    }
    
    # form params
    if ( exists $args{'confirmation_url_password'} ) {
                $form_params->{'confirmation_url_password'} = $self->{api_client}->to_form_value($args{'confirmation_url_password'});
    }
    
    # form params
    if ( exists $args{'require_confirmation'} ) {
                $form_params->{'require_confirmation'} = $self->{api_client}->to_form_value($args{'require_confirmation'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# post_messages_send_notify
#
# Configure the callback URL to notify when a message is sent.
# 
# @param string $fonenumber Your FracTEL phone number (required)
# @param string $method Callback URL method. (required)
# @param string $url Callback URL. (required)
# @param string $url_username Callback URL username. (optional)
# @param string $url_password Callback URL password. (optional)
{
    my $params = {
    'fonenumber' => {
        data_type => 'string',
        description => 'Your FracTEL phone number',
        required => '1',
    },
    'method' => {
        data_type => 'string',
        description => 'Callback URL method.',
        required => '1',
    },
    'url' => {
        data_type => 'string',
        description => 'Callback URL.',
        required => '1',
    },
    'url_username' => {
        data_type => 'string',
        description => 'Callback URL username.',
        required => '0',
    },
    'url_password' => {
        data_type => 'string',
        description => 'Callback URL password.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_messages_send_notify' } = { 
    	summary => 'Configure the callback URL to notify when a message is sent.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub post_messages_send_notify {
    my ($self, %args) = @_;

    # verify the required parameter 'fonenumber' is set
    unless (exists $args{'fonenumber'}) {
      croak("Missing the required parameter 'fonenumber' when calling post_messages_send_notify");
    }

    # verify the required parameter 'method' is set
    unless (exists $args{'method'}) {
      croak("Missing the required parameter 'method' when calling post_messages_send_notify");
    }

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling post_messages_send_notify");
    }

    # parse inputs
    my $_resource_path = '/messages/send_notify';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'fonenumber'} ) {
                $form_params->{'fonenumber'} = $self->{api_client}->to_form_value($args{'fonenumber'});
    }
    
    # form params
    if ( exists $args{'method'} ) {
                $form_params->{'method'} = $self->{api_client}->to_form_value($args{'method'});
    }
    
    # form params
    if ( exists $args{'url'} ) {
                $form_params->{'url'} = $self->{api_client}->to_form_value($args{'url'});
    }
    
    # form params
    if ( exists $args{'url_username'} ) {
                $form_params->{'url_username'} = $self->{api_client}->to_form_value($args{'url_username'});
    }
    
    # form params
    if ( exists $args{'url_password'} ) {
                $form_params->{'url_password'} = $self->{api_client}->to_form_value($args{'url_password'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

1;
