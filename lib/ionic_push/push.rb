module IonicPush
  module Push
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def notification(tokens, notification_params = {})
        notification = Notification.new(tokens, notification_params)
        req_push = IonicPush::Request.new(@configuration, notification.body)

        req_push.send
      end
    end

    class Notification
      def initialize(tokens, notification)
        @tokens = tokens
        @notification = notification
      end

      def body
        {
          tokens: @tokens,
          notification: {
            title: @notification[:title],
            message: @notification[:message]
          }
        }
      end
    end
  end
end
