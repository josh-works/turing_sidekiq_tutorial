class SendUserGifJob < ActiveJob::Base
  queue_as :default
  
  def perform(*args)
    # do da ting
  end
  
end