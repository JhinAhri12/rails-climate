class UserChamber < ApplicationRecord
  belongs_to :user
  belongs_to :chamber
end
