require 'spec_helper'

describe IonicPush do
  describe '.configure' do
    it 'yields configuration object' do
      object_yielded = nil
      IonicPush.configure do |config|
        object_yielded = config
      end

      expect(object_yielded).to eq(IonicPush.configuration)
    end
  end
end
