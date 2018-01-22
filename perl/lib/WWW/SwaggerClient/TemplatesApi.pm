=begin comment

FoneStorm API 2.4.0 (Thunder)

FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::TemplatesApi;

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
# create_template
#
# Create Template
# 
# @param string $name Template name (required)
# @param string $type Template type (required)
# @param string $body Template body (required)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'Template name',
        required => '1',
    },
    'type' => {
        data_type => 'string',
        description => 'Template type',
        required => '1',
    },
    'body' => {
        data_type => 'string',
        description => 'Template body',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_template' } = { 
    	summary => 'Create Template',
        params => $params,
        returns => 'InlineResponse2019',
        };
}
# @return InlineResponse2019
#
sub create_template {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling create_template");
    }

    # verify the required parameter 'type' is set
    unless (exists $args{'type'}) {
      croak("Missing the required parameter 'type' when calling create_template");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling create_template");
    }

    # parse inputs
    my $_resource_path = '/templates';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }
    
    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }
    
    # form params
    if ( exists $args{'body'} ) {
                $form_params->{'body'} = $self->{api_client}->to_form_value($args{'body'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2019', $response);
    return $_response_object;
}

#
# create_template_0
#
# Create Template
# 
# @param string $name Template name (required)
# @param string $type Template type (required)
# @param string $body Template body (required)
{
    my $params = {
    'name' => {
        data_type => 'string',
        description => 'Template name',
        required => '1',
    },
    'type' => {
        data_type => 'string',
        description => 'Template type',
        required => '1',
    },
    'body' => {
        data_type => 'string',
        description => 'Template body',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_template_0' } = { 
    	summary => 'Create Template',
        params => $params,
        returns => 'InlineResponse2019',
        };
}
# @return InlineResponse2019
#
sub create_template_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'name' is set
    unless (exists $args{'name'}) {
      croak("Missing the required parameter 'name' when calling create_template_0");
    }

    # verify the required parameter 'type' is set
    unless (exists $args{'type'}) {
      croak("Missing the required parameter 'type' when calling create_template_0");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling create_template_0");
    }

    # parse inputs
    my $_resource_path = '/templates';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }
    
    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }
    
    # form params
    if ( exists $args{'body'} ) {
                $form_params->{'body'} = $self->{api_client}->to_form_value($args{'body'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2019', $response);
    return $_response_object;
}

#
# delete_template
#
# Delete Template
# 
# @param string $id Template id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Template id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_template' } = { 
    	summary => 'Delete Template',
        params => $params,
        returns => 'InlineResponse2019',
        };
}
# @return InlineResponse2019
#
sub delete_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_template");
    }

    # parse inputs
    my $_resource_path = '/templates/{id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2019', $response);
    return $_response_object;
}

#
# delete_template_0
#
# Delete Template
# 
# @param string $id Template id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Template id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_template_0' } = { 
    	summary => 'Delete Template',
        params => $params,
        returns => 'InlineResponse2019',
        };
}
# @return InlineResponse2019
#
sub delete_template_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_template_0");
    }

    # parse inputs
    my $_resource_path = '/templates/{id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2019', $response);
    return $_response_object;
}

#
# get_template
#
# Get Template
# 
# @param string $id Template id (required)
# @param boolean $attributes Include all attributes (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Template id',
        required => '1',
    },
    'attributes' => {
        data_type => 'boolean',
        description => 'Include all attributes',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_template' } = { 
    	summary => 'Get Template',
        params => $params,
        returns => 'InlineResponse2019',
        };
}
# @return InlineResponse2019
#
sub get_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_template");
    }

    # parse inputs
    my $_resource_path = '/templates/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded', 'application/offset+octet-stream', 'multipart/form-data');

    # query params
    if ( exists $args{'attributes'}) {
        $query_params->{'attributes'} = $self->{api_client}->to_query_value($args{'attributes'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2019', $response);
    return $_response_object;
}

#
# get_template_0
#
# Get Template
# 
# @param string $id Template id (required)
# @param boolean $attributes Include all attributes (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Template id',
        required => '1',
    },
    'attributes' => {
        data_type => 'boolean',
        description => 'Include all attributes',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_template_0' } = { 
    	summary => 'Get Template',
        params => $params,
        returns => 'InlineResponse2019',
        };
}
# @return InlineResponse2019
#
sub get_template_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_template_0");
    }

    # parse inputs
    my $_resource_path = '/templates/{id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded', 'application/offset+octet-stream', 'multipart/form-data');

    # query params
    if ( exists $args{'attributes'}) {
        $query_params->{'attributes'} = $self->{api_client}->to_query_value($args{'attributes'});
    }

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2019', $response);
    return $_response_object;
}

#
# get_templates
#
# Get Templates
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_templates' } = { 
    	summary => 'Get Templates',
        params => $params,
        returns => 'InlineResponse2006',
        };
}
# @return InlineResponse2006
#
sub get_templates {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/templates';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2006', $response);
    return $_response_object;
}

#
# get_templates_0
#
# Get Templates
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_templates_0' } = { 
    	summary => 'Get Templates',
        params => $params,
        returns => 'InlineResponse2006',
        };
}
# @return InlineResponse2006
#
sub get_templates_0 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/templates';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2006', $response);
    return $_response_object;
}

#
# update_template
#
# Update Template
# 
# @param string $id Template id (required)
# @param string $name Template name (optional)
# @param string $type Template type (optional)
# @param string $body Template body (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Template id',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'Template name',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'Template type',
        required => '0',
    },
    'body' => {
        data_type => 'string',
        description => 'Template body',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_template' } = { 
    	summary => 'Update Template',
        params => $params,
        returns => 'InlineResponse2019',
        };
}
# @return InlineResponse2019
#
sub update_template {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_template");
    }

    # parse inputs
    my $_resource_path = '/templates/{id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }
    
    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }
    
    # form params
    if ( exists $args{'body'} ) {
                $form_params->{'body'} = $self->{api_client}->to_form_value($args{'body'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2019', $response);
    return $_response_object;
}

#
# update_template_0
#
# Update Template
# 
# @param string $id Template id (required)
# @param string $name Template name (optional)
# @param string $type Template type (optional)
# @param string $body Template body (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Template id',
        required => '1',
    },
    'name' => {
        data_type => 'string',
        description => 'Template name',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'Template type',
        required => '0',
    },
    'body' => {
        data_type => 'string',
        description => 'Template body',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_template_0' } = { 
    	summary => 'Update Template',
        params => $params,
        returns => 'InlineResponse2019',
        };
}
# @return InlineResponse2019
#
sub update_template_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_template_0");
    }

    # parse inputs
    my $_resource_path = '/templates/{id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # path params
    if ( exists $args{'id'}) {
        my $_base_variable = "{" . "id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # form params
    if ( exists $args{'name'} ) {
                $form_params->{'name'} = $self->{api_client}->to_form_value($args{'name'});
    }
    
    # form params
    if ( exists $args{'type'} ) {
                $form_params->{'type'} = $self->{api_client}->to_form_value($args{'type'});
    }
    
    # form params
    if ( exists $args{'body'} ) {
                $form_params->{'body'} = $self->{api_client}->to_form_value($args{'body'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(jwt )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2019', $response);
    return $_response_object;
}

1;
