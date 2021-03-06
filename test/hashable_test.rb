require_relative './test_helper.rb'
require 'hasher.rb'
require 'serializer.rb'
require 'hashable.rb'
require 'digest'

module ToyGit
  class TestHashable < Minitest::Test

    class TestHashable < Hashable
        attr_accessor :prop1
    end

    def setup
      @hashable_ob1 = TestHashable.new
      @hashable_ob1.prop1 = 10

      @dup_hashable_ob1 = TestHashable.new
      @dup_hashable_ob1.prop1 = 10

      @hashable_ob2 = TestHashable.new
      @hashable_ob2.prop1 = 100

    end

    def test_if_hashable
      assert Hashable.new.hash_id
    end

    def test_if_objects_with_same_data_has_same_hash
      assert_equal @hashable_ob1.hash_id, @dup_hashable_ob1.hash_id
    end

    def test_equality_of_objects_with_same_data
      assert_equal @hashable_ob1, @dup_hashable_ob1
    end

    def test_if_objects_with_different_data_has_different_hash
      refute_equal @hashable_ob1.hash_id, @hashable_ob2.hash_id
    end

    def test_inequality_of_objects_with_different_data
      refute_equal @hashable_ob1, @hashable_ob2
    end

  end
end
