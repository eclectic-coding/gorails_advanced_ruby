# load "./concerns/authentication.rb"

# Load will load file multiple times
$LOAD_PATH.unshift("./concerns")
# load "authentication.rb"
# load "authentication.rb"

# Require, keeps track, and only loads once
# require "authentication"
# require "authentication"

# Load or require executes code immediately
# Autoload predefines ... does not run until needed
# autoload :Authentication, "authentication.rb"

# File accessed with constant, but keeps track, loads once
Authentication
Authentication
