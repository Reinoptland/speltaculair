class GamesController < ApplicationController
  def index
    @games = Game.all
  end
  def show
    @game = Game.find(params[:id])
  end
  def edit
    @game = Game.find(params[:id])
  end
  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    redirect_to @game
  end
  def new
    @game = Game.new
  end
  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to @game
  end
end


private

  def game_params
    params.require(:game).permit(:title, :description, :maxplayercount, :released_in, :gametype)
  end
