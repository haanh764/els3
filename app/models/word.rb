class Word < ActiveRecord::Base
  has_many :lessons
  has_many :categories, through: :lessons
end
