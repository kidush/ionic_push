module IonicPush
  module Push
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def notification(tokens, notification_params)
        notification = IonicPush::Push::Notification.new(tokens, notification_params, @configuration.icon)
        req_push = IonicPush::Request.new(@configuration, notification.body)
        req_push.send
      end
    end

  end
end
