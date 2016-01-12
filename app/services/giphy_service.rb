class GiphyService
  def  initialize
    @connection = Hurley::Client.new("http://api.giphy.com/v1/gifs/")
  end

  def search(input)
    JSON.parse(get_search(input).body)["data"].first["images"]["fixed_height"]["url"]
  end

  def get_search(input)
    @connection.query["q"] = input
    @connection.query["api_key"] = "dc6zaTOxFJmzC"
    @connection.get("search")
  end

end
