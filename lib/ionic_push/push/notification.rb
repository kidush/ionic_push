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
        @options.merge!(device_tokens)
        @options.merge!(notification)
      end

      private

      def device_tokens
        { tokens: @tokens }
      end

      def notification
        @options[:notification] = {
          title: @notification[:title],
          message: @notification[:message]
        }
      end
    end
  end
end
