require "onetwothreecheckout/version"
require "onetwothreecheckout/config"
require "onetwothreecheckout/request"

module Onetwothreecheckout
  extend Config

  AGENT_CODES = {
    'Bangkok Bank'                        => 'BBL',
    'Kasikorn Bank'                       => 'KBANK',
    'Krung Thai Bank'                     => 'KTB',
    'Siam Commercial Bank'                => 'SCB',
    'Thanachart Bank Public Company Ltd.' => 'TBANK',
    'United Overseas Bank'                => 'UOB',
    'CIMB Thai Bank Public Company Ltd.'  => 'CIMB',
    'TMB Bank Public Company Ltd.'        => 'TMB',
    'Bank of Ayutthaya'                   => 'BAY',
    '7 Eleven Counter Service'            => '7ELEVEN',
    'True Money Shop'                     => 'TRUEMONEY',
    'Tesco Lotus Counter Service'         => 'TESCO',
    'Just Pay by TOT public company Ltd.' => 'TOT',
    'Pay at Post'                         => 'PAP'
  }

  CHANNEL_CODES = { 
    'ATM Machine'                       => 'ATM',
    'Bank Branch Counter'               => 'BANKCOUNTER',
    'Internet Banking'                  => 'IBANKING',
    'Web Payment of Banking'            => 'WEBPAY',
    '7 Eleven, True Money, Tesco Lotus' => "OVERTHECOUNTER"
  }

  def self.root
    File.expand_path '../..', __FILE__
  end
end
