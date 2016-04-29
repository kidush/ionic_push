module IonicPush
  module Push

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def notification(tokens, notification = {})
        req_push = IonicPush::Request.new(@configuration, 
        {
          tokens: tokens,
          notification: {
            title: notification[:title],
            message: notification[:message]
          }
        })

        req_push.send
      end
    end

  end
end
