class Shoe < ActiveRecord::Base
  has_many :catalogues
  has_many :stores, through: :catalogues
  validates(:brand, :presence => true)
  validates(:brand, {:presence => true, :length => {:maximum => 100}})
  before_save :cap_first_letter_shoe
  validates(:brand, uniqueness: true)

  private

  def cap_first_letter_shoe
    self.brand=(self.brand.split(' ').map{|x| x.capitalize}.join(' '))
  end

  def set_price_standard
    self.price
    # @price=self.price*100
    # money22=Money.new(@price, "USD")
    # moneyfinal=money22.format
    # @pricenew = moneyfinal
    # self.price=@pricenew
    # binding.pry
    # what is happening here is @pricenew is good but when set to self.price that is turning to 0

  end




end
