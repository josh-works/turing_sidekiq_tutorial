class MailersController < ApplicationController
  def create
    binding.pry
    UserNotifier.send_randomness_email(params[:mailers][:email], params[:mailers][:thought])



  end

end
