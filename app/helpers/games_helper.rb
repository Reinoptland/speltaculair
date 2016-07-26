module GamesHelper
  def format_player_count(game)
    if game.maxplayercount > 100
      content_tag("100+")
    else
      game.maxplayercount
    end
  end
end
