class UserNotifier < ActionMailer::Base
  default :from => 'andrew@turing.io'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_randomness_email(email, thought)
    sleep 5
    @email = email
    @thought_image = GiphyService.new.search(thought)
    mail( :to => @email,
    :subject => 'Here is your randomness email of awesome.' )
  end
end
