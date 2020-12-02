# tencent_simple_sms

基于腾讯云短信服务的简易发送短信Ruby gem

## 按照

Add this line to your application's Gemfile:

```ruby
gem 'tencent_simple_sms'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install tencent_simple_sms

## Usage

  #### 在config/initializers目录下添加配置文件tencent_simple_sms.rb

  ```ruby
  TencentSimpleSms.configure do |config|
    config.app_id = ''
    config.secret_id = ''
    config.secret_key = ''
    config.sign = ''
  end

  ```
  #### 发送短信, 支持支付多个手机号发送，一次最多支持[200个手机号](https://cloud.tencent.com/document/product/382/38778)

  ```ruby
  TencentSimpleSms.sender ['13111111111', '13111111112'], templ_id
  ```



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/tencent_simple_sms.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
