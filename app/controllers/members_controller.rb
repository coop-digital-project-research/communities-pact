class MembersController < ApplicationController
  def show
    @pact_member = PactMember.find_by!(member_slug: params[:id])
    @pact = @pact_member.pact
  end
end
