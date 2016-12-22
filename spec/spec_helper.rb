gem 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'rake/clean'
require 'rubygems'


$LOAD_PATH.unshift('.','contacts','spec')

class Object
  def _describe( test )
    puts "--- On saute les tests pour \"#{test}\" ---"
  end

  def _it( test )
    puts "--- On saute le test \"#{test}\" ---"
  end
end
