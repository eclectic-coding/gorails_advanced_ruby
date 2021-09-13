$LOAD_PATH.unshift("lib")
p $LOAD_PATH

require "another.rb"
# require "other.rb"

p __FILE__
p __dir__
