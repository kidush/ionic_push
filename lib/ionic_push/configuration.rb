module IonicPush
  class Configuration
    attr_accessor :api_key

    def initialize
      @api_key = '<my-ionic-api-key>'
    end
  end
end
