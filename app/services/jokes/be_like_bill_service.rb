class BeLikeBillService < JokeService
  LOGO = "http://belikebill.ga/blb.jpg"
  URI = "https://belikebill.ga"
  PROVIDER = "Be Like Bill"
  PROVIDER_URL = "https://belikebill.ga"

  attr_accessor :victim
  private_class_method :new

  def self.output opt = {}
    new(opt).send(:get_content)
  end

  private
    def initialize opt = {}
      self.victim = opt[:real_name]
    end

    def get_content
      img_url = "https://belikebill.ga/billgen-API.php?default=1&name=#{self.victim}"
      OpenStruct.new(
        title: "Sometimes, we should be nice, holaaa!",
        link: "https://belikebill.ga",
        img: img_url,
        alt: "",
        provider: PROVIDER,
        provider_url: PROVIDER_URL,
        provider_logo: LOGO
      )
    end
end
