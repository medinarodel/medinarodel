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
    @players = params[:players].to_s.split(',').shuffle.take(2)


    if @teams.count > 2 && @players.count.eql?(2)
      render json: {
        @players[0] => @teams[0],
        @players[1] => @teams[1]
      }
    else
      render json: {
        'mj' => 'CHI',
        'bird' => 'BOS'
      }
    end


  end
end