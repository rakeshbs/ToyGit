%w[
  blob
  commit
  hashable
  hasher
  merkle_tree_generator
  serializer
  sorted_list
  tree
  tree_node
].each { |file| require_relative "./toygit/#{file}.rb" }
