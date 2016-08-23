require_relative './test_helper.rb'
require_relative '../lib/tree.rb'
require_relative '../lib/tree_node.rb'

module ToyGit
  class TestTree < Minitest::Test

    def setup
      @tree = Tree.new(children: [])
    end

    def test_tree_can_be_created
      assert Tree.new(children: [])
    end

    def test_tree_has_children_accessor
      assert @tree.children
    end

    def test_tree_can_add_new_children
      array_of_nodes = []
      t = Tree.new(children: [])
      1.upto(10) do |i|
        t.add(name: i.to_s, hash_id: i.to_s)
        node = TreeNode.new(name: i.to_s, hash_id: i.to_s)
        array_of_nodes << node
      end
      array_of_nodes.sort!
      assert_equal t.children, array_of_nodes
    end
  end
end
