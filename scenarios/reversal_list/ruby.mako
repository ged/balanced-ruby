% if mode == 'definition':
Balanced::Reversal.all

% else:
require 'balanced'
Balanced.configure('ak-test-2ficCWmYvpRBBSzC7Me62ZTX0Y2DPGjgt')

reversals = Balanced::Reversal.all
% endif
