class Soshisoai

  attr_reader :names, :choices, :arr, :combi, :firsttwo, :firstnew, :matches

  def initialize 
    @arr=[]
    @names=[]
    @choices=[]
    @firsttwo=[]
    @matches=[]
    file = File.new('soshisoai.txt', "r")
    file.each_line{|line| @arr<< line.strip }
    @arr.each { |item| name, choices =item.split(':')
                @names<<name
                @choices<<choices.strip
    }

    @combi = @arr.map do |e|
      before, afters = e.split(":")
      afters.split(",").map{|after| "#{before}#{after}"}.join(",")
    end

    @firsttwo = @combi.map{ |item| item[0..1]}

    @firstnew = @firsttwo.map{|item| 
      if item[0] =~ /[A-Z]/
        item = item[1]+item[0]
      else
        item = item
      end
    }
    @matches << @firstnew.detect{ |e| @firstnew.count(e) > 1}


  end


  def combination
    
    @choices.split(",").map{ |letter| @name+letter}

  end


  def reversecombination
    
    @choices.split(",").map{ |letter| letter+@name}


  end


end
