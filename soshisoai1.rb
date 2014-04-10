class Soshisoai

  attr_reader :initial_arr

  def initialize(filename)
    file = File.new(filename, "r")
    @initial_arr = file.each_line.map(&:strip)
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
    arr.compact.map { |s| s.split(',') }.flatten
  end

  def eliminate_duplicate(arr)
    arr.reject { |e| arr.count(e) > 1 }
  end

  def swap_male(arr)
    arr.map { |item| item =~ /^[A-Z]/ ? item.reverse : item }
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
