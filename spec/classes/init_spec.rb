require 'spec_helper'
describe 'perfprobes' do
  context 'with default values for all parameters' do
    it { should contain_class('perfprobes') }
  end
end
