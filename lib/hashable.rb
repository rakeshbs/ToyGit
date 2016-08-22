require_relative 'hasher.rb'
require_relative 'serializer.rb'

module ToyGit
  class Hashable
    def hash_id
      Hasher.generate(object: self, serializer:Serializer)
    end
  end
end
