class GifEmailSenderJob < ActiveJob::Base
  queue_as :default

  def perform(email, thought)
    UserNotifier.send_randomness_email(email, thought).deliver_now
  end
end
