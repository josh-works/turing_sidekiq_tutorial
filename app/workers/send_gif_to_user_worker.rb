class SendGifToUserWorker
  include Sidekiq::Worker

  def perform(email, thought)
    logger.debug "SendGifToUserWorker debug"
    UserNotifier.send_randomness_email(email, thought).deliver_now
  end
end
