% if mode == 'definition':
Balanced::BankAccount.find
% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

bank_account = Balanced::BankAccount.find('/bank_accounts/BA4pTirJaJ1A16Hku5z0OpIj')

% endif
