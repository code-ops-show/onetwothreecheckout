require "onetwothreecheckout/version"
require "onetwothreecheckout/config"
require "onetwothreecheckout/request"

module Onetwothreecheckout
  extend Config

  AGENT_CODES = {
    'BBL' => 'Bangkok Bank'
    'KBANK' => 'Kasikorn Bank'
    'KTB' => 'Krung Thai Bank'
    'SCB' => 'Siam Commercial Bank'
    'TBANK' => 'Thanachart Bank Public Company Ltd.'
    'UOB' => 'United Overseas Bank'
    'CIMB' => 'CIMB Thai Bank Public Company Ltd.'
    'TMB' => 'TMB Bank Public Company Ltd.'
    'BAY' => 'Bank of Ayutthaya'
    '7ELEVEN' => '7 Eleven Counter Service'
    'TRUEMONEY' => 'True Money Shop'
    'TESCO' => 'Tesco Lotus Counter Service'
    'TOT' => 'Just Pay by TOT public company Ltd.'
    'PAP' => 'Pay at Post'
  }

  def self.root
    File.expand_path '../..', __FILE__
  end
end
