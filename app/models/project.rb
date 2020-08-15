class Project < ApplicationRecord
  has_many :users
  belongs_to :favorite
  berongs_to :flow
  belongs_to :cost
end
