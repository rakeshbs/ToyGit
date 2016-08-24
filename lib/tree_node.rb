require_relative 'hashable.rb'

module ToyGit
  class TreeNode
    include Comparable
    attr_reader :name, :hash_id

    def initialize(name:,hash_id:)
      @name = name
      @hash_id = hash_id
    end

    def <=>(other)
      self.hash_id <=> other.hash_id
    end
  end
end
