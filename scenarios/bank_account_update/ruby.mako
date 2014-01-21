% if mode == 'definition':
Balanced::BankAccount.save

% elif mode == 'request':
require 'balanced'
Balanced.configure('ak-test-3ndxkwi2d8Gb4E15emwEbwLkEE3K4naM')

bank_account = Balanced::BankAccount.fetch('/bank_accounts/BA6NK6SXBuIjbRn8NMhz1r1Z')
bank_account.meta = {
  'my-own-customer-id' => '12345',
  'facebook.user_id' => '0192837465',
  'twitter.id' => '1234987650'
}
bank_account.save

% elif mode == 'response':
#<Balanced::BankAccount:0x108710378
 @attributes=
  {"name"=>"Johann Bernoulli",
   "created_at"=>"2014-01-16T20:00:39.833799Z",
   "can_debit"=>false,
   "routing_number"=>"121000358",
   "account_number"=>"xxxxxx0001",
   "meta"=>
    {"my-own-customer-id"=>"12345",
     "facebook.user_id"=>"0192837465",
     "twitter.id"=>"1234987650"},
   "account_type"=>"checking",
   "fingerprint"=>
    "5f0ba9fa3f1122ef13b944a40abfe44e7eba9e16934e64200913cb4c402ace14",
   "links"=>{"customer"=>nil, "bank_account_verification"=>nil},
   "id"=>"BA6NK6SXBuIjbRn8NMhz1r1Z",
   "href"=>"/bank_accounts/BA6NK6SXBuIjbRn8NMhz1r1Z",
   "updated_at"=>"2014-01-16T20:00:43.501174Z",
   "can_credit"=>true,
   "bank_name"=>"BANK OF AMERICA, N.A."},
 @hyperlinks=
  {"customer"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "bank_account_verification"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "credits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "bank_account_verifications"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>,
   "debits"=>
    #<Proc:0x0000000108697e28/lib/balanced/utils.rb:6>}>

% endif
