class Store < ActiveRecord::Base
  has_many :catalogues
  has_many :shoes, through: :catalogues 
end
