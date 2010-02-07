module Wow
  module IntegerExtensions
    def gold
      self * 10000
    end

    def silver
      self * 100
    end

    def copper
      self
    end
  end

  # From: http://stackoverflow.com/questions/798710/how-to-turn-a-ruby-hash-into-http-params
  # Thanks Juliem
  module HashExtensions
    def to_query
      params = ''
      stack = []

      each do |k, v|
        if v.is_a?(Hash)
          stack << [k,v]
        elsif v.is_a?(Array)
          stack << [k,Hash.from_array(v)]
        else
          params << "#{k}=#{v}&"
        end
      end

      stack.each do |parent, hash|
        hash.each do |k, v|
          if v.is_a?(Hash)
            stack << ["#{parent}[#{k}]", v]
          else
            params << "#{parent}[#{k}]=#{v}&"
          end
        end
      end

      params.chop!
      params
    end

    def self.from_array(array = [])
      h = Hash.new
      array.size.times do |t|
        h[t] = array[t]
      end
      h
    end
  end
end

class Fixnum
  include Wow::IntegerExtensions
end

class Bignum
  include Wow::IntegerExtensions
end

class Hash
  include Wow::HashExtensions
end