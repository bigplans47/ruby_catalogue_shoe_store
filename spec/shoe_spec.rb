require('spec_helper')
describe (Store) do
  it('makes the first letter a capital of the store') do
    store = Store.create(:name => 'suburb store')
    # binding.pry
    expect(store.name()).to(eq('Suburb Store'))
  end
end

describe (Shoe) do
  it('makes the first letter a capital of the sshoe') do
    shoe = Shoe.create(:brand => 'adidas super', :price => 30)
    # binding.pry
    expect(shoe.brand()).to(eq('Adidas Super'))
  end
end

describe (Shoe) do
  it('makes the price standard $0.00 format') do
    shoe = Shoe.create(:brand => 'adidas super', :price => 30)
    money1 = Money.new(1000, "USD")
    # binding.pry
    # expect(30).to(eq(30.00))
    expect(shoe.price()).to(eq('$30.00'))
  end
end
