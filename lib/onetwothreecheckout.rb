require "onetwothreecheckout/version"
require "onetwothreecheckout/config"
require "onetwothreecheckout/request"

module Onetwothreecheckout
 extend Config

  def self.root
    File.expand_path '../..', __FILE__
  end
end
