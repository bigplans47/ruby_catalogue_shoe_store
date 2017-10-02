require('spec_helper')

describe (Shoe) do
  it('makes the first letter a capital of the shoe, criteria 7') do
    shoe = Shoe.create(:brand => 'adidas super', :price => 30)
    # binding.pry
    expect(shoe.brand()).to(eq('Adidas Super'))
  end
end

describe (Shoe) do
  it 'validates presence of shoe brand, criteria 9' do
    shoe = Shoe.create(:brand => '', :price => 30)
    expect(shoe.save()).to(eq(false))
  end
end

describe(Shoe) do
  it("ensures the length of shoe brand is at most 100 characters, criteria 11") do
    shoe = Shoe.new({:brand => "a".*(101)})
    expect(shoe.save()).to(eq(false))
  end
end

describe(Shoe) do
  it("ensures the shoe brand is unique, criteria 10") do
    shoe = Shoe.create({:brand => 'Blundstone', :price => 30})
    shoe2 = Shoe.create({:brand => 'Blundstone', :price => 30})
    expect(shoe2.save()).to(eq(false))
  end
end
