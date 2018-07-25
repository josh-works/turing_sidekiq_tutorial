require 'test_helper'

class SendUserGifJobTest < ActiveJob::TestCase 
  test 'that email is sent' do
    SendUserGifJob.perform_now(args)
    # literally no idea what to assert here...
    # assert 
  end
  
end