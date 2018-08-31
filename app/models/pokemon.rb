class Pokemon < ApplicationRecord
  has_many :annonces
  belongs_to :user
end
