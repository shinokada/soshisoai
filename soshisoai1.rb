class Soshisoai

  attr_reader :arr

  def initialize(filename)
    file = File.new(filename, "r")
    @arr = file.each_line.map(&:strip)
  end

  def getcombi(arraylist)
    arraylist.map do |e|
      before, afters = e.split(":")
      if afters
        afters.split(",").map { |after| "#{before}#{after}" }.join(",")
      end
    end
  end

  def flatarr(arr)
    arr.join(",").gsub(/[,]/, " ").split
  end

  def eliminateduplicate(arr)
    arr.find_all { |e| arr.count(e) == 1 }
  end

  def swapmale(arr)
    arr.map { |item|
      if item[0] =~ /[A-Z]/
        item = item[1]+item[0]
      else
        item = item
      end
    }
  end

  def findmatch(arr)
    arr.find_all { |e| arr.count(e) > 1 }.uniq
  end

  def deletesamesuffix(arr)
    arr.group_by { |s| s[-1] }.values.map(&:first)
  end

  def deletesameprefix(arr)
    arr.group_by { |s| s[0] }.values.map(&:first)
  end
end
