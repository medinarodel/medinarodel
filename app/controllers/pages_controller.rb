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
end