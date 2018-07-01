class Product < ApplicationRecord
  has_many :submodules
  has_many :licenses
end
