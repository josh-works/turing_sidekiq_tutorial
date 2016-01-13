class GiphyService
  def  initialize
    @connection = Hurley::Client.new("http://api.giphy.com/v1/gifs/")
  end

  def search(input)
    begin
      JSON.parse(get_search(input).body)["data"].first["images"]["fixed_height"]["url"]
    rescue
      JSON.parse(random.body)["data"]["image_url"]
    end
  end

  def get_search(input)
    @connection.query["q"] = input
    @connection.query["api_key"] = "dc6zaTOxFJmzC"
    @connection.get("search")
  end

  def random
    @connection.query["api_key"] = "dc6zaTOxFJmzC"
    @connection.get("random")
  end

end
