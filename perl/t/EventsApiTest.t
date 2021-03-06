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

use_ok('WWW::SwaggerClient::EventsApi');

my $api = WWW::SwaggerClient::EventsApi->new();
isa_ok($api, 'WWW::SwaggerClient::EventsApi');

#
# create_event test
#
{
    my $id = undef; # replace NULL with a proper value
    my $organizer_contact_id = undef; # replace NULL with a proper value
    my $start_time = undef; # replace NULL with a proper value
    my $end_time = undef; # replace NULL with a proper value
    my $title = undef; # replace NULL with a proper value
    my $attendees = undef; # replace NULL with a proper value
    my $description = undef; # replace NULL with a proper value
    my $location = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $reschedule_count = undef; # replace NULL with a proper value
    my $result = $api->create_event(id => $id, organizer_contact_id => $organizer_contact_id, start_time => $start_time, end_time => $end_time, title => $title, attendees => $attendees, description => $description, location => $location, status => $status, reschedule_count => $reschedule_count);
}

#
# create_event_1 test
#
{
    my $id = undef; # replace NULL with a proper value
    my $organizer_contact_id = undef; # replace NULL with a proper value
    my $start_time = undef; # replace NULL with a proper value
    my $end_time = undef; # replace NULL with a proper value
    my $title = undef; # replace NULL with a proper value
    my $attendees = undef; # replace NULL with a proper value
    my $description = undef; # replace NULL with a proper value
    my $location = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $reschedule_count = undef; # replace NULL with a proper value
    my $result = $api->create_event_1(id => $id, organizer_contact_id => $organizer_contact_id, start_time => $start_time, end_time => $end_time, title => $title, attendees => $attendees, description => $description, location => $location, status => $status, reschedule_count => $reschedule_count);
}

#
# delete_event test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_event(id => $id);
}

#
# delete_event_2 test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->delete_event_2(id => $id);
}

#
# get_event test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_event(id => $id);
}

#
# get_event_3 test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->get_event_3(id => $id);
}

#
# get_events test
#
{
    my $result = $api->get_events();
}

#
# get_events_4 test
#
{
    my $result = $api->get_events_4();
}

#
# update_event test
#
{
    my $id = undef; # replace NULL with a proper value
    my $organizer_contact_id = undef; # replace NULL with a proper value
    my $start_time = undef; # replace NULL with a proper value
    my $end_time = undef; # replace NULL with a proper value
    my $title = undef; # replace NULL with a proper value
    my $description = undef; # replace NULL with a proper value
    my $location = undef; # replace NULL with a proper value
    my $attendees = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $reschedule_count = undef; # replace NULL with a proper value
    my $result = $api->update_event(id => $id, organizer_contact_id => $organizer_contact_id, start_time => $start_time, end_time => $end_time, title => $title, description => $description, location => $location, attendees => $attendees, status => $status, reschedule_count => $reschedule_count);
}

#
# update_event_5 test
#
{
    my $id = undef; # replace NULL with a proper value
    my $organizer_contact_id = undef; # replace NULL with a proper value
    my $start_time = undef; # replace NULL with a proper value
    my $end_time = undef; # replace NULL with a proper value
    my $title = undef; # replace NULL with a proper value
    my $description = undef; # replace NULL with a proper value
    my $location = undef; # replace NULL with a proper value
    my $attendees = undef; # replace NULL with a proper value
    my $status = undef; # replace NULL with a proper value
    my $reschedule_count = undef; # replace NULL with a proper value
    my $result = $api->update_event_5(id => $id, organizer_contact_id => $organizer_contact_id, start_time => $start_time, end_time => $end_time, title => $title, description => $description, location => $location, attendees => $attendees, status => $status, reschedule_count => $reschedule_count);
}


1;
