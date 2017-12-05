class PagesController < ApplicationController

  def index
    @pact_members = PactMember.all
  end

  def show
    render params[:id]
  end
end
