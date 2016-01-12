class HomeController < ApplicationController

  def show
    @quote = SwansonService.new.random_quote
  end
end
