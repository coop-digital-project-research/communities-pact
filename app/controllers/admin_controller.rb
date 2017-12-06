class AdminController < ApplicationController
  layout 'admin'

  http_basic_authenticate_with name: "admin", password: Rails.application.secrets.admin_password

  def show
    @pact_members = PactMember.order('created_at ASC')
  end
end
