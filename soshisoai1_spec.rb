require './spec_helper'
require './soshisoai1.rb'

myarr = Soshisoai.new ('./soshisoai.txt')
myarr1 = myarr.arr
myarr2 = myarr.get_combi(myarr1)
arr2 = ["Ac", "Ac", "Aa", "Ba", "Bb"]
myarr3 = myarr.flat_arr(myarr2)
myarr4 = myarr.swap_male(myarr3)
myarr5 = myarr.find_match(myarr4)

describe Soshisoai do

  specify{ expect(myarr.arr).to eq ["A:c,b,a", "B:a,b,d", "C:a,c,b", "D:d,a,c", "a:A,C,D", "b:D,A,B", "c:B,A,C", "d:D,C,A"] }
  
  specify{ expect(myarr.get_combi(myarr1)).to eq ["Ac,Ab,Aa", "Ba,Bb,Bd", "Ca,Cc,Cb", "Dd,Da,Dc", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC", "dD,dC,dA"] }
  
  specify{ expect(myarr.flat_arr(myarr2)).to eq ["Ac", "Ab", "Aa", "Ba", "Bb", "Bd", "Ca", "Cc", "Cb", "Dd", "Da", "Dc", "aA", "aC", "aD", "bD", "bA", "bB", "cB", "cA", "cC", "dD", "dC", "dA"]}

  specify{ expect(myarr.eliminate_duplicate(arr2)).to eq ["Aa", "Ba", "Bb"]}
  
  specify{ expect(myarr.swap_male(myarr3)).to eq ["cA", "bA", "aA", "aB", "bB","dB", "aC", "cC", "bC", "dD", "aD", "cD", "aA", "aC", "aD", "bD", "bA", "bB", "cB", "cA", "cC", "dD", "dC", "dA"]}
  
  specify{ expect(myarr.find_match(myarr4)).to eq ["cA", "bA", "aA", "bB", "aC", "cC", "dD", "aD"]}
  
  specify{ expect(myarr.delete_same_suffix(myarr5)).to eq ["cA", "bB", "aC", "dD"]}


end
