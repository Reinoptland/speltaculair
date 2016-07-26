require 'rails_helper'

describe "Navigating to games listing" do
  it "allows navigation from the detail page to the listing page" do
    game = Game.create(game_attributes)

    visit game_url(game)

    click_link "All Games"

    expect(current_path).to eq(games_path)
  end
end

  describe "Navigating to game details" do
    it "allows navigation from the listing page to the details page" do
      game = Game.create(game_attributes)

      visit games_url

      click_link game.title

      expect(current_path).to eq(game_path(game))
    end
end
