class Soshisoai

  attr_reader :arr

  def initialize(filename)
    file = File.new(filename, "r")
    @arr = file.each_line.map(&:strip)
  end

  def get_combi(array_list)
    array_list.map do |e|
      before, afters = e.split(":")
      if afters
        [before].product(afters.split(",")).map(&:join).join(',')
      end
    end
  end

  def flat_arr(arr)
    arr.join(",").gsub(/[,]/, " ").split
  end

  def eliminate_duplicate(arr)
    arr.find_all { |e| arr.count(e) == 1 }
  end

  def swap_male(arr)
    arr.map { |item|
      if item[0] =~ /[A-Z]/
        item = item[1]+item[0]
      else
        item = item
      end
    }
  end

  def find_match(arr)
    arr.find_all { |e| arr.count(e) > 1 }.uniq
  end

  def delete_same_suffix(arr)
    arr.group_by { |s| s[-1] }.values.map(&:first)
  end

  def delete_same_prefix(arr)
    arr.group_by { |s| s[0] }.values.map(&:first)
  end
end
