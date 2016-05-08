require 'spec_helper'

describe IonicPush::Push::Notification do
  describe '#body' do
    let!(:notification) do
      notification_body = { title: 'My Title', message: 'My Message' }
      IonicPush::Push::Notification.new(%w(my tokens), notification_body)
    end

    let!(:fail_notification) {
      IonicPush::Push::Notification.new(%w(my tokens), nil)
    }

    it 'raise an error when notification is not a hash' do
      expect {  fail_notification.body }.to raise_error(ArgumentError)
    end

    it 'returns a hash' do
      expect(notification.body).to be_a_kind_of(Hash)
    end

    it 'includes a notification body' do
      notification_body = { title: 'My Title', message: 'My Message' }
      expect(notification.body).to include(notification: notification_body)
    end

    it 'includes a device tokens' do
      tokens = { tokens: %w(my tokens) }
      expect(notification.body).to include(tokens)
    end
  end

end
