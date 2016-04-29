module IonicPush
  module Push

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def notification(tokens, notification = {})
        req = IonicPush::Request.new(@configuration, {
          notification: {
            title: notification[:title],
            message: notification[:message]
          }
        })

        req.go
      end
    end

  end
end
