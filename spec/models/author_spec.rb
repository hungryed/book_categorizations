require 'spec_helper'

describe Author do
  it { should validate_presence_of :last_name}
end
