require_relative './test_helper.rb'
require 'serializer.rb'
require 'digest'

module ToyGit
  class TestSerializer < Minitest::Test

    class TestClass
      def initialize(name:, age:)
        @name = name
        @age = age
      end
    end

    def setup
      @s = Serializer
      @object1 = TestClass.new(name: "AB", age: 10)
      @duplicate_object1 = TestClass.new(name: "AB", age: 10)
      @object2 = TestClass.new(name: "ABC", age: 1)
    end

    def test_serialize_method_exist
      assert @s.serialize(object: @object1)
    end

    def test_objects_with_same_data_has_same_serialization
      assert_equal @s.serialize(object: @object1), @s.serialize(object: @duplicate_object1)
    end

    def test_objects_with_different_data_has_different_serialization
      refute_equal @s.serialize(object: @object1), @s.serialize(object: @object2)
    end

  end
end

