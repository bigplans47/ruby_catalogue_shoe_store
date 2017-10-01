class Shoe < ActiveRecord::Base
  has_many :catalogues
  has_many :stores, through: :catalogues
  before_save :cap_first_letter_shoe

  private

  def cap_first_letter_shoe
    self.brand=(brand.split(' ').map{|x| x.capitalize}.join(' '))
  end


end
