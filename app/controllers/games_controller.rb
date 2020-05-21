class GamesController < ApplicationController
  #mostrar todos los juegos
  def index
    @games = Game.all
    render json: @games
  end

  #mostrar un solo juego por id
  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  #crear un nuevo juego
  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game
    else
      render json: @game.errors
    end
  end

  private
  def game_params
    params.require(:game).permit(:name, :genre, :price, :release_date, :company_id)
  end

  #eliminar juego
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    #head :no_content
    render json: { status: 'Successfully destroyed', data: @game }, status: :ok
  end
end
