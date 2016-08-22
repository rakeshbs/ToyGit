require_relative './test_helper.rb'
require_relative '../lib/hasher.rb'
require_relative '../lib/serializer.rb'
require_relative '../lib/hasher.rb'
require 'digest'

module ToyGit
  class TestHasher < Minitest::Test

    class TestClass
      def initialize(name:, age:)
        @name = name
        @age = age
      end
    end

    def setup
      @h = Hasher
      @s = Serializer
      @object1 = TestClass.new(name: "AB", age: 10)
      @duplicate_object1 = TestClass.new(name: "AB", age: 10)
      @object2 = TestClass.new(name: "ABC", age: 1)
    end

    def test_whether_generate_exists
      assert @h.generate(object: @object1, serializer: @s)
    end

    def test_objects_with_same_data_has_same_hash
      hash1 = @h.generate(object: @object1, serializer: @s)
      hash2 = @h.generate(object: @duplicate_object1, serializer: @s)
      assert_equal hash1, hash2
    end

    def test_objects_with_different_data_has_different_hash
      hash1 = @h.generate(object: @object1, serializer: @s)
      hash2 = @h.generate(object: @object2, serializer: @s)
      refute_equal hash1, hash2
    end

  end
end

