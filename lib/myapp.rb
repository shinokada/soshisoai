require 'logger'
require_relative 'soshisoai.rb'
##
# Test with fixtures/soshisoai files
class MyApp
  ##
  # Write the results in a log file
  def self.logger(filename)
    log_file = File.expand_path('./log_file.log')
    @logger = Logger.new(log_file)
    file_path = File.expand_path("../../spec/fixtures/#{filename}.txt", __FILE__) 
    @logger.debug('Soshisoai')
    myarr1 = Soshisoai.parse_file(file_path)
    myarr2 = Soshisoai.get_combi(myarr1)
    myarr3 = Soshisoai.flat_arr(myarr2)
    myarr4 = Soshisoai.eliminate_duplicate(myarr3)
    myarr5 = Soshisoai.swap_male(myarr4)
    myarr6 = Soshisoai.find_match(myarr5)
    myarr7 = Soshisoai.delete_same_suffix(myarr6)
    myarr8 = Soshisoai.delete_same_prefix(myarr7)
    @logger.debug(myarr8)
  end
end
