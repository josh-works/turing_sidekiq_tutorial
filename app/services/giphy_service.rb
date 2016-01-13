class GiphyService
  def  initialize
    @connection = Hurley::Client.new("http://api.giphy.com/v1/gifs/")
  end

  def search(input)
    begin
      parse(get_search(input))["data"].first["images"]["fixed_height"]["url"]
    rescue
      parse(random)["data"]["image_url"]
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

  private

  def parse(data)
    JSON.parse(data.body)
  end

end
