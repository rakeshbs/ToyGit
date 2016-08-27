require_relative 'hasher.rb'
require_relative 'hashable.rb'

module ToyGit
  class Blob < Hashable
    attr_reader :content

    def initialize(content:)
      @content = content
    end
  end
end
