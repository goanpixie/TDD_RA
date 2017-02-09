require 'rails_helper'
RSpec.describe 'creating anime' do 
	it 'creates a new animes and redirectes it to animes page' do
		visit '/animes/new'
		fill_in "Name",with:"Naruto"
		click_button 'Submit'

		expect(current_path).to eq('/animes')
		expect(page).to have_text("Naruto")
	end
end