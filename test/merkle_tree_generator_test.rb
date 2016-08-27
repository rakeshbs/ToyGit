require_relative './test_helper.rb'
require 'merkle_tree_generator.rb'

module ToyGit
  class TestMerkleTreeGenerator < Minitest::Test

    def setup

    end

    def test_responds_to_generate
      MerkleTreeGenerator.respond_to?(:generate)
    end

  end
end
