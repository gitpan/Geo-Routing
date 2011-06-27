package Geo::Routing::Driver::OSRM::Route;
BEGIN {
  $Geo::Routing::Driver::OSRM::Route::AUTHORITY = 'cpan:AVAR';
}
BEGIN {
  $Geo::Routing::Driver::OSRM::Route::VERSION = '0.06';
}
use Any::Moose;
use warnings FATAL => "all";

with 'Geo::Routing::Role::Route';

1;
