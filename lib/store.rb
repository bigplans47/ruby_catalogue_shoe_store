class Store < ActiveRecord::Base
  has_many :catalogues
  has_many :shoes, through: :catalogues
  validates(:name, :presence => true)
  before_save(:cap_first_letter)

  private

  def cap_first_letter
    self.name=(name.split(' ').map {|x| x.capitalize}.join(' '))
  end
end
