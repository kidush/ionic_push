module IonicPush
  class Configuration
    attr_accessor :api_key, :profile, :icon

    def initialize
      @api_key = '<my-ionic-api-key>'
      @profile = '<my-ionic-profile>'
      @icon = nil
    end
  end
end
