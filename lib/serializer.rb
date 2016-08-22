module Toygit
  class Serializer
    def self.serialize(object1)
      Marshal.dump(object1)
    end
  end
end
