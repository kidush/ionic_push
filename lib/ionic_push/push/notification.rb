module IonicPush
  module Push
    class Notification
      attr_accessor :tokens, :notification

      def initialize(tokens, notification, icon = nil)
        @tokens = tokens
        @notification = notification
        @options = {}
        @icon = icon
      end

      def body
        raise ArgumentError, 'Notification params must be a Hash' unless @notification.respond_to?(:to_hash)
        device_tokens
        return notification_without_config_icon if @icon.nil?
        notification_with_config_icon
      end

      private
      def notification_with_config_icon
        @notification.merge!(android: { icon: @icon })
        @notification.merge!(ios: { icon: @icon })
        @options.merge!(notification: @notification)
      end

      def notification_without_config_icon
        @options.merge!(notification: @notification)
      end

      def device_tokens
        @options.merge!({ tokens: @tokens })
      end

    end
  end
end
