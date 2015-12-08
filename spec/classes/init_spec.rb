require 'spec_helper'
describe 'pam_auth_update' do

  context 'with defaults for all parameters' do
    it { should contain_class('pam_auth_update') }
  end
end
