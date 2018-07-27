require 'test_helper'

class SendGifToUserWorkerTest < ActiveJob::TestCase\
  
  def setup
    Sidekiq::Worker.clear_all
  end
  
  test 'that email is sent' do
    SendGifToUserWorker.perform_async("test@test.com", "hello")
    # literally no idea what to assert here...
    # assert 
  end
  
  test 'that job is pushed to queue' do
    assert_equal 0, SendGifToUserWorker.jobs.size
    SendGifToUserWorker.perform_async("test@test.com", "hello")
    assert_equal 1, SendGifToUserWorker.jobs.size
  end
end
