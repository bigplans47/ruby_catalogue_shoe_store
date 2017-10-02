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

describe(Store) do
  it("validates presence of store name") do
    store = Store.new(:name => '')
    expect(store.save()).to(eq(false))
  end
end

describe (Shoe) do
  it 'validates presence of shoe brand' do
    shoe = Shoe.create(:brand => '', :price => 30)
    expect(shoe.save()).to(eq(false))
  end
end

describe(Store) do
  it("ensures the length of store name is at most 100 characters") do
    store = Store.new({:name => "a".*(101)})
    expect(store.save()).to(eq(false))
  end
end

describe(Shoe) do
  it("ensures the length of shoe brand is at most 100 characters") do
    shoe = Shoe.new({:brand => "a".*(101)})
    expect(shoe.save()).to(eq(false))
  end
end

describe(Store) do
  it("ensures the store name is unique") do
    store = Store.new({:name => "super duber"})
    store2 = Store.new({:name => "super duber"})
    expect(store2.save()).to(eq(false))
  end
end
