require 'digest'

module ToyGit
  class Hasher
    def self.generate(object:, serializer:)
      serialized = serializer.serialize(object)
      Digest::SHA256.hexdigest(serialized)
    end
  end
end
