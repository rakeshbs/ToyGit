module ToyGit
  class Commit
    attr_reader :message, :hash_root

    def initialize(message:, hash_root:)
      @message = message
      @hash_root = hash_root
    end

  end
end
