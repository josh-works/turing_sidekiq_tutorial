class MailersController < ApplicationController
  def create
    UserNotifier.send_randomness_email(params[:mailers][:email], params[:mailers][:thought]).deliver_now
    flash[:message] = "You did it! Email sent to #{params[:mailers][:email]}"
    redirect_to "/sent"
  end

  def sent
  end
end
