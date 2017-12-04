class PagesController < ApplicationController
  def index
    @pacts = Pact.all
  end
end
