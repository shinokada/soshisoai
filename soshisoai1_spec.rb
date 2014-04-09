require './spec_helper'
require './soshisoai1.rb'

arr = Soshisoai.new().arr
arr1 = Soshisoai.new().getcombi(arr)
arr2 = ["Ac", "Ac", "Aa", "Ba", "Bb"]
arr3 = Soshisoai.new().flatarr(arr1)
arr4 = Soshisoai.new().swapmale(arr3)
arr5 = Soshisoai.new().findmatch(arr4)
describe Soshisoai do

  specify{ expect(Soshisoai.new().arr).to eq ["A:c,b,a", "B:a,b,d", "C:a,c,b", "D:d,a,c", "a:A,C,D", "b:D,A,B", "c:B,A,C", "d:D,C,A"] }
  
  specify{ expect(Soshisoai.new().getcombi(arr)).to eq ["Ac,Ab,Aa", "Ba,Bb,Bd", "Ca,Cc,Cb", "Dd,Da,Dc", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC", "dD,dC,dA"] }
  
  specify{ expect(Soshisoai.new().flatarr(arr1)).to eq ["Ac", "Ab", "Aa", "Ba", "Bb", "Bd", "Ca", "Cc", "Cb", "Dd", "Da", "Dc", "aA", "aC", "aD", "bD", "bA", "bB", "cB", "cA", "cC", "dD", "dC", "dA"]}
 
  specify{ expect(Soshisoai.new().eliminateduplicate(arr2)).to eq ["Aa", "Ba", "Bb"]}
  
  specify{ expect(Soshisoai.new().swapmale(arr3)).to eq ["cA", "bA", "aA", "aB", "bB","dB", "aC", "cC", "bC", "dD", "aD", "cD", "aA", "aC", "aD", "bD", "bA", "bB", "cB", "cA", "cC", "dD", "dC", "dA"]}

  specify{ expect(Soshisoai.new().findmatch(arr4)).to eq ["cA", "bA", "aA", "bB", "aC", "cC", "dD", "aD"]}

  specify{ expect(Soshisoai.new().deletesamesuffix(arr5)).to eq ["cA", "bB", "aC", "dD"]}





end
