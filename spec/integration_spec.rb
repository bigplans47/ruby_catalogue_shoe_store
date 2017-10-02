require('spec_helper')

describe 'ability to add, update, delete and list shoe stores, criteria 1', {:type => :feature} do
  it 'takes the user to homepage where they do all the following add, update, delete and list shoe stores' do
    visit '/'
    fill_in('store_name', :with => 'store1')
    click_button('Create Store')
    expect(page).to have_content('Store1')
    click_link('Store1')
    click_button('Click Here to Edit Store Name')
    fill_in('new_store_name', :with => 'store2')
    click_button('Update Name')
    visit '/'
    expect(page).to have_content('Store2')
    click_link('Store2')
    click_button('Delete Store')
    expect(page).to have_no_content('Store2')
  end
end

describe 'ability to add and and list shoes and show price of the shoe in currency format, criteria 2 and 3, 8', {:type => :feature} do
  it 'takes the user to homepage where they do all the following add, update, delete and list shoe stores' do
    visit '/'
    click_button('Create Shoes Here')
    fill_in('shoe_brand', :with => 'nike')
    fill_in('shoe_price', :with => '50')
    click_button('Create Shoe')
    expect(page).to have_content('$50.00')
  end
end

describe 'ability to to be able to add existing shoe brands to a store to show where they are sold, criteria 4, associate the same brand of shoes with multiple stores, criteria 5, see all of the brands a store sells on the individual store page, criteria 6', {:type => :feature} do
  it 'sets up store2 and store3 and shoe "Nike" which is then assigned to be sold in Store2' do
    visit '/'
    fill_in('store_name', :with => 'store1')
    click_button('Create Store')
    expect(page).to have_content('Store1')
    click_link('Store1')
    click_button('Click Here to Edit Store Name')
    fill_in('new_store_name', :with => 'store2')
    click_button('Update Name')
    visit '/'
    expect(page).to have_content('Store2')
    fill_in('store_name', :with => 'store3')
    click_button('Create Store')
    expect(page).to have_content('Store3')
    click_button('Create Shoes Here')
    fill_in('shoe_brand', :with => 'Nike')
    fill_in('shoe_price', :with => '50')
    click_button('Create Shoe')
    visit '/'
    click_link('Store2')
    click_button('Click Here to See or Edit Shoes sold in Store')
    select "Nike", :from => "shoes_in_store"
    click_button('Update Shoes available in this store')
    expect(page).to have_content('$50.00')
    visit '/'
    click_link('Store3')
    click_button('Click Here to See or Edit Shoes sold in Store')
    select "Nike", :from => "shoes_in_store"
    click_button('Update Shoes available in this store')
    expect(page).to have_content('$50.00')
  end
end
