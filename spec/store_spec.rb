require('spec_helper')

describe (Store) do
  describe('#store') do
    it('adds a store to a shoe') do
      store = Store.create(:name => 'downtown_store')
      shoe1 = Shoe.create(:brand => 'nike', :price => '$50.00')
      shoe2 = Shoe.create(:brand => 'adidas', :price => '$40.00')
      store.shoes.push(shoe1)
      store.shoes.push(shoe2)
      expect(store.shoes).to eq([shoe1, shoe2])
    end

  end

end


# describe(Shoe) do
#   it { should have_many(:stores) }
# end
