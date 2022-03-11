require_relative 'helper_spec'

describe 'ArrayPlus' do
  it 'Returns an error when array is empty' do
    expect { ArrayPlus.add_one([]) }.to raise_exception an_instance_of(StandardError)
      .and(having_attributes({ 'message' => 'Array should not be empty' }))
  end

  it 'Returns an error when array contains negative numbers or double digit' do
    expect { ArrayPlus.add_one([10, -2]) }.to raise_exception an_instance_of(StandardError)
      .and(having_attributes({ 'message' => 'Array should not contain negative or double digit numbers' }))
  end

  it 'Returns an error if called with invalid inputs' do
    expect { ArrayPlus.add_one }.to raise_exception an_instance_of(ArgumentError)
  end

  it 'Returns nil if called with invalid inputs' do
    expect(ArrayPlus.add_one('f')).to be_nil
  end

  it 'return an array that has 1 added to the value represented by the array' do
    result = ArrayPlus.add_one([2, 3, 9])
    expect(result).to eq([2, 4, 0])
    second_result = ArrayPlus.add_one([4, 3, 2, 5])
    expect(second_result).to eq([4, 3, 2, 6])
  end
end
