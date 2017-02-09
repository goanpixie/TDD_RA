require 'rails_helper'
RSpec.describe 'showing anime' do 
	it 'show a new anime which is created' do
		anime = Anime.create(name: "Naruto")
		visit "/animes/#{anime.id}"

		expect(page).to have_text(anime.name)
	end
end