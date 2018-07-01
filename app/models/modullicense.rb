class Modullicense < ApplicationRecord
  belongs_to :license
  belongs_to :submodule
end
