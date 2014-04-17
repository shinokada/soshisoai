require 'spec_helper'

describe Soshisoai do
  context 'soshisoai.txt' do
    let(:target_file) do
      File.expand_path('../../fixtures/soshisoai.txt', __FILE__)
    end

    before do
      @my_arr = Soshisoai.parse_file(target_file)
      @my_arr1 = Soshisoai.parse_file(target_file)
      @my_arr2 = Soshisoai.get_combi(@my_arr1)
      @arr2 = ['Ac', 'Ac', 'Aa', 'Ba', 'Bb']
      @my_arr3 = Soshisoai.flat_arr(@my_arr2)
      @my_arr4 = Soshisoai.swap_male(@my_arr3)
      @my_arr5 = Soshisoai.find_match(@my_arr4)
    end

    specify { expect(Soshisoai.get_combi(@my_arr1)).to eq ['Ac,Ab,Aa', 'Ba,Bb,Bd', 'Ca,Cc,Cb', 'Dd,Da,Dc', 'aA,aC,aD', 'bD,bA,bB', 'cB,cA,cC', 'dD,dC,dA']  }

    specify { expect(Soshisoai.flat_arr(@my_arr2)).to eq ['Ac', 'Ab', 'Aa', 'Ba', 'Bb', 'Bd', 'Ca', 'Cc', 'Cb', 'Dd', 'Da', 'Dc', 'aA', 'aC', 'aD', 'bD', 'bA', 'bB', 'cB', 'cA', 'cC', 'dD', 'dC', 'dA'] }

    specify { expect(Soshisoai.eliminate_duplicate(@arr2)).to eq ['Aa', 'Ba', 'Bb'] }

    specify { expect(Soshisoai.swap_male(@my_arr3)).to eq ['cA', 'bA', 'aA', 'aB', 'bB', 'dB', 'aC', 'cC', 'bC', 'dD', 'aD', 'cD', 'aA', 'aC', 'aD', 'bD', 'bA', 'bB', 'cB', 'cA', 'cC', 'dD', 'dC', 'dA'] }

    specify { expect(Soshisoai.find_match(@my_arr4)).to eq ['cA', 'bA', 'aA', 'bB', 'aC', 'cC', 'dD', 'aD'] }

    specify { expect(Soshisoai.delete_same_suffix(@my_arr5)).to eq ['cA', 'bB', 'aC', 'dD'] }
  end

  context 'soshisoai2.txt' do
    let(:target_file) do
      File.expand_path('../../fixtures/soshisoai2.txt', __FILE__)
    end

    before do
      @my_arr = Soshisoai.parse_file(target_file)
      @my_arr1 = Soshisoai.parse_file(target_file)
      @my_arr2 = Soshisoai.get_combi(@my_arr1)
      @arr2 = ['Ac', 'Ac', 'Aa', 'Ba', 'Bb']
      @my_arr3 = Soshisoai.flat_arr(@my_arr2)
      @my_arr4 = Soshisoai.swap_male(@my_arr3)
      @my_arr5 = Soshisoai.find_match(@my_arr4)
      @my_arr6 = Soshisoai.delete_same_suffix(@my_arr5)
    end


    specify { expect(Soshisoai.get_combi(@my_arr1)).to eq ['Ac,Aa,Ab', 'Bc,Bf,Ba', 'Cf,Cc,Cb', 'Dd,Dd,Dd', nil, 'Fe,Fc,Fa', 'aA,aD,aF', 'bC,bB,bA', 'cD,cA,cC', 'dA,dA,dB', 'eC,eA,eE', 'fD,fB,fA'] }

    specify { expect(Soshisoai.flat_arr(@my_arr2)).to eq ['Ac', 'Aa', 'Ab', 'Bc', 'Bf', 'Ba', 'Cf', 'Cc', 'Cb', 'Dd', 'Dd', 'Dd', 'Fe', 'Fc', 'Fa', 'aA', 'aD', 'aF', 'bC', 'bB', 'bA', 'cD', 'cA', 'cC', 'dA', 'dA', 'dB', 'eC', 'eA', 'eE', 'fD', 'fB', 'fA'] }

    specify { expect(Soshisoai.swap_male(@my_arr3)).to eq ['cA', 'aA', 'bA', 'cB', 'fB', 'aB', 'fC', 'cC', 'bC', 'dD', 'dD', 'dD', 'eF', 'cF', 'aF', 'aA', 'aD', 'aF', 'bC', 'bB', 'bA', 'cD', 'cA', 'cC', 'dA', 'dA', 'dB', 'eC', 'eA', 'eE', 'fD', 'fB', 'fA'] }
  
    specify { expect(Soshisoai.find_match(@my_arr4)).to eq ['cA', 'aA', 'bA', 'fB', 'cC', 'bC', 'dD', 'aF', 'dA'] }
  
    specify { expect(Soshisoai.delete_same_suffix(@my_arr5)).to eq ['cA', 'fB', 'cC', 'dD', 'aF'] }
 
    specify { expect(Soshisoai.delete_same_prefix(@my_arr6)).to eq ['cA', 'fB', 'dD', 'aF'] }
  end

end
