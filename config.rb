require 'json'

module Clif
  class Config
    def initialize(filename)
      @filename = filename
      @data = JSON.parse(IO.read(filename))
    end
    def [](key)
      @data[key]
    end
  end
end
