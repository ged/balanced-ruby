% if mode == 'definition':
Balanced::ApiKey.fetch
% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::ApiKey.fetch('/api_keys/AK6Ac9V3vfsOSGwL7ypnQp7k')
% elif mode == 'response':
#<Balanced::ApiKey:0x1086d8220
 @attributes=
  {"created_at"=>"2014-01-16T20:00:27.808324Z",
   "meta"=>{},
   "links"=>{},
   "id"=>"AK6Ac9V3vfsOSGwL7ypnQp7k",
   "href"=>"/api_keys/AK6Ac9V3vfsOSGwL7ypnQp7k"},
 @hyperlinks={}>

% endif
