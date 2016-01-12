class SwansonService

  def initialize
    @connection = Hurley::Client.new("https://ron-swanson-quotes.herokuapp.com/")
  end

  def random_quote
    JSON.parse(@connection.get("quotes").body)["quote"]
  end
end
