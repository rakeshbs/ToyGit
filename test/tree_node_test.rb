require_relative './test_helper.rb'
require_relative '../lib/tree_node.rb'

module ToyGit
  class TestTreeNode < Minitest::Test

    def setup
      @tree_node = TreeNode.new(name: "ABC", hash_id: "ASVSDSD")
    end

    def test_tree_node_can_be_created
      assert TreeNode.new(name: "", hash_id: "")
    end

    def test_tree_node_is_hashable
      assert TreeNode.ancestors.include?(Hashable)
    end

    def test_tree_node_has_name_accessor
      assert @tree_node.name
    end

    def test_tree_node_has_hash_id_accessor
      assert @tree_node.name
    end

  end
end
