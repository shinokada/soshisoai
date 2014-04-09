require './soshisoai1.rb'

myarr = Soshisoai.new ('./soshisoai2.txt')

myarr1 = myarr.arr
myarr2 = myarr.getcombi(myarr1)
myarr3 = myarr.flatarr(myarr2)
myarr4 = myarr.swapmale(myarr3)
myarr5 = myarr.findmatch(myarr4)
myarr6 = myarr.deletesamesuffix(myarr5)
puts myarr6
