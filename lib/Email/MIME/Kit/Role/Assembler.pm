package Email::MIME::Kit::Role::Assembler;
use Moose::Role;

with 'Email::MIME::Kit::Role::Component';

our $VERSION = '0.001';

requires 'assemble';

no Moose::Role;
1;
