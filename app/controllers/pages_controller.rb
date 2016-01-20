class PagesController < ApplicationController
  def home
    respond_to do |format|
      format.html
      format.json {render json: Visit.first.to_json}
    end
  end

  def views
    @visits = Visit.all
  end

  def randomizer
    @teams = params[:teams].to_s.split(',').shuffle
    @player1 = 'Team A'
    @player2 = 'Team B'


    if @teams.count > 2 
      @player1 = @teams[0]
      @player2 = @teams[1]
    end

    render json: {
      player1: @player1,
      player2: @player2
    }
  end
end