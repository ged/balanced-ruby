% if mode == 'definition':
Balanced::Card.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

card = Balanced::Card.fetch('/cards/CC7nvFZYLkB5xPZDrgwcdIO2')
card.meta = {
  'my-own-customer-id' => '12345',
  'facebook.user_id' => '0192837465',
  'twitter.id' => '1234987650'
}
card.save

% elif mode == 'response':
#<Balanced::Card:0x108773068
 @attributes=
  {"name"=>nil,
   "expiration_month"=>12,
   "cvv_result"=>nil,
   "created_at"=>"2014-01-16T20:01:11.658246Z",
   "number"=>"xxxxxxxxxxxx5100",
   "avs_street_match"=>nil,
   "cvv"=>nil,
   "meta"=>
    {"my-own-customer-id"=>"12345",
     "facebook.user_id"=>"0192837465",
     "twitter.id"=>"1234987650"},
   "avs_postal_match"=>nil,
   "cvv_match"=>nil,
   "brand"=>"MasterCard",
   "avs_result"=>nil,
   "is_verified"=>true,
   "fingerprint"=>
    "fc4ccd5de54f42a5e75f76fbfde60948440c7a382ee7d21b2bc509ab9cfed788",
   "links"=>{"customer"=>nil},
   "id"=>"CC7nvFZYLkB5xPZDrgwcdIO2",
   "href"=>"/cards/CC7nvFZYLkB5xPZDrgwcdIO2",
   "updated_at"=>"2014-01-16T20:01:15.714797Z",
   "expiration_year"=>2020},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "card_holds"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
