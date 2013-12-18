require 'spec_helper'

describe Book do
  it { should validate_presence_of :title }
  it { should validate_numericality_of :rating}

  it "should default favorite book to false" do
    book = FactoryGirl.create(:book)
    expect(book.favorite).to be_false
  end
end
