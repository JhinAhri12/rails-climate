class Chamber < ApplicationRecord
  has_many :user_chambers, dependent: :destroy
end
