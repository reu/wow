module Wow
  class Base
    # To-do
    @@default_zone = "us"

    def self.default_realm=(realm)
      @@default_realm = realm
    end

    def self.default_zone=(zone)
      @@default_zone = zone
    end
  end
end