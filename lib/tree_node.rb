require_relative 'hashable.rb'

module ToyGit
  class TreeNode < Hashable

    attr_reader :name, :hash_id

    def initialize(name:,hash_id:)
      @name = name
      @hash_id = hash_id
    end
  end
end
