require './spec_helper'
require './soshisoai1.rb'
# require './soshisoai.txt'

myarr = Soshisoai.new ('./soshisoai2.txt')
myarr1 = myarr.arr
myarr2 = myarr.getcombi(myarr1)

# arr1 = Soshisoai.new().getcombi(arr)
arr2 = ["Ac", "Ac", "Aa", "Ba", "Bb"]
myarr3 = myarr.flatarr(myarr2)
myarr4 = myarr.swapmale(myarr3)
myarr5 = myarr.findmatch(myarr4)
# arr3 = Soshisoai.new().flatarr(arr1)
# arr4 = Soshisoai.new().swapmale(arr3)
# arr5 = Soshisoai.new().findmatch(arr4)
describe Soshisoai do

  specify{ expect(myarr.arr).to eq ["A:c,a,b", "B:c,f,a", "C:f,c,b", "D:d,d,d", "E:", "F:e,c,a", "a:A,D,F", "b:C,B,A", "c:D,A,C", "d:A,A,B", "e:C,A,E", "f:D,B,A"]}
  
  specify{ expect(myarr.getcombi(myarr1)).to eq ["Ac,Aa,Ab", "Bc,Bf,Ba", "Cf,Cc,Cb", "Dd,Dd,Dd", nil, "Fe,Fc,Fa", "aA,aD,aF", "bC,bB,bA", "cD,cA,cC", "dA,dA,dB", "eC,eA,eE", "fD,fB,fA"]}
  
  specify{ expect(myarr.flatarr(myarr2)).to eq ["Ac", "Aa", "Ab", "Bc", "Bf", "Ba", "Cf", "Cc", "Cb", "Dd", "Dd", "Dd", "Fe", "Fc", "Fa", "aA", "aD", "aF", "bC", "bB", "bA", "cD", "cA", "cC", "dA", "dA", "dB", "eC", "eA", "eE", "fD", "fB", "fA"]}

  # specify{ expect(myarr.eliminateduplicate(arr2)).to eq ["Aa", "Ba", "Bb"]}
  
  specify{ expect(myarr.swapmale(myarr3)).to eq ["cA", "aA", "bA", "cB", "fB", "aB", "fC", "cC", "bC", "dD", "dD", "dD", "eF", "cF", "aF", "aA", "aD", "aF", "bC", "bB", "bA", "cD", "cA", "cC", "dA", "dA", "dB", "eC", "eA", "eE", "fD", "fB", "fA"]}
  
  # specify{ expect(myarr.findmatch(myarr4)).to eq ["cA", "bA", "aA", "bB", "aC", "cC", "dD", "aD"]}
  
  # specify{ expect(myarr.deletesamesuffix(myarr5)).to eq ["cA", "bB", "aC", "dD"]}

  # specify{ expect(Soshisoai.new().flatarr(arr1)).to eq ["Ac", "Ab", "Aa", "Ba", "Bb", "Bd", "Ca", "Cc", "Cb", "Dd", "Da", "Dc", "aA", "aC", "aD", "bD", "bA", "bB", "cB", "cA", "cC", "dD", "dC", "dA"]}
 
  # specify{ expect(Soshisoai.new().eliminateduplicate(arr2)).to eq ["Aa", "Ba", "Bb"]}
  
  # specify{ expect(Soshisoai.new().swapmale(arr3)).to eq ["cA", "bA", "aA", "aB", "bB","dB", "aC", "cC", "bC", "dD", "aD", "cD", "aA", "aC", "aD", "bD", "bA", "bB", "cB", "cA", "cC", "dD", "dC", "dA"]}

  # specify{ expect(Soshisoai.new().findmatch(arr4)).to eq ["cA", "bA", "aA", "bB", "aC", "cC", "dD", "aD"]}

  # specify{ expect(Soshisoai.new().deletesamesuffix(arr5)).to eq ["cA", "bB", "aC", "dD"]}





end
