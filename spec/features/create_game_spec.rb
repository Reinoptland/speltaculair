
require 'rails_helper'

describe "Creating a new Game" do
  it "saves the game and shows the new game's details" do
    visit games_url

    click_link 'Add New Game'

    expect(current_path).to eq(new_game_path)

    fill_in "Title", with: "New Game Title"
    fill_in "Description", with: "Superheroes saving the world from villains"
    fill_in "Released in", with: "2016"
    fill_in "Maxplayercount", with: "125"
    fill_in "Gametype", with: "Playable experience"

    click_button 'Create Game'

    expect(current_path).to eq(game_path(Game.last))

    expect(page).to have_text('New Game Title')
  end
end
