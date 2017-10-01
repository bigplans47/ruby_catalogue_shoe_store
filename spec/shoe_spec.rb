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
