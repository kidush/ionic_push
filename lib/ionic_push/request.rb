require 'httparty'

module IonicPush
  class Request
    include HTTParty

    base_uri IonicPush::BASE_URI

    def initialize(configuration, data)
      @configuration = configuration
      @data = data
      @options = {}
    end

    def send
      puts request_params
      self.class.post('/notifications', request_params)
    end

    private

    def headers
      @options[:headers] = content_type
      @options[:headers].merge!(authorization)
    end

    def content_type
      { 'Content-Type' => 'application/json' }
    end

    def authorization
      auth = "Bearer #{@configuration.api_key}"
      { 'Authorization' => auth }
    end

    def security_profile
      @data.merge!(profile: @configuration.profile)
    end

    def body
      @options.merge!(body: @data.to_json)
    end

    def request_params
      headers
      security_profile
      body
    end
  end
end
