module Onetwothreecheckout
  # change the config in an initializer like so

  # Twoctwop::Config.merchant_id = '111'
  # Twoctwop::Config.secret_key  = '12345678'

  # Or use the block

  # Twoctwop::Config.configure do |config|
  #   config.merchant_id = '111'
  #   config.secret_key  = '12345678'
  #   config.private_key = 'private key goes here'
  #   config.certificate = 'certifiate goes here'
  #   config.passphrase  = 'if private key has passphrase'
  # end

  module Config
    extend self

    attr_accessor :merchant_id, :secret_key, :private_key, :certificate, :passphrase

    def configure
      yield self  
    end

    def env
      @env ||= if defined? Rails
        Rails.env
      elsif ENV['RACK_ENV']
        ENV['RACK_ENV']
      else
        'development'
      end
    end
  end
end