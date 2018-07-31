class MailersController < ApplicationController
  
  def create
    logger.debug "about to call worker"
    # SendGifToUserWorker.new.perform(params[:mailers][:email], params[:mailers][:thought])
    SendGifToUserWorker.perform_async(params[:mailers][:email], params[:mailers][:thought])
    flash[:message] = "You did it! Email sent to #{params[:mailers][:email]}"
    redirect_to "/sent"
  end

  def sent
  end
end
