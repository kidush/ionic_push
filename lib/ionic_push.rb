require "ionic_push/version"
require "ionic_push/configuration"
require "ionic_push/base_uri"
require "ionic_push/request"
require "ionic_push/push"

module IonicPush
  class << self
    attr_accessor :configuration
  end

  def self.setup
    @configuration ||= IonicPush::Configuration.new
    yield(configuration)
  end

  def self.push(users, message)
    request = IonicPush::Request.new(@configuration)
    request.push
  end
end
