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
package WWW::SwaggerClient::Object::Account;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::SwaggerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'Account',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'background_color' => {
    	datatype => 'string',
    	base_name => 'background_color',
    	description => 'Account background color.',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'Unique identifier of account.',
    	format => '',
    	read_only => '',
    		},
    'cdr_notify_url' => {
    	datatype => 'string',
    	base_name => 'cdr_notify_url',
    	description => 'Call dialing record callback URL.',
    	format => '',
    	read_only => '',
    		},
    'cdr_notify_method' => {
    	datatype => 'string',
    	base_name => 'cdr_notify_method',
    	description => 'Call dialing record callback URL method.',
    	format => '',
    	read_only => '',
    		},
    'cdr_notify_password' => {
    	datatype => 'string',
    	base_name => 'cdr_notify_password',
    	description => 'Call dialing record callback URL password.',
    	format => '',
    	read_only => '',
    		},
    'cdr_notify_username' => {
    	datatype => 'string',
    	base_name => 'cdr_notify_username',
    	description => 'Call dialing record callback URL username.',
    	format => '',
    	read_only => '',
    		},
    'font_family' => {
    	datatype => 'string',
    	base_name => 'font_family',
    	description => 'Account font family.',
    	format => '',
    	read_only => '',
    		},
    'primary_color' => {
    	datatype => 'string',
    	base_name => 'primary_color',
    	description => 'Account primary brand color.',
    	format => '',
    	read_only => '',
    		},
    'secondary_color' => {
    	datatype => 'string',
    	base_name => 'secondary_color',
    	description => 'Account secondary brand color.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'background_color' => 'string',
    'id' => 'string',
    'cdr_notify_url' => 'string',
    'cdr_notify_method' => 'string',
    'cdr_notify_password' => 'string',
    'cdr_notify_username' => 'string',
    'font_family' => 'string',
    'primary_color' => 'string',
    'secondary_color' => 'string'
} );

__PACKAGE__->attribute_map( {
    'background_color' => 'background_color',
    'id' => 'id',
    'cdr_notify_url' => 'cdr_notify_url',
    'cdr_notify_method' => 'cdr_notify_method',
    'cdr_notify_password' => 'cdr_notify_password',
    'cdr_notify_username' => 'cdr_notify_username',
    'font_family' => 'font_family',
    'primary_color' => 'primary_color',
    'secondary_color' => 'secondary_color'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
