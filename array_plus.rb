class ArrayPlus
  def self.add_one(array)
    return nil if array.class.name != 'Array'

    raise StandardError, 'Array should not be empty' if array.empty?

    if array.any?(&:negative?) || array.any? do |item|
         item > 9
       end
      raise StandardError,
            'Array should not contain negative or double digit numbers'
    end

    # result = array.join.to_i + 1
    # result.to_s.scan(/\d/).map(&:to_i)
    
    num = 0
    output = []
    array.each { |item| num = (num * 10) + item }
    new_num = num + 1

    pos = new_num.to_s.length - 1

    while new_num > 0
      digit = new_num % 10
      new_num = (new_num - digit) / 10

      output[pos] = digit
      pos -= 1
    end
    output
  end
end

