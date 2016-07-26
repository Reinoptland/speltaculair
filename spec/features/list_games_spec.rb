require 'rails_helper'

describe 'Viewing the list of games' do

  it 'shows the games' do


    game1 = Game.create(game_attributes)

    game2 = Game.create(title: "Zombie Apocalypse!",
                      maxplayercount: 120,
                      gametype: "Playable Experience" ,
                      description: "Do you have what it takes to survive the end-times? Live off the land to survive or feed on other people as a zombie!",
                      released_in: 2013)

    game3 = Game.create(title: "A history of Whaling",
                      maxplayercount: 60,
                      gametype: "Educational Game" ,
                      description: "The sea provides a seemingly endless bounty to the men brave enough to hunt the great whales. But the sea is also unpredictable and dangerous. Will your whaling company succeed? Or will it go bust?",
                      released_in: 2012 )


    visit games_url

    expect(page).to have_text("3 Games")
    expect(page).to have_text(game1.title)
    expect(page).to have_text(game1.maxplayercount)
    expect(page).to have_text(game1.gametype)
    expect(page).to have_text(game1.description[0...9])
    expect(page).to have_text(game1.released_in)
    expect(page).to have_text(game2.title)
    expect(page).to have_text(game3.title)
  end

end
