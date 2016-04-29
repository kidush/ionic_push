require "ionic_push/version"
require "ionic_push/configuration"
require "ionic_push/base_uri"
require "ionic_push/request"
require "ionic_push/push"

module IonicPush
  include IonicPush::Push
  class << self
    attr_accessor :configuration
  end

  def self.configure
    @configuration ||= IonicPush::Configuration.new
    yield(configuration)
  end

  def self.push(tokens, notification_params = {})
    notification(tokens, notification_params)
  end
end
