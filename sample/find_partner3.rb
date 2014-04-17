require_relative '../lib/soshisoai'
require 'logger'

class MyApp
  $logger = Logger.new('log_file.log')
  def self.logger
  $logger.debug('Soshisoai3')
  file_path = File.expand_path('../../spec/fixtures/soshisoai3.txt', __FILE__)

  myarr1 = Soshisoai.parse_file(file_path)
  myarr2 = Soshisoai.get_combi(myarr1)
  myarr3 = Soshisoai.flat_arr(myarr2)
  myarr4 = Soshisoai.eliminate_duplicate(myarr3)
  myarr5 = Soshisoai.swap_male(myarr4)
  myarr6 = Soshisoai.find_match(myarr5)
  myarr7 = Soshisoai.delete_same_suffix(myarr6)
  myarr8 = Soshisoai.delete_same_prefix(myarr7)
  $logger.debug(myarr8)
  end
end

MyApp.logger
