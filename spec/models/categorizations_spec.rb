require 'spec_helper'

describe Categorizations do
  it { should validate_presence_of :book }
  it { should validate_presence_of :category }

  let(:book) { FactoryGirl.create(:book) }
  let(:category) { FactoryGirl.create(:category) }

  it { should validate_uniqueness_of(book).scoped_to(category) }
end
