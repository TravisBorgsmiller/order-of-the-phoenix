require 'rails_helper'

RSpec.describe 'As a user when visiting /' do
  describe 'If I select Gryffindor and click search' do
    it 'takes me to /search where I see info' do

      visit '/'
      expect(current_path).to eq('/')

      select "hogwarts_houses", :from => :house
      click_on 'Search For Members'
      expect(current_path).to eq('/search')

    end
  end
end












# As a user,
# When I visit "/"
# And I Select “Gryffindor” from the select field
# (Note: Use the existing select field)
# And I click "Search For Members“
# Then I should be on page “/search”
# Then I should see the total number of the order of the phoenix members that belong to Gryffindor. (i.e. 21)
# And I should see a list with the detailed information for the 21 members of the Order of the Phoenix for house Gryffindor.
# ​
# And for each of the members I should see:
# - The name of the member
# - The members role (if it exists)
# - The house the member belongs to
# - The Patronus of the member (if it exists)
