use strict;
use warnings;
use Data::Dumper;

use Config::Simple;
use Encode;
use JSON;
use LWP::UserAgent;
use URI;

my $test_url = 'https://api.zaif.jp/api/1/ticker/btc_jpy';

my $ua = LWP::UserAgent->new;
$ua->parse_head(0);
$ua->timeout(10);
$ua->env_proxy;

my $response = $ua->get("$test_url");

if ($response->is_success) {
    print $response->content;  # or whatever
}
else {
    die $response->status_line;
}
