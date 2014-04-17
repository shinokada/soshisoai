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
  # Flaten an array
  # @param arr [Array]
  # @returen [Array]
  def self.flat_arr(arr)
    arr.compact.map { |s| s.split(',') }.flatten
  end

  def self.eliminate_duplicate(arr)
    arr.reject { |e| arr.count(e) > 1 }
  end

  def self.swap_male(arr)
    arr.map { |item| item =~ /^[A-Z]/ ? item.reverse : item }
  end

  def self.find_match(arr)
    arr.find_all { |e| arr.count(e) > 1 }.uniq
  end

  def self.delete_same_suffix(arr)
    arr.group_by { |s| s[-1] }.values.map(&:first)
  end

  def self.delete_same_prefix(arr)
    arr.group_by { |s| s[0] }.values.map(&:first)
  end
end
