class AdminController < ApplicationController
  def show
    @pact_members = PactMember.order('created_at ASC')
  end
end
