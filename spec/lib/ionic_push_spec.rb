require 'spec_helper'

describe IonicPush do
  context "When a valid API Token and Security Profile is passed" do
    before do
      IonicPush.configure do |config|
        config.api_key = '<MY-API-KEY>'
        config.profile = '<MY-SECURITY-PROFILE>'
      end
    end

    it "has an API TOKEN" do
      expect(IonicPush.configuration.api_key).not_to eq(nil)
    end
  end

  context "When a API Token or profile does not passed or it is invalid." do
  end
end
