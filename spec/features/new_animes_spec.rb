require 'rails_helper'

RSpec.describe 'new anime page' do
 it 'displays correct fields to display animes' do

	visit '/animes/new'
	expect(page).to have_field("Name")

	
  end
end