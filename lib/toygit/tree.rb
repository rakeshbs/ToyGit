require_relative 'hashable.rb'
require_relative 'tree_node.rb'

module ToyGit
  class Tree < Hashable
    attr_reader :children

    def initialize(children:)
      @children = SortedList.new(array: children)
    end

    def add(name:, hash_id:)
      node = TreeNode.new(name: name, hash_id: hash_id)
      @children.push(node)
    end
  end
end
