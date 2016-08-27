require_relative './test_helper.rb'
require 'commit.rb'

module ToyGit
  class TestCommit < Minitest::Test

    def setup
      @commit =  Commit.new(message: "Test Message",
                            hash_root: "ABC",
                           )
    end

    def test_commit_can_be_created
      assert Commit.new(message: "Test Message",
                        hash_root: "ABC",
                       )
    end

    def test_commit_subclasses_hashable
      Commit.ancestors.include?(Hashable)
    end

    def test_commit_has_accessor_message
      assert @commit.message
    end

    def test_commit_hash_accessor_hash_root
      assert @commit.hash_root
    end

  end
end
