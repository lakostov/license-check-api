class License < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_many :modullicenses
end
