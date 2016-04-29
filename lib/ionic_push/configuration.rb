module IonicPush
  class Configuration
    attr_accessor :api_key, :profile

    def initialize
      @api_key = '<my-ionic-api-key>'
      @profile = '<my-ionic-profile>'
    end
  end
end
