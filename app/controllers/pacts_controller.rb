require 'securerandom'

class PactsController < ApplicationController

  def new
    @pact_form = NewPactForm.new
  end

  def create
    @pact_form = NewPactForm.new(params.require(:pact).permit(:name, :email, :action, :people_requirement))

    if @pact_form.valid?
      pact_member = PactCreator.create!(@pact_form, source: request_source)
      redirect_to member_path(pact_member.member_slug)
    else
      render :new
    end
  end

  def show
    @pact_member = PactMember.find_by!(public_slug: params[:id])
    @pact = @pact_member.pact
    PactMember.increment_counter(:view_count, @pact_member.id)
  end

end
