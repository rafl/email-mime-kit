package Email::MIME::Kit::Role::Component;
use Moose::Role;

our $VERSION = '0.001';

=head1 NAME

Email::MIME::Kit::Role::Component - things that are kit components

=cut

has kit => (
  is  => 'ro',
  isa => 'Email::MIME::Kit',
  required => 1,
  weak_ref => 1,
);

no Moose::Role;
1;
