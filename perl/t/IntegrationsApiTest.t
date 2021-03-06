=begin comment

FoneStorm API 2.4.0 (Thunder)

FracTEL's Middleware API

OpenAPI spec version: 2.4.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::IntegrationsApi');

my $api = WWW::SwaggerClient::IntegrationsApi->new();
isa_ok($api, 'WWW::SwaggerClient::IntegrationsApi');

#
# get_integrations test
#
{
    my $result = $api->get_integrations();
}

#
# get_integrations_1 test
#
{
    my $result = $api->get_integrations_1();
}


1;
