class List < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :public, inclusion: { in: [true] }, on: :update  

end


# validates :viewable, inclusion: { in: [true] }, on: :update #, if: :other_user?
# validates :public, inclusion: { in: [true] }, on: :update, unless: :list_owner?
#
# def list_owner?
#   list.user_id == user_id
# end
