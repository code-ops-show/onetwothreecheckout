require 'base64'
require 'openssl'
require 'rest-client'
require 'builder'
require 'hashie'

module Onetwothreecheckout
  class Request

    attr_accessor :data, :env, :digest

    ENDPOINT = {
      test: 'http://uat.123.co.th/payment/paywith123.aspx',
      live: ''
    }

    def initialize(data: {})
      raise "Merchant ID is nil" if Onetwothreecheckout::Config.merchant_id.nil?
      raise "Secret key is nil"  if Onetwothreecheckout::Config.secret_key.nil?

      @digest = OpenSSL::Digest.new('sha1')

      @data = data
      @env = Onetwothreecheckout::Config.env == 'production' ? :live : :test
    end

    def endpoint
      ENDPOINT[env]
    end

    def payload
      Base64.strict_encode64(build_request)
    end

  private

    def build_request
      final_hash = build_final_hash

      Builder::XmlMarkup.new.PaymentRequest do |p|
        final_hash.keys.each do |k|
          p.tag!(k, final_hash[k])
        end
      end
    end

    def build_final_hash
      data.merge({
        version: '1.1',
        merchantID: Onetwothreecheckout::Config.merchant_id,
        hashValue: calculate_hash_data_digest
      })
    end

    def calculate_hash_data_digest
      hash_data = [Onetwothreecheckout::Config.merchant_id, data[:InvoiceNo], data[:Amount]].join
      OpenSSL::HMAC.hexdigest(digest, Onetwothreecheckout::Config.secret_key, hash_data)
    end
  end 
end