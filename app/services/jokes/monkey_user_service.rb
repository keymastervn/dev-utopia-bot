class MonkeyUserService < JokeService
  LOGO = "https://www.monkeyuser.com/assets/images/logo.svg"
  URI = "https://www.monkeyuser.com/feed.xml"
  PROVIDER = "Monkey User"
  PROVIDER_URL = "https://www.monkeyuser.com"

  private_class_method :new

  def self.output
    new.send(:get_content)
  end

  private
    def initialize
      attr_reader :feed
      self.feed = RSS::Parser.parse(open(URI), false)
    end

    def get_content
      random_idx = rand(feed.items.size)
      random_item = feed.items[random_idx]

      img_tag = Nokogiri::HTML(random_item.description).css("p").children.first
      img_url = img_tag.attributes["src"].value
      img_alt = img_tag.attributes["alt"].value
      OpenStruct.new(
        title: random_item.title,
        link: random_item.link,
        img: img_url,
        alt: img_alt,
        provider: PROVIDER,
        provider_url: PROVIDER_URL,
        provider_logo: LOGO
      )
    end
end
