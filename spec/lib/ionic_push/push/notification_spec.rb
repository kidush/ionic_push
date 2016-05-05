require 'spec_helper'

describe IonicPush::Push::Notification do
  describe '#body' do
    before do
      @notification = IonicPush::Push::Notification.new(['my', 'tokens'], {title: 'My Title', message: 'My Message'})
    end

    it "returns a hash" do
      expect(@notification.body).to be_a_kind_of(Hash)
    end

    it "includes a notification body" do
      notification_body = { title: 'My Title', message: 'My Message'}
      expect(@notification.body).to include(notification: notification_body)
    end

    it "includes a device tokens" do
      tokens = { tokens: ['my', 'tokens'] }
      expect(@notification.body).to include(tokens)
    end
  end
end
