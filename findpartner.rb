require './soshisoai1.rb'

myarr = Soshisoai.new ('./soshisoai.txt')

myarr1 = myarr.arr
myarr2 = myarr.getcombi(myarr1)
myarr3 = myarr.flatarr(myarr2)
myarr4 = myarr.eliminateduplicate(myarr3)
myarr5 = myarr.swapmale(myarr4)
myarr6 = myarr.findmatch(myarr5)
myarr7 = myarr.deletesamesuffix(myarr6)
myarr8 = myarr.deletesameprefix(myarr7)
puts myarr8
