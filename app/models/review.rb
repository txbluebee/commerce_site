class Review < ApplicationRecord
  belongs_to :product
  validates_presence_of :author, :content, :rating
  validates_length_of :content, :minimum => 50, :maximum => 250
  validates_inclusion_of :rating, :in => 1..5
end
