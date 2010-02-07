module Wow
  module Parsers
    class XmlParser < Base
      def self.parse(url)
        puts "Opening #{url}"
        Hpricot.XML open(url, "User-Agent" => USER_AGENT)
      end
    end
  end
end