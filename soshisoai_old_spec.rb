require './spec_helper'
require './soshisoai.rb'
arr = Soshisoai.new().arr
arr2 = ["A:c,b,a", "B:a,b,d", "C:a,c,b", "D:d,a,c", "a:A,C,D", "b:D,A,B", "c:B,A,C", "d:D,C,A"]
arr3 = ["Ac,Ab,Aa", "Ba,Bb,Bd", "Ca,Cc,Cb", "Dd,Da,Dc", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC", "dD,dC,dA"] 
item = ["dD"]
arr4 = ["Ac,Ab,Aa", "Ba,Bb,Bd", "Ca,Cc,Cb", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC" ]
input = Soshisoai.new().getcombi(arr)
secondcol =  ["Ab,Aa", "Bb,Bd", "Cc,Cb", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC"]
column = ["cA", "aB", "aC", "dD", "aA", "bD", "cB", "dD"]

describe Soshisoai do

  specify{ expect(Soshisoai.new().arr).to eq ["A:c,b,a", "B:a,b,d", "C:a,c,b", "D:d,a,c", "a:A,C,D", "b:D,A,B", "c:B,A,C", "d:D,C,A"] }
  
  specify{ expect(arr).to eq ["A:c,b,a", "B:a,b,d", "C:a,c,b", "D:d,a,c", "a:A,C,D", "b:D,A,B", "c:B,A,C", "d:D,C,A"] }

  specify{ expect(Soshisoai.new().getcombi(arr)).to eq ["Ac,Ab,Aa", "Ba,Bb,Bd", "Ca,Cc,Cb", "Dd,Da,Dc", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC", "dD,dC,dA"] }
  
  specify{ expect(Soshisoai.new().getcolumn(input, 0)).to eq ["cA", "aB", "aC", "dD", "aA", "bD", "cB", "dD"]}
  specify{ expect(Soshisoai.new().findpair(column)).to eq ["dD"] }
  
  specify{ expect(Soshisoai.new().eliminate(arr3, item)).to eq  ["Ac,Ab,Aa", "Ba,Bb,Bd", "Ca,Cc,Cb", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC" ]}
  
  specify{ expect(Soshisoai.new().eliminatecol(arr4)).to eq ["Ab,Aa", "Bb,Bd", "Cc,Cb", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC"]}
  
  specify{ expect(Soshisoai.new().getcolumn(secondcol, 0)).to eq ["Ab,Aa", "Bb,Bd", "Cc,Cb", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC"]}
  
  specify{ expect(Soshisoai.new().findmatches(arr, 0)).to eq ["Ab,Aa", "Bb,Bd", "Cc,Cb", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC"]}
  
  
  
  
  
  # specify{ expect(Soshisoai.new().names).to eq ["A", "B", "C", "D", "a", "b", "c", "d"] }
  # specify{ expect(Soshisoai.new().choices).to eq ["c,b,a", "a,b,d", "a,c,b", "d,a,c", "A,C,D", "D,A,B", "B,A,C", "D,C,A"] }
  
  # specify{ expect(Soshisoai.new().combi).to eq ["Ac,Ab,Aa", "Ba,Bb,Bd", "Ca,Cc,Cb", "Dd,Da,Dc", "aA,aC,aD", "bD,bA,bB", "cB,cA,cC", "dD,dC,dA"] }
  
  # specify{ expect(Soshisoai.new().firsttwo).to eq ["Ac", "Ba", "Ca", "Dd", "aA", "bD", "cB", "dD"] }
  
  # specify{ expect(Soshisoai.new().firstnew).to eq ["cA", "aB", "aC", "dD", "aA", "bD", "cB", "dD"] }
  
  # specify{ expect(Soshisoai.new().matches).to eq ["dD"] }

end
