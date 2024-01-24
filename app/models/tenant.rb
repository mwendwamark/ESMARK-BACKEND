class Tenant < ApplicationRecord
  has_secure_password
  belongs_to :house
end
