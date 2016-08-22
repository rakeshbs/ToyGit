require_relative './test_helper.rb'
require_relative '../lib/sorted_list.rb'

module ToyGit
  class TestSortedList < Minitest::Test

    def setup
      @list = SortedList.new(array: [2,3,1])
      @sorted_list = [1,2,3]
      @pushed_list = SortedList.new(array: [])
      @pushed_list.push(3)
      @pushed_list.push(1)
      @pushed_list.push(2)
    end

    def test_create_sorted_list
      assert SortedList.new(array: [1,2,3])
    end

    def test_if_inherits_array
      assert SortedList.ancestors.include?(Array)
    end

    def test_if_list_is_sorted
      assert_equal @list, @sorted_list
    end

    def test_if_pushed_objects_in_list_are_sorted
      assert_equal @pushed_list, @sorted_list
    end

  end
end
