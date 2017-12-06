class MembersController < ApplicationController

  def show
    @pact_member = PactMember.find_by!(member_slug: params[:id])
    @pact = @pact_member.pact
  end

  def new
    @original_pact_member = PactMember.find_by!(public_slug: params[:pact_id])
    @original_pact = @original_pact_member.pact
    @join_form = JoinForm.new
  end

  def create
    @original_pact_member = PactMember.find_by!(public_slug: params[:pact_id])
    @original_pact = @original_pact_member.pact
    @join_form = JoinForm.new(params.require(:pact).permit(:name, :email))
    if @join_form.valid?
      pact_member = PactCreator.join!(@original_pact_member, @join_form, source: request_source)
      redirect_to member_path(pact_member.member_slug)
    else
      render :new
    end
  end
end
