=begin comment

FoneStorm API 2.2.0 (Breeze)

FracTEL's Middleware API

OpenAPI spec version: 2.2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the Swagger Codegen
# Please update the test cases below to test the model.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 2;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;


use_ok('WWW::SwaggerClient::Object::Email');

my $instance = WWW::SwaggerClient::Object::Email->new();

isa_ok($instance, 'WWW::SwaggerClient::Object::Email');

