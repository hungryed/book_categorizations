require 'spec_helper'

describe Checkout do
  it { should validate_presence_of :reader }
  it { should validate_presence_of :book }
end
