Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
$LOAD_PATH << File.expand_path('../../../lib', __FILE__)
require 'codebreaker'
# require 'rspec/expectations'