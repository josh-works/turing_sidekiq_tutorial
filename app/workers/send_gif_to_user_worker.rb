class SendGifToUserWorker
  include Sidekiq::Worker

  def perform(email, thought)
    UserNotifier.send_randomness_email(email, thought).deliver_now
  end
end
