=begin comment

FoneStorm API 2.2.0

Extended API Documentation: https://developer.fonestorm.com

OpenAPI spec version: 2.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::FaxesApi;

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
# post_faxes
#
# Create a new fax under the account.
# 
# @param string $fonenumber FracTEL phone number to use for fax. (required)
# @param string $to Phone number to fax. (required)
# @param string $message Message to fax. (optional)
# @param string $pdf  (optional)
{
    my $params = {
    'fonenumber' => {
        data_type => 'string',
        description => 'FracTEL phone number to use for fax.',
        required => '1',
    },
    'to' => {
        data_type => 'string',
        description => 'Phone number to fax.',
        required => '1',
    },
    'message' => {
        data_type => 'string',
        description => 'Message to fax.',
        required => '0',
    },
    'pdf' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_faxes' } = { 
    	summary => 'Create a new fax under the account.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub post_faxes {
    my ($self, %args) = @_;

    # verify the required parameter 'fonenumber' is set
    unless (exists $args{'fonenumber'}) {
      croak("Missing the required parameter 'fonenumber' when calling post_faxes");
    }

    # verify the required parameter 'to' is set
    unless (exists $args{'to'}) {
      croak("Missing the required parameter 'to' when calling post_faxes");
    }

    # parse inputs
    my $_resource_path = '/faxes';

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
    if ( exists $args{'to'} ) {
                $form_params->{'to'} = $self->{api_client}->to_form_value($args{'to'});
    }
    
    # form params
    if ( exists $args{'message'} ) {
                $form_params->{'message'} = $self->{api_client}->to_form_value($args{'message'});
    }
    
    # form params
    if ( exists $args{'pdf'} ) {
                $form_params->{'pdf'} = $self->{api_client}->to_form_value($args{'pdf'});
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
# post_faxes_receive_notify
#
# Configure the callback URL to notify when a fax is received.
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
    __PACKAGE__->method_documentation->{ 'post_faxes_receive_notify' } = { 
    	summary => 'Configure the callback URL to notify when a fax is received.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub post_faxes_receive_notify {
    my ($self, %args) = @_;

    # verify the required parameter 'fonenumber' is set
    unless (exists $args{'fonenumber'}) {
      croak("Missing the required parameter 'fonenumber' when calling post_faxes_receive_notify");
    }

    # verify the required parameter 'method' is set
    unless (exists $args{'method'}) {
      croak("Missing the required parameter 'method' when calling post_faxes_receive_notify");
    }

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling post_faxes_receive_notify");
    }

    # parse inputs
    my $_resource_path = '/faxes/receive_notify';

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
# post_faxes_send_notify
#
# Configure the callback URL to notify when a fax is made.
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
    __PACKAGE__->method_documentation->{ 'post_faxes_send_notify' } = { 
    	summary => 'Configure the callback URL to notify when a fax is made.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub post_faxes_send_notify {
    my ($self, %args) = @_;

    # verify the required parameter 'fonenumber' is set
    unless (exists $args{'fonenumber'}) {
      croak("Missing the required parameter 'fonenumber' when calling post_faxes_send_notify");
    }

    # verify the required parameter 'method' is set
    unless (exists $args{'method'}) {
      croak("Missing the required parameter 'method' when calling post_faxes_send_notify");
    }

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling post_faxes_send_notify");
    }

    # parse inputs
    my $_resource_path = '/faxes/send_notify';

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
