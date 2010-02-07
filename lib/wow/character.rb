module Wow
  class Character < Base
    FILE_NAME = "character-sheet.xml"
    
    attr_accessor :name, :level
    
    def initialize(xml)
      self.name = (xml/:character).first["name"]
      self.level = (xml/:character).first["level"].to_i
    end
    
    def self.find(params = {})
      params[:r] = params.delete(:realm) || @@default_realm
      params[:cn] = params.delete(:name)
      
      self.new Wow::Parsers::XmlParser.parse("http://#{@@default_zone}.wowarmory.com/#{FILE_NAME}?#{params.to_query}")
    end
    
    def to_s
      name
    end
  end
end