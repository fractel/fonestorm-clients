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
package WWW::SwaggerClient::ConferencesApi;

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
# create_conference
#
# Create Conference
# 
# @param string $label Label of conference (required)
# @param DateTime $start_time Start time and date of conference (optional)
# @param DateTime $end_time End time and date of conference (optional)
# @param BigDecimal $fonenumber Fonenumber to use for conference (optional)
# @param string $before_message Message to play before conference start time (optional)
# @param string $after_message Message to play after conference end time (optional)
# @param Number $max_members Maximum number of allowed conference attendees (optional)
{
    my $params = {
    'label' => {
        data_type => 'string',
        description => 'Label of conference',
        required => '1',
    },
    'start_time' => {
        data_type => 'DateTime',
        description => 'Start time and date of conference',
        required => '0',
    },
    'end_time' => {
        data_type => 'DateTime',
        description => 'End time and date of conference',
        required => '0',
    },
    'fonenumber' => {
        data_type => 'BigDecimal',
        description => 'Fonenumber to use for conference',
        required => '0',
    },
    'before_message' => {
        data_type => 'string',
        description => 'Message to play before conference start time',
        required => '0',
    },
    'after_message' => {
        data_type => 'string',
        description => 'Message to play after conference end time',
        required => '0',
    },
    'max_members' => {
        data_type => 'Number',
        description => 'Maximum number of allowed conference attendees',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_conference' } = { 
    	summary => 'Create Conference',
        params => $params,
        returns => 'InlineResponse2013',
        };
}
# @return InlineResponse2013
#
sub create_conference {
    my ($self, %args) = @_;

    # verify the required parameter 'label' is set
    unless (exists $args{'label'}) {
      croak("Missing the required parameter 'label' when calling create_conference");
    }

    # parse inputs
    my $_resource_path = '/conferences';

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
    if ( exists $args{'label'} ) {
                $form_params->{'label'} = $self->{api_client}->to_form_value($args{'label'});
    }
    
    # form params
    if ( exists $args{'start_time'} ) {
                $form_params->{'start_time'} = $self->{api_client}->to_form_value($args{'start_time'});
    }
    
    # form params
    if ( exists $args{'end_time'} ) {
                $form_params->{'end_time'} = $self->{api_client}->to_form_value($args{'end_time'});
    }
    
    # form params
    if ( exists $args{'fonenumber'} ) {
                $form_params->{'fonenumber'} = $self->{api_client}->to_form_value($args{'fonenumber'});
    }
    
    # form params
    if ( exists $args{'before_message'} ) {
                $form_params->{'before_message'} = $self->{api_client}->to_form_value($args{'before_message'});
    }
    
    # form params
    if ( exists $args{'after_message'} ) {
                $form_params->{'after_message'} = $self->{api_client}->to_form_value($args{'after_message'});
    }
    
    # form params
    if ( exists $args{'max_members'} ) {
                $form_params->{'max_members'} = $self->{api_client}->to_form_value($args{'max_members'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2013', $response);
    return $_response_object;
}

#
# create_conference_0
#
# Create Conference
# 
# @param string $label Label of conference (required)
# @param DateTime $start_time Start time and date of conference (optional)
# @param DateTime $end_time End time and date of conference (optional)
# @param BigDecimal $fonenumber Fonenumber to use for conference (optional)
# @param string $before_message Message to play before conference start time (optional)
# @param string $after_message Message to play after conference end time (optional)
# @param Number $max_members Maximum number of allowed conference attendees (optional)
{
    my $params = {
    'label' => {
        data_type => 'string',
        description => 'Label of conference',
        required => '1',
    },
    'start_time' => {
        data_type => 'DateTime',
        description => 'Start time and date of conference',
        required => '0',
    },
    'end_time' => {
        data_type => 'DateTime',
        description => 'End time and date of conference',
        required => '0',
    },
    'fonenumber' => {
        data_type => 'BigDecimal',
        description => 'Fonenumber to use for conference',
        required => '0',
    },
    'before_message' => {
        data_type => 'string',
        description => 'Message to play before conference start time',
        required => '0',
    },
    'after_message' => {
        data_type => 'string',
        description => 'Message to play after conference end time',
        required => '0',
    },
    'max_members' => {
        data_type => 'Number',
        description => 'Maximum number of allowed conference attendees',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_conference_0' } = { 
    	summary => 'Create Conference',
        params => $params,
        returns => 'InlineResponse2013',
        };
}
# @return InlineResponse2013
#
sub create_conference_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'label' is set
    unless (exists $args{'label'}) {
      croak("Missing the required parameter 'label' when calling create_conference_0");
    }

    # parse inputs
    my $_resource_path = '/conferences';

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
    if ( exists $args{'label'} ) {
                $form_params->{'label'} = $self->{api_client}->to_form_value($args{'label'});
    }
    
    # form params
    if ( exists $args{'start_time'} ) {
                $form_params->{'start_time'} = $self->{api_client}->to_form_value($args{'start_time'});
    }
    
    # form params
    if ( exists $args{'end_time'} ) {
                $form_params->{'end_time'} = $self->{api_client}->to_form_value($args{'end_time'});
    }
    
    # form params
    if ( exists $args{'fonenumber'} ) {
                $form_params->{'fonenumber'} = $self->{api_client}->to_form_value($args{'fonenumber'});
    }
    
    # form params
    if ( exists $args{'before_message'} ) {
                $form_params->{'before_message'} = $self->{api_client}->to_form_value($args{'before_message'});
    }
    
    # form params
    if ( exists $args{'after_message'} ) {
                $form_params->{'after_message'} = $self->{api_client}->to_form_value($args{'after_message'});
    }
    
    # form params
    if ( exists $args{'max_members'} ) {
                $form_params->{'max_members'} = $self->{api_client}->to_form_value($args{'max_members'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2013', $response);
    return $_response_object;
}

#
# delete_conference
#
# Delete Conference
# 
# @param string $id Conference id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Conference id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_conference' } = { 
    	summary => 'Delete Conference',
        params => $params,
        returns => 'InlineResponse2013',
        };
}
# @return InlineResponse2013
#
sub delete_conference {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_conference");
    }

    # parse inputs
    my $_resource_path = '/conferences/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2013', $response);
    return $_response_object;
}

#
# delete_conference_0
#
# Delete Conference
# 
# @param string $id Conference id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Conference id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'delete_conference_0' } = { 
    	summary => 'Delete Conference',
        params => $params,
        returns => 'InlineResponse2013',
        };
}
# @return InlineResponse2013
#
sub delete_conference_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling delete_conference_0");
    }

    # parse inputs
    my $_resource_path = '/conferences/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2013', $response);
    return $_response_object;
}

#
# get_conference
#
# Get Conference
# 
# @param string $id Conference id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Conference id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_conference' } = { 
    	summary => 'Get Conference',
        params => $params,
        returns => 'InlineResponse2013',
        };
}
# @return InlineResponse2013
#
sub get_conference {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_conference");
    }

    # parse inputs
    my $_resource_path = '/conferences/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2013', $response);
    return $_response_object;
}

#
# get_conference_0
#
# Get Conference
# 
# @param string $id Conference id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Conference id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_conference_0' } = { 
    	summary => 'Get Conference',
        params => $params,
        returns => 'InlineResponse2013',
        };
}
# @return InlineResponse2013
#
sub get_conference_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_conference_0");
    }

    # parse inputs
    my $_resource_path = '/conferences/{id}';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2013', $response);
    return $_response_object;
}

#
# get_conference_fonenumbers
#
# Conference Fonenumbers
# 
# @param string $id Conference id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Conference id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_conference_fonenumbers' } = { 
    	summary => 'Conference Fonenumbers',
        params => $params,
        returns => 'InlineResponse2002',
        };
}
# @return InlineResponse2002
#
sub get_conference_fonenumbers {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_conference_fonenumbers");
    }

    # parse inputs
    my $_resource_path = '/conferences/{id}/fonenumbers';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2002', $response);
    return $_response_object;
}

#
# get_conference_fonenumbers_0
#
# Conference Fonenumbers
# 
# @param string $id Conference id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Conference id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_conference_fonenumbers_0' } = { 
    	summary => 'Conference Fonenumbers',
        params => $params,
        returns => 'InlineResponse2002',
        };
}
# @return InlineResponse2002
#
sub get_conference_fonenumbers_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling get_conference_fonenumbers_0");
    }

    # parse inputs
    my $_resource_path = '/conferences/{id}/fonenumbers';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2002', $response);
    return $_response_object;
}

#
# get_conferences
#
# Get Conferences
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_conferences' } = { 
    	summary => 'Get Conferences',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub get_conferences {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/conferences';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse200', $response);
    return $_response_object;
}

#
# get_conferences_0
#
# Get Conferences
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'get_conferences_0' } = { 
    	summary => 'Get Conferences',
        params => $params,
        returns => 'InlineResponse200',
        };
}
# @return InlineResponse200
#
sub get_conferences_0 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/conferences';

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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse200', $response);
    return $_response_object;
}

#
# update_conference
#
# Update Conference
# 
# @param string $id Conference id (required)
# @param string $label Label of conference (optional)
# @param DateTime $start_time Start time and date of conference (optional)
# @param DateTime $end_time End time and date of conference (optional)
# @param BigDecimal $fonenumber Fonenumber to use for conference (optional)
# @param string $before_message Message to play before conference start time (optional)
# @param string $after_message Message to play after conference end time (optional)
# @param Number $max_members Maximum number of allowed conference attendees (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Conference id',
        required => '1',
    },
    'label' => {
        data_type => 'string',
        description => 'Label of conference',
        required => '0',
    },
    'start_time' => {
        data_type => 'DateTime',
        description => 'Start time and date of conference',
        required => '0',
    },
    'end_time' => {
        data_type => 'DateTime',
        description => 'End time and date of conference',
        required => '0',
    },
    'fonenumber' => {
        data_type => 'BigDecimal',
        description => 'Fonenumber to use for conference',
        required => '0',
    },
    'before_message' => {
        data_type => 'string',
        description => 'Message to play before conference start time',
        required => '0',
    },
    'after_message' => {
        data_type => 'string',
        description => 'Message to play after conference end time',
        required => '0',
    },
    'max_members' => {
        data_type => 'Number',
        description => 'Maximum number of allowed conference attendees',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_conference' } = { 
    	summary => 'Update Conference',
        params => $params,
        returns => 'InlineResponse2013',
        };
}
# @return InlineResponse2013
#
sub update_conference {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_conference");
    }

    # parse inputs
    my $_resource_path = '/conferences/{id}';

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
    if ( exists $args{'label'} ) {
                $form_params->{'label'} = $self->{api_client}->to_form_value($args{'label'});
    }
    
    # form params
    if ( exists $args{'start_time'} ) {
                $form_params->{'start_time'} = $self->{api_client}->to_form_value($args{'start_time'});
    }
    
    # form params
    if ( exists $args{'end_time'} ) {
                $form_params->{'end_time'} = $self->{api_client}->to_form_value($args{'end_time'});
    }
    
    # form params
    if ( exists $args{'fonenumber'} ) {
                $form_params->{'fonenumber'} = $self->{api_client}->to_form_value($args{'fonenumber'});
    }
    
    # form params
    if ( exists $args{'before_message'} ) {
                $form_params->{'before_message'} = $self->{api_client}->to_form_value($args{'before_message'});
    }
    
    # form params
    if ( exists $args{'after_message'} ) {
                $form_params->{'after_message'} = $self->{api_client}->to_form_value($args{'after_message'});
    }
    
    # form params
    if ( exists $args{'max_members'} ) {
                $form_params->{'max_members'} = $self->{api_client}->to_form_value($args{'max_members'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2013', $response);
    return $_response_object;
}

#
# update_conference_0
#
# Update Conference
# 
# @param string $id Conference id (required)
# @param string $label Label of conference (optional)
# @param DateTime $start_time Start time and date of conference (optional)
# @param DateTime $end_time End time and date of conference (optional)
# @param BigDecimal $fonenumber Fonenumber to use for conference (optional)
# @param string $before_message Message to play before conference start time (optional)
# @param string $after_message Message to play after conference end time (optional)
# @param Number $max_members Maximum number of allowed conference attendees (optional)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Conference id',
        required => '1',
    },
    'label' => {
        data_type => 'string',
        description => 'Label of conference',
        required => '0',
    },
    'start_time' => {
        data_type => 'DateTime',
        description => 'Start time and date of conference',
        required => '0',
    },
    'end_time' => {
        data_type => 'DateTime',
        description => 'End time and date of conference',
        required => '0',
    },
    'fonenumber' => {
        data_type => 'BigDecimal',
        description => 'Fonenumber to use for conference',
        required => '0',
    },
    'before_message' => {
        data_type => 'string',
        description => 'Message to play before conference start time',
        required => '0',
    },
    'after_message' => {
        data_type => 'string',
        description => 'Message to play after conference end time',
        required => '0',
    },
    'max_members' => {
        data_type => 'Number',
        description => 'Maximum number of allowed conference attendees',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_conference_0' } = { 
    	summary => 'Update Conference',
        params => $params,
        returns => 'InlineResponse2013',
        };
}
# @return InlineResponse2013
#
sub update_conference_0 {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling update_conference_0");
    }

    # parse inputs
    my $_resource_path = '/conferences/{id}';

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
    if ( exists $args{'label'} ) {
                $form_params->{'label'} = $self->{api_client}->to_form_value($args{'label'});
    }
    
    # form params
    if ( exists $args{'start_time'} ) {
                $form_params->{'start_time'} = $self->{api_client}->to_form_value($args{'start_time'});
    }
    
    # form params
    if ( exists $args{'end_time'} ) {
                $form_params->{'end_time'} = $self->{api_client}->to_form_value($args{'end_time'});
    }
    
    # form params
    if ( exists $args{'fonenumber'} ) {
                $form_params->{'fonenumber'} = $self->{api_client}->to_form_value($args{'fonenumber'});
    }
    
    # form params
    if ( exists $args{'before_message'} ) {
                $form_params->{'before_message'} = $self->{api_client}->to_form_value($args{'before_message'});
    }
    
    # form params
    if ( exists $args{'after_message'} ) {
                $form_params->{'after_message'} = $self->{api_client}->to_form_value($args{'after_message'});
    }
    
    # form params
    if ( exists $args{'max_members'} ) {
                $form_params->{'max_members'} = $self->{api_client}->to_form_value($args{'max_members'});
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
    my $_response_object = $self->{api_client}->deserialize('InlineResponse2013', $response);
    return $_response_object;
}

1;
