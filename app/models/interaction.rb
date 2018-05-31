class Interaction < ApplicationRecord
  belongs_to :session
  has_many :meanings
end
