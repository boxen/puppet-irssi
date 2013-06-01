require 'spec_helper'

describe 'irssi' do
  let(:pre_condition) { "class homebrew {}" }

  it { should contain_class('irssi') }
  it { should contain_package('irssi') }
end
