class Soshisoai

  attr_reader :names, :choices, :arr, :combi

  def initialize 
    @arr=[]
    @names=[]
    @choices=[]
    # file = File.new('./data/soshisoai.txt', "r")
    # while (line = file.gets)
    #   name, choices= line.split(':')
    #   @names<<name
    #   @choices<<choices.strip
    # end
    file = File.new('soshisoai.txt', "r")
    file.each_line{|line| @arr<< line.strip }
    @arr.each { |item| name, choices =item.split(':')
                @names<<name
                @choices<<choices.strip
    }


  end

  def makecombination 

  end

  def combination
    
    @choices.split(",").map{ |letter| @name+letter}

  end


  def reversecombination
    
    @choices.split(",").map{ |letter| letter+@name}


  end


end
