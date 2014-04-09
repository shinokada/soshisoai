class Soshisoai

  attr_reader :arr, :matches, :combi

  def initialize 
    @arr=[]
    @matches=[]
    @combi = []
    file = File.new('soshisoai.txt', "r")
    file.each_line{|line| @arr<< line.strip }
  end


  def findmatches(arr, start)
    input = getcombi(arr) 
    item = findpair(getcolumn(input, start))
    item1 = eliminate(input, item)
    # eliminate column, the first three letters
    secondcol = eliminatecol(item1)
    getcolumn(secondcol, start)
  end

  def getcombi(arraylist)
    arraylist.map do |e|
      before, afters = e.split(":")
      afters.split(",").map{|after| "#{before}#{after}"}.join(",")
    end
  end

  def getcolumn(input,start)        
    finish = start + 1 
    column = input.map{ |item| item[start..finish]}
    .map{|item| 
      if item[0] =~ /[A-Z]/
        item = item[1]+item[0]
      else
        item = item
      end
    }
  end

  def findpair column
    result = []
    result << column.detect{ |e| column.count(e) > 1}
  end

  def eliminate (from, item) 
    from.reject do |e|
      e.include?(item.join) || e.include?(item.join.reverse)
    end
  end

  def eliminatecol(arr) 
      arr.map do |item|
        item = item.gsub(/^[A-Z]../, '')
      end
  end

end
