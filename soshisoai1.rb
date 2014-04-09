class Soshisoai

  attr_reader :arr, :matches, :combi

  def initialize 
    @arr=[]
    @matches=[]
    @combi = []
    file = File.new('soshisoai.txt', "r")
    file.each_line{|line| @arr<< line.strip }
  end

  def self.mypartner

  end

  def getcombi(arraylist)
    arraylist.map do |e|
      before, afters = e.split(":")
      afters.split(",").map{|after| "#{before}#{after}"}.join(",")
    end
  end

  def flatarr(arr)
    arr.join(",").gsub(/[,]/," ").split
  end

  def eliminateduplicate(arr)
    arr.find_all{ |e| arr.count(e) == 1 }    
  end

  def swapmale(arr)
    arr.map{|item| 
      if item[0] =~ /[A-Z]/
        item = item[1]+item[0]
      else
        item = item
      end
    }
  end

  def findmatch(arr)
    arr.find_all{ |e| arr.count(e) > 1}.uniq
  end

  def deletesamesuffix(arr)
    arr.group_by{|s| s[-1]}.values.map(&:first)
  end

end

