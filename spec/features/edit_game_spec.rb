require 'rails_helper'

describe 'Editing the details of one game' do

  it "allows the user to update the details of a game" do

    game = Game.create(game_attributes)

    visit game_url(game)

    click_link "Edit"

    expect(current_path).to eq(edit_game_path(game))

    expect(find_field("Title").value).to eq(game.title)

    fill_in 'Title', with: "Updated Game Title"

    click_button 'Update Game'

    expect(current_path).to eq(game_path(game))

    expect(page).to have_text('Updated Game Title')
  end

end
