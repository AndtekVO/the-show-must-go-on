class Meaning < ApplicationRecord
  belongs_to :interaction
  
  validates :meaning, uniqueness: true
end
