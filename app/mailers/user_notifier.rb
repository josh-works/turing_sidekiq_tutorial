class UserNotifier < ActionMailer::Base
  default :from => 'any_from_address@example.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_randomness_email(email, thought)
    binding.pry
    @email = email
    @thought = GiphyService.new.search(thought)
    mail( :to => @email,
    :subject => 'Here is your randomness email of awesome.' )
  end
end
