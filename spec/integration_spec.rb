require('spec_helper')

describe 'ability to add, update, delete and list shoe stores', {:type => :feature} do
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

describe 'ability to add and and list shoes and show price of the shoe in currency format', {:type => :feature} do
  it 'takes the user to homepage where they do all the following add, update, delete and list shoe stores' do
    visit '/'
    click_button('Create Shoes Here')
    fill_in('shoe_brand', :with => 'nike')
    fill_in('shoe_price', :with => '50')
    click_button('Create Shoe')
    expect(page).to have_content('$50.00')


    # click_button('Create Store')
    # expect(page).to have_content('Store1')
    # click_link('Store1')
    # click_button('Click Here to Edit Store Name')
    # fill_in('new_store_name', :with => 'store2')
    # click_button('Update Name')
    # visit '/'
    # expect(page).to have_content('Store2')
    # click_link('Store2')
    # click_button('Delete Store')
    # expect(page).to have_no_content('Store2')
  end
end
