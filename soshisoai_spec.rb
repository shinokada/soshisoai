require './spec_helper'
require './soshisoai.rb'

describe Soshisoai do

  # specify{ expect(Soshisoai.new().names).to eq ["A", "B", "C", "D", "a", "b", "c", "d"] }
  specify{ expect(Soshisoai.new().arr).to eq ["A:c,b,a", "B:a,b,d", "C:a,c,b", "D:d,a,c", "a:A,C,D", "b:D,A,B", "c:B,A,C", "d:D,C,A"] }
  # specify{ expect(Soshisoai.new().choices).to eq ["c,b,a", "a,b,d", "a,c,b", "d,a,c", "A,C,D", "D,A,B", "B,A,C", "D,C,A"] }

  specify{ expect(Soshisoai.new().names).to eq ["A", "B", "C", "D", "a", "b", "c", "d"] }
  specify{ expect(Soshisoai.new().choices).to eq ["c,b,a", "a,b,d", "a,c,b", "d,a,c", "A,C,D", "D,A,B", "B,A,C", "D,C,A"] }

  # specify{ expect(Soshisoai.new('A','c,b,a').combination).to eq ["Ac", "Ab",  "Aa"] }


  # specify{ expect(Soshisoai.new('A','c,b,a').reversecombination).to eq ["cA", "bA",  "aA"] }


end
