class JokeService
  attr_accessor :data

  def initialize
    self.data = [MonkeyUserService, BeLikeBillService].sample.output
  end

  def result
    {
      "attachments": [
        {
          "pretext": data.title,
          "author_name": data.provier,
          "title": data.title,
          "title_link": data.link,
          "text": data.alt,
          "image_url": data.img,
          "footer": data.provider,
          "footer_icon": data.provider_logo,
          "ts": Time.now.to_i
        }
      ]
    }
  end
end
