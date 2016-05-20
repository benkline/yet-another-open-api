require 'rails_helper'

RSpec.describe Item, type: :model do
  it "has a valid factory" do
    expect(build(:item)).to be_valid
  end

  let(:user) { create(:user) }
  let(:list) { create(:list, user: user) }
  let(:item) { create(:item, list: list) }

  it "is associated with a list_id" do
    expect(item).to have_attribute(:list_id)
  end

  it "has a title " do
    expect(item).to have_attribute(:title)
  end

  it "has a description" do
    expect(item).to have_attribute(:description)
  end

  it "was created at" do
    expect(user).to have_attribute(:created_at)
  end

  it "was updated at" do
    expect(user).to have_attribute(:updated_at)
  end

end
