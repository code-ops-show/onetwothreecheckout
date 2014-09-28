# Onetwothreecheckout

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'onetwothreecheckout'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install onetwothreecheckout

## Usage

First we need to create a request hash

```ruby
request_hash = { 
  'MessageID'    =>      '12345abcdef',            # unique message id
  'InvoiceNo'    =>      '00000900',               # unique invoice number
  'Amount'       =>      '000040000000',           # amount must have 12 digits
  'CurrencyCode' =>      'THB',                    # THB for thai baht (based on http://en.wikipedia.org/wiki/ISO_4217)
  'CountryCode'  =>      'THA',                    # THA for Thailand  (based on iso 3166 country code)
  'ProductDesc'  =>      'description of product', # Describe the product
  'PayerName'    =>      'Zack Siri',              # Name of the payer
  'PayerEmail'   =>      'zack@moxyst.com',        # Email of payer
  'PayerMobile'  =>      '0817773333',             # Mobile of payer
  'AgentCode'    =>      'BBL',                    # See Agent Codes Section in this README
  'ChannelCode'  =>      'ATM'                     # See Channel Codes Section in this README
}

request  = Onetwothreecheckout::Request.new(data: request_hash)
response = request.make_123_checkout_request! # this will make the request and return a response
```

### Agent Codes

```
BBL = Bangkok Bank
KBANK = Kasikorn Bank
KTB = Krung Thai Bank
SCB = Siam Commercial Bank
TBANK = Thanachart Bank Public Company Ltd.
UOB = United Overseas Bank
CIMB = CIMB Thai Bank Public Company Ltd.
TMB = TMB Bank Public Company Ltd.
BAY = Bank of Ayutthaya
7ELEVEN = 7 Eleven Counter Service
TRUEMONEY = True Money Shop
TESCO = Tesco Lotus Counter Service
TOT = Just Pay by TOT public company Ltd.
PAP = Pay at Post
```

### Channel Codes

```
ATM = ATM Machine
BANKCOUNTER = Bank Branch Counter
IBANKING = Internet Banking
WEBPAY = Web Payment of Banking
OVERTHECOUNTER = 7 Eleven, True Money, Tesco Lotus
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/onetwothreecheckout/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request