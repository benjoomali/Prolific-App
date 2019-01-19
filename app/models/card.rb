class Card < ApplicationRecord
  acts_as_list scope: :list
  belongs_to :list
  #cards belong to list, they use that list as scope

  validates :name, presence: true
end
