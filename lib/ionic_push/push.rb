module IonicPush
  module Push
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def notification(tokens, notification_params)
        notification = Notification.new(tokens, notification_params)
        req_push = IonicPush::Request.new(@configuration, notification.body)

        req_push.send
      end
    end

    class Notification
      def initialize(tokens, notification)
        @tokens = tokens
        @notification = notification
        @options = {}
      end

      def body
        @options.merge!(device_tokens)
        @options.merge!(notification)
      end

      def device_tokens
        { tokens: @tokens }
      end

      def notification
        @options[:notification] = {
          title: @notification[:title],
          message: @notification[:message],
          android: {
            icon: "https://pbs.twimg.com/profile_images/617058765167329280/9BkeDJlV.png"
          }
        }
      end
    end
  end
end
