class Comment < ApplicationRecord
  has_many :projects, dependent: :destroy
  
end
