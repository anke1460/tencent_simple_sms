module TencentSimpleSms
  class Config
    class << self
      attr_accessor :app_id, :secret_id, :secret_key, :sign

      def configure
        yield self
      end

    end
  end
end
