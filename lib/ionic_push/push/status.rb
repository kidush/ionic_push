module IonicPush
  module Push
    class Status
      def initialize(request)
        @request = request
      end

      def state
        @request["data"]["state"]
      end
    end
  end
end
