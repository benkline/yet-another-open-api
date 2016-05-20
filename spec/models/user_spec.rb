require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  let(:user) { create(:user) }

  it { expect(user).to have_attribute(:name) }
  it { expect(user).to have_attribute(:email) }
  it { expect(user).to have_attribute(:password) }
  it { expect(user).to have_attribute(:bio) }
  it { expect(user).to have_attribute(:created_at) }
  it { expect(user).to have_attribute(:updated_at) }

end
