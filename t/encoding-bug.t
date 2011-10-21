use strict;
use warnings;
use utf8;

use Test::More tests => 4;
use lib 't/lib';

use Email::MIME::Kit;


my $kit = Email::MIME::Kit->new({
  source     => 't/kits/encoding-bug.mkit',
});

my $s = 'Pchnąć w tę łódź jeża lub ośm skrzyń fig. Verbüß öd\' Joch, kämpf Qual, zwing Styx! Příliš žluťoučký kůň úpěl ďábelské ódy. Съешь ещё этих мягких французских булок, да выпей же чаю. Voyez le brick géant que j’examine près du wharf';

my $email = $kit->assemble({
  sender_address => 'foo@example.com',
  subject   => 'Verbüß öd\' Joch, kämpf Qual, zwing Styx!',
  recipient => 'Example ěščř <recipient@xx.com>',
  content   => $s
});
