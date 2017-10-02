require('spec_helper')

describe (Store) do
  it('makes the first letter a capital of the store, criteria 7') do
    store = Store.create(:name => 'suburb store')
    # binding.pry
    expect(store.name()).to(eq('Suburb Store'))
  end
end

describe(Store) do
  it("validates presence of store name, criteria 9") do
    store = Store.new(:name => '')
    expect(store.save()).to(eq(false))
  end
end

describe(Store) do
  it("ensures the length of store name is at most 100 characters, criteria 11") do
    store = Store.new({:name => "a".*(101)})
    expect(store.save()).to(eq(false))
  end
end

describe(Store) do
  it("ensures the store name is unique, criteria 10") do
    store = Store.create({:name => "Blundstone"})
    store2 = Store.create({:name => "Blundstone"})
    expect(store2.save()).to(eq(false))
  end
end

describe(Shoe) do
  it { should have_many(:stores) }
end

describe(Store) do
  it { should have_many(:shoes)}
end

describe(Catalogue) do
  it { should belong_to(:shoe)}
  it { should belong_to(:store)}
end
