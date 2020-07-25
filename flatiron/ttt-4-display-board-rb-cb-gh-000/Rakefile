# This is just an example and should be removed from this lab.

require 'pry'
require 'require_all'

task :console do
  require_all "./config" if Dir.exists?("./config")
  require_all "./app" if Dir.exists?("./app")
  require_all "./lib" if Dir.exists?("./lib")
  require_all "./*.rb" if Dir.entries(".").include?(/\.rb/)

  Pry.start
end