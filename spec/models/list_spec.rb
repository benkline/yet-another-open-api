require 'rails_helper'

RSpec.describe List, type: :model do
  it "has a valid factory" do
    expect(build(:list)).to be_valid
  end

  let(:user) { create(:user) }
  let(:list) { create(:list, user: user) }

  it { expect(list).to have_attribute(:user_id) }
  it { expect(list).to have_attribute(:title) }
  it { expect(list).to have_attribute(:description) }
  it { expect(list).to have_attribute(:emoji) }
  it { expect(user).to have_attribute(:created_at) }
  it { expect(user).to have_attribute(:updated_at) }

end
