require 'rails_helper'

describe 'Viewing the details of one game' do

  it "shows the details" do

    game = Game.create(title: "The Hunger Games",
                      maxplayercount: 40,
                      gametype: "Playable Experience" ,
                      description: "May the odds be ever in your favor! You and your friends fight each other to the death!",
                      released_in: 2014)

    visit game_url(game)

    expect(page).to have_text(game.title)
    expect(page).to have_text(game.gametype)
    expect(page).to have_text(game.description[0...9])
    expect(page).to have_text(game.released_in)
  end

  it "shows '100+' players if the maxplayercount exceeds 100 players" do
    game = Game.create(game_attributes(maxplayercount: 120))

    visit game_url(game)

    expect(page).to have_text('100+')
  end

  it "shows the amount of players if the maxplayercount is less than 100 players" do
    game = Game.create(game_attributes(maxplayercount: 50))

    visit game_url(game)

    expect(page).to have_text('50')
  end

end
