class Soshisoai

  attr_reader :arr, :matches, :combi

  def initialize 
    @arr=[]
    @matches=[]
    @combi = []
    file = File.new('soshisoai.txt', "r")
    file.each_line{|line| @arr<< line.strip }
    # @arr.each { |item| name, choices =item.split(':')}

    # @combi = @arr.map do |e|
    #   before, afters = e.split(":")
    #   afters.split(",").map{|after| "#{before}#{after}"}.join(",")
    # end

    # @firsttwo = @combi.map{ |item| item[0..1]}

    # @firstnew = @firsttwo.map{|item| 
    #   if item[0] =~ /[A-Z]/
    #     item = item[1]+item[0]
    #   else
    #     item = item
    #   end
    # }
    # @matches << @firstnew.detect{ |e| @firstnew.count(e) > 1}
  end


  def findmatches
    input = getcombi(@arr) 
    start = 0
    getcolumn(input, start)
    
    # @arr.map do |e|
      # before, afters = e.split(":")
      # afters.split(",").map{|after| "#{before}#{after}"}.join(",")
    # end
    
    # getcolumn(@combi, 0)

    # .map{ |item| item[0..1]}
    #   .map{|item| 
    #   if item[0] =~ /[A-Z]/
    #     item = item[1]+item[0]
    #   else
    #     item = item
    #   end
    # }
    # @matches << firstnew.detect{ |e| firstnew.count(e) > 1}
  end

  def getcombi(arraylist)
    arraylist.map do |e|
      before, afters = e.split(":")
      afters.split(",").map{|after| "#{before}#{after}"}.join(",")
    end
  end


  def getcolumn(input,start)        
    result = []
    finishi = start + 1 
    column = input.map{ |item| item[0..1]}
      .map{|item| 
      if item[0] =~ /[A-Z]/
        item = item[1]+item[0]
      else
        item = item
      end
    }
    result << column.detect{ |e| column.count(e) > 1}
  end

  def eliminate from item 
    item1 =  item.join
    item2 = item1.reverse
    from.select { |pair| pair.include? item1 or pair.include? item2} 

  end


end
