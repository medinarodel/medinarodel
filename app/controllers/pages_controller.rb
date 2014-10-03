class PagesController < ApplicationController
  def home
  end

  def slack

    render json: params
  end
end