require './soshisoai1.rb'

myarr = Soshisoai.new ('./soshisoai.txt')

myarr1 = myarr.arr
myarr2 = myarr.get_combi(myarr1)
myarr3 = myarr.flat_arr(myarr2)
myarr4 = myarr.eliminate_duplicate(myarr3)
myarr5 = myarr.swap_male(myarr4)
myarr6 = myarr.find_match(myarr5)
myarr7 = myarr.delete_same_suffix(myarr6)
myarr8 = myarr.delete_same_prefix(myarr7)
puts myarr8
