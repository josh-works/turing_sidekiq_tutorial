class UserNotifier < ActionMailer::Base
  default :from => 'gob@example.com'

  def send_randomness_email(email, thought)
    @email = email
    @thought_image = GiphyService.new.search(thought)
    sleep 5 # this is for demonstration purposes of feeling the pain of a long page load.
    mail( :to => @email,
    :subject => 'Here is your randomness email of awesome.' )
  end
end
