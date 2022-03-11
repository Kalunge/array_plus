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

    result = array.join.to_i + 1
    result.to_s.scan(/\d/).map(&:to_i)
  end
end
