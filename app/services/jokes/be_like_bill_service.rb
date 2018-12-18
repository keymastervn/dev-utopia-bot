class BeLikeBillService < JokeService
  LOGO = "http://belikebill.ga/blb.jpg"
  URI = "https://belikebill.ga"
  PROVIDER = "Be Like Bill"
  PROVIDER_URL = "https://belikebill.ga"

  private_class_method :new

  def self.output
    new.send(:get_content)
  end

  private
    def initialize
      attr_reader :name, :sex
      self.name = "Dat"
      self.sex = "m"
    end

    def get_content
      img_url = "https://belikebill.ga/billgen-API.php?default=1&name=#{self.name}&sex=#{self.sex}"
      OpenStruct.new(
        title: "Sometimes, we should be nice, holaaa!",
        link: "",
        img: img_url,
        alt: "",
        provider: PROVIDER,
        provider_url: PROVIDER_URL,
        provider_logo: LOGO
      )
    end
end
