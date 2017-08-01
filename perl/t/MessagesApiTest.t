=begin comment

FracTEL API 2.1.0

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.1.0

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

use_ok('WWW::SwaggerClient::MessagesApi');

my $api = WWW::SwaggerClient::MessagesApi->new();
isa_ok($api, 'WWW::SwaggerClient::MessagesApi');

#
# post_messages_receive test
#
{
    my $fonenumber = undef; # replace NULL with a proper value
    my $type = undef; # replace NULL with a proper value
    my $value = undef; # replace NULL with a proper value
    my $url_method = undef; # replace NULL with a proper value
    my $url_username = undef; # replace NULL with a proper value
    my $url_password = undef; # replace NULL with a proper value
    my $result = $api->post_messages_receive(fonenumber => $fonenumber, type => $type, value => $value, url_method => $url_method, url_username => $url_username, url_password => $url_password);
}

#
# post_messages_receive_notify test
#
{
    my $fonenumber = undef; # replace NULL with a proper value
    my $method = undef; # replace NULL with a proper value
    my $url = undef; # replace NULL with a proper value
    my $url_username = undef; # replace NULL with a proper value
    my $url_password = undef; # replace NULL with a proper value
    my $result = $api->post_messages_receive_notify(fonenumber => $fonenumber, method => $method, url => $url, url_username => $url_username, url_password => $url_password);
}

#
# post_messages_send test
#
{
    my $to = undef; # replace NULL with a proper value
    my $fonenumber = undef; # replace NULL with a proper value
    my $message = undef; # replace NULL with a proper value
    my $media_url = undef; # replace NULL with a proper value
    my $confirmation_url = undef; # replace NULL with a proper value
    my $confirmation_url_username = undef; # replace NULL with a proper value
    my $confirmation_url_password = undef; # replace NULL with a proper value
    my $require_confirmation = undef; # replace NULL with a proper value
    my $result = $api->post_messages_send(to => $to, fonenumber => $fonenumber, message => $message, media_url => $media_url, confirmation_url => $confirmation_url, confirmation_url_username => $confirmation_url_username, confirmation_url_password => $confirmation_url_password, require_confirmation => $require_confirmation);
}

#
# post_messages_send_notify test
#
{
    my $fonenumber = undef; # replace NULL with a proper value
    my $method = undef; # replace NULL with a proper value
    my $url = undef; # replace NULL with a proper value
    my $url_username = undef; # replace NULL with a proper value
    my $url_password = undef; # replace NULL with a proper value
    my $result = $api->post_messages_send_notify(fonenumber => $fonenumber, method => $method, url => $url, url_username => $url_username, url_password => $url_password);
}


1;
