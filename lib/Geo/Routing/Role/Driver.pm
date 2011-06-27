package Geo::Routing::Role::Driver;
BEGIN {
  $Geo::Routing::Role::Driver::AUTHORITY = 'cpan:AVAR';
}
BEGIN {
  $Geo::Routing::Role::Driver::VERSION = '0.06';
}
use Any::Moose '::Role';
use warnings FATAL => "all";
use namespace::clean -except => "meta";

use WWW::Mechanize;

has _mech => (
    is            => 'ro',
    isa           => 'WWW::Mechanize',
    documentation => "Our instance of WWW::Mechanize",
    lazy_build    => 1,
);

sub _build__mech {
    my ($self) = @_;

    WWW::Mechanize->new(
        user_agent => __PACKAGE__,
    );
}

1;
