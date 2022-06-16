class Chamber < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :sondes, dependent: :destroy
end
