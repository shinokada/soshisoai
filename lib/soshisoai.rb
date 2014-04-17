##
# Find best matching when three preferences are given in a file
class Soshisoai
  ##
  # Parse a file and create an arry
  # @param file_name [File]
  # @return [Array]
  def self.parse_file(file_name)
    file = File.new(file_name, 'r')
    @initial_arr = file.each_line.map(&:strip)
  end
  ##
  # Create an array of combination such as Ac, Aa, Ab etc
  # @returen [Array]
  def self.get_combi(array_list)
    array_list.map do |e|
      before, afters = e.split(':')
      [before].product(afters.split(',')).map(&:join).join(',') if afters
    end
  end
  ##
  # Flaten an array after removing nil elements by Array#compact
  # @param arr [Array]
  # @returen [Array] one array like ['Ac', 'Ab']
  def self.flat_arr(arr)
    arr.compact.map { |s| s.split(',') }.flatten
  end

  ##
  # This will eliminate duplicates from an array
  # @param arr [Array]
  # @return [Array]
  def self.eliminate_duplicate(arr)
    arr.reject { |e| arr.count(e) > 1 }
  end

  ##
  # Change male input Ac to aC and return all array included female
  # @param arr {Array}
  # @return [Array] like ['cA', 'bA']
  def self.swap_male(arr)
    arr.map { |item| item =~ /^[A-Z]/ ? item.reverse : item }
  end

  ##
  # Find all of item which counts more than 1 and remove duplicates by Array#uniq
  # @param arr [Array]
  # @return [Array]
  def self.find_match(arr)
    arr.find_all { |e| arr.count(e) > 1 }.uniq
  end

  ##
  # This deletes the same suffix i.e. bC aC and delete aC
  # @param arr [Array]
  # @return [Array]
  def self.delete_same_suffix(arr)
    arr.group_by { |s| s[-1] }.values.map(&:first)
  end

  ##
  # This deletes the same prefix i.e. aC aD delete aD
  # @return [Array]
  def self.delete_same_prefix(arr)
    arr.group_by { |s| s[0] }.values.map(&:first)
  end
end
