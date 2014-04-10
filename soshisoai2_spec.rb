require './spec_helper'
require './soshisoai1.rb'

describe Soshisoai do
  before do
    @my_arr = Soshisoai.new ('./soshisoai2.txt')
    @my_arr1 = @my_arr.initial_arr
    @my_arr2 = @my_arr.get_combi(@my_arr1)
    @my_arr3 = @my_arr.flat_arr(@my_arr2)
    @my_arr4 = @my_arr.swap_male(@my_arr3)
  end

  specify{ expect(@my_arr.initial_arr).to eq ["A:c,a,b", "B:c,f,a", "C:f,c,b", "D:d,d,d", "E:", "F:e,c,a", "a:A,D,F", "b:C,B,A", "c:D,A,C", "d:A,A,B", "e:C,A,E", "f:D,B,A"]}
  
  specify{ expect(@my_arr.get_combi(@my_arr1)).to eq ["Ac,Aa,Ab", "Bc,Bf,Ba", "Cf,Cc,Cb", "Dd,Dd,Dd", nil, "Fe,Fc,Fa", "aA,aD,aF", "bC,bB,bA", "cD,cA,cC", "dA,dA,dB", "eC,eA,eE", "fD,fB,fA"]}
  
  specify{ expect(@my_arr.flat_arr(@my_arr2)).to eq ["Ac", "Aa", "Ab", "Bc", "Bf", "Ba", "Cf", "Cc", "Cb", "Dd", "Dd", "Dd", "Fe", "Fc", "Fa", "aA", "aD", "aF", "bC", "bB", "bA", "cD", "cA", "cC", "dA", "dA", "dB", "eC", "eA", "eE", "fD", "fB", "fA"]}

  specify{ expect(@my_arr.swap_male(@my_arr3)).to eq ["cA", "aA", "bA", "cB", "fB", "aB", "fC", "cC", "bC", "dD", "dD", "dD", "eF", "cF", "aF", "aA", "aD", "aF", "bC", "bB", "bA", "cD", "cA", "cC", "dA", "dA", "dB", "eC", "eA", "eE", "fD", "fB", "fA"]}
  
end
