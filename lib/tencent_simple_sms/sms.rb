module TencentSimpleSms
  class << self
    def sender(mobiles, templ_id)
      request = {}
      mobiles.each_with_index do |m, i|
        request["PhoneNumberSet.#{i}"] = "+86#{m}"
      end
      request['Action'] = 'SendSms'
      request['Region'] = ''
      request["Version"] = '2019-07-11'
      request["TemplateID"] = templ_id
      request['Sign'] = Config.sign
      request['SmsSdkAppid'] = Config.app_id
      request['Timestamp'] = Time.now.to_i
      request['Nonce'] = SecureRandom.random_number.to_s.slice(-10..-1)
      request['SecretId'] = Config.secret_id
      request['Signature'] = sig(request)
      http_post('https://sms.tencentcloudapi.com', request)
    end

    def http_post(url, postdata)
      Net::HTTP.post_form(URI(url),postdata).body
    end


    def params_to_string(params)
      params.sort.map { |item| item.join('=') }.join('&')
    end

    def sig(request)
      signature = params_to_string(request)
      signature = "POSTsms.tencentcloudapi.com/?" + signature
      digest = OpenSSL::Digest.new('sha1')
      Base64.encode64(OpenSSL::HMAC.digest(digest, Config.secret_key, signature))
    end
  end
end