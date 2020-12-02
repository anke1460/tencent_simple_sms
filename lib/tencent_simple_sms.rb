require 'net/http'
require 'securerandom'
require 'openssl'
require "base64"

require "tencent_simple_sms/version"
require "tencent_simple_sms/sms"
require "tencent_simple_sms/config"


module TencentSimpleSms
  class Error < StandardError; end

  class << self
    def configure(&block)
      Config.configure(&block)
    end
  end
end
