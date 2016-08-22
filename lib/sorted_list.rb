module ToyGit
  class SortedList < Array
    def initialize(array:)
      array.each { |x| self.push(x) }
    end

    def push(object)
      index_for_insertion = find_index_for_inserting(object)
      self.insert(index_for_insertion, object)
    end

    def find_index_for_inserting(object)
      index = 0
      while (index < self.length)
        current = self[index]
        break if object < current
        index += 1
      end
      index
    end
  end
end
