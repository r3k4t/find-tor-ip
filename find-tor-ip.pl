use strict;


print '
____________       _________   ________                 _______________ 
___  __/__(_)____________  /   ___  __/_____________    ____  _/__  __ \
__  /_ __  /__  __ \  __  /    __  /  _  __ \_  ___/     __  / __  /_/ /
_  __/ _  / _  / / / /_/ /     _  /   / /_/ /  /        __/ /  _  ____/ 
/_/    /_/  /_/ /_/\__,_/      /_/    \____//_/         /___/  /_/      
                                                                                               
                                                                       
                Author : Rahat Khan Tusar(rkt)
                Github : https://github.com/r3k4t                                                                              

';


use LWP::UserAgent;
my $rkt = LWP::UserAgent->new;
$rkt->proxy([qw / http https /] => 'socks://localhost:9050'); 
$rkt->cookie_jar({});
my $response = $rkt->get('https://ident.me/ip');
print 'Your Tor Network IP Address is:';

print   $response->content;

