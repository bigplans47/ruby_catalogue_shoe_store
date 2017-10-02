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


#A user should be able to click on a project to see its detail. The detail page includes a form where the project can be updated. When the form is submitted, the user can be directed to either the home page or that project's detail page. (The test will work for either.)

# describe 'the project update path', {:type => :feature} do
#   it 'allows a user to change the name of the project' do
#     test_project = Project.new({:title => 'Teaching Kids to Code', :id => nil})
#     test_project.save
#     visit '/'
#     click_link('Teaching Kids to Code')
#     click_link('Edit Project')
#     fill_in('title', :with => 'Teaching Ruby to Kids')
#     click_button('Update Project')
#     expect(page).to have_content('Teaching Ruby to Kids')
#   end
# end

# A user should be able to nagivate to a project's detail page and delete the project. The user will then be directed to the index page. The project should no longer be on the list of projects.
#
# describe 'the project delete path', {:type => :feature} do
#   it 'allows a user to delete a project' do
#     test_project = Project.new({:title => 'Teaching Kids to Code', :id => nil})
#     test_project.save
#     id = test_project.id
#     visit "/projects/#{id}/edit"
#     expect(page).to have_content('Teaching Kids to Code')
#     click_button('Delete Project')
#     visit '/'
#     expect(page).not_to have_content("Teaching Kids to Code")
#   end
# end
#
# # The user should be able to click on a project detail page and see a list of all volunteers working on that project. The user should be able to click on a volunteer to see the volunteer's detail page.
#
# describe 'the volunteer detail page path', {:type => :feature} do
#   it 'shows a volunteer detail page' do
#     test_project = Project.new({:title => 'Teaching Kids to Code', :id => nil})
#     test_project.save
#     project_id = test_project.id.to_i
#     test_volunteer = Volunteer.new({:name => 'Jasmine', :project_id => project_id, :id => nil})
#     test_volunteer.save
#     visit "/projects/#{project_id}"
#     click_link('Jasmine')
#     fill_in('name', :with => 'Jane')
#     click_button('Update Volunteer')
#     expect(page).to have_content('Jane')
#   end
# end