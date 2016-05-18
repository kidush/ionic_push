module IonicPush
  module Push
    class Status
      attr_reader :created, :state, :uuid, :config, :app_id, :status
      def initialize(request)
        @request = request["data"]
        @created = @request["created"]
        @state = @request["state"]
        @uuid = @request["uuid"]
        @config = @request["config"]
        @app_id = @request["app_id"]
        @status = @request["status"]
      end

    end
  end
end
