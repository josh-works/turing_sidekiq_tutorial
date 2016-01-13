class MailersController < ApplicationController
  def create
    UserNotifier.send_randomness_email(params[:mailers][:email], params[:mailers][:thought]).deliver_now

    redirect_to root_path
  end

end
