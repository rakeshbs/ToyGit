require_relative './test_helper.rb'
require 'merkle_tree_generator.rb'
require 'hasher.rb'
require 'serializer.rb'

module ToyGit
  class TestMerkleTreeGenerator < Minitest::Test

    def setup
      intermediate = Hasher.generate(object: "1", serializer:Serializer) +
             Hasher.generate(object: "2", serializer:Serializer)
      @final_hash = Hasher.generate(object: intermediate, serializer: Serializer)
      @directory_hash = {}

    end

    def test_responds_to_generate
      MerkleTreeGenerator.respond_to?(:generate)
    end

    def test_generates_correct_tree
      data_source = lambda do |x|

      end

    end

  end
end
