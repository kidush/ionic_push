module IonicPush
  module Push

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def push(tokens, message)
      end
    end

  end
end
