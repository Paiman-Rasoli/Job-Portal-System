class UserAccount < ApplicationRecord
  belongs_to :UserType
  has_secure_password
end
