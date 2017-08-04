=begin comment

FracTEL API 2.1.1

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::AuthApi;

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
# post_auth
#
# Obtain a FracTEL Auth token.
# 
# @param string $username FracTEL username (required)
# @param string $password FracTEL password (required)
# @param int $expires FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours (optional)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'FracTEL username',
        required => '1',
    },
    'password' => {
        data_type => 'string',
        description => 'FracTEL password',
        required => '1',
    },
    'expires' => {
        data_type => 'int',
        description => 'FracTEL Token Life Time in Seconds | Default is 3600 seconds | Maximum is 24 hours',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'post_auth' } = { 
    	summary => 'Obtain a FracTEL Auth token.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub post_auth {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling post_auth");
    }

    # verify the required parameter 'password' is set
    unless (exists $args{'password'}) {
      croak("Missing the required parameter 'password' when calling post_auth");
    }

    # parse inputs
    my $_resource_path = '/auth';

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
    if ( exists $args{'username'} ) {
                $form_params->{'username'} = $self->{api_client}->to_form_value($args{'username'});
    }
    
    # form params
    if ( exists $args{'password'} ) {
                $form_params->{'password'} = $self->{api_client}->to_form_value($args{'password'});
    }
    
    # form params
    if ( exists $args{'expires'} ) {
                $form_params->{'expires'} = $self->{api_client}->to_form_value($args{'expires'});
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
