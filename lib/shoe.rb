class Shoe < ActiveRecord::Base
  has_many :catalogues
  has_many :stores, through: :catalogues 
end
