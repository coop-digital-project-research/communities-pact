class PagesController < ApplicationController

  def index
    @pacts = Pact.all
  end

  def show
    render params[:id]
  end
end
