class PagesController < ApplicationController
  protect_from_forgery :except => [:slack]

  def home
  end

  def slack
    render text: ""
  end
end