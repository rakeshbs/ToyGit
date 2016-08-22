require_relative './test_helper.rb'
require_relative '../lib/hasher.rb'
require_relative '../lib/blob.rb'
require_relative '../lib/serializer.rb'
require_relative '../lib/hashable.rb'
require 'digest'

module ToyGit
  class BlobTest < Minitest::Test

    def setup
      @blob1 = Blob.new(content:"ABC")
      @duplicate_blob1 = Blob.new(content:"ABC")
      @blob2 = Blob.new(content:"ABD")
    end

    def test_can_create_blob
      assert Blob.new(content:"")
    end

    def test_blob_subclasses_hashable
      assert Blob.ancestors.include?(Hashable)
    end

    def test_stores_content
      assert_equal Blob.new(content:"ABC").content, "ABC"
    end

  end
end
