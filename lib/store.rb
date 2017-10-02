class Store < ActiveRecord::Base
  has_many :catalogues
  has_many :shoes, through: :catalogues
  validates(:name, :presence => true)
  validates(:name, {:presence => true, :length => {:maximum => 100}})
  # validates(:name, uniqueness: true)
  # validates(:name, uniqueness: {case_sensitive: false})
  before_save(:cap_first_letter)

  private

  def cap_first_letter
    self.name=(name.split(' ').map {|x| x.capitalize}.join(' '))
  end
end
