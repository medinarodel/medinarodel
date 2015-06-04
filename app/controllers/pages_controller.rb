class PagesController < ApplicationController
  def home
  end

  def views
    @visits = Visit.all
  end
end