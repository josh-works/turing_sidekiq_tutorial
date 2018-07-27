class SendGifToUserWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do somethingit
  end
end
