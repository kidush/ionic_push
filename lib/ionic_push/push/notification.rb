module IonicPush
  module Push
    class Notification
      attr_accessor :tokens, :notification

      def initialize(tokens, notification = nil)
        @tokens = tokens
        @notification = notification
        @options = {}
      end

      def body
        raise ArgumentError, 'Notification params must be a Hash' unless @notification.respond_to?(:to_hash)
        @options.merge!(device_tokens)
        @options.merge!(notification: notification)
      end

      private

      def device_tokens
        { tokens: @tokens }
      end
    end
  end
end
