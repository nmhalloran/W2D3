require 'rspec'
require 'tdd.rb'
describe Array do
  describe '#my_uniq' do
    subject(:a) {[1,5,1,7,5,8]}
    it 'removes duplicate elements from the array' do
      expect(a.my_uniq).to contain_exactly(5,7,8,1)
    end
    it 'maintains the order of the array' do
      expect(a.my_uniq).to eq([1,5,7,8])
    end
    it 'does not mutate the original array' do
      a.my_uniq
      expect(a).to match_array([1,5,1,7,5,8])
    end
  end

  describe '#two_sum' do
    subject(:a) {[-1, 0, 2, -2, 1]}
    it 'sorts pairs dictionary-wise (smaller to larger)' do
      expect(a.two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'finds all pairs of positions where the elements sum to zero' do
      expect(a.two_sum).to contain_exactly([0, 4], [2, 3])
    end

    it 'only returns each pair once' do
      expect(a.two_sum).not_to include([4, 0], [3, 2])
    end
  end

  describe '#my_transpose' do
    subject(:a) { [[0, 1, 2], [3, 4, 5]] }
    it 'correctly transposes the nested array' do
      expect(a.my_transpose).to eq([[0, 3], [1, 4], [2, 5]])
    end

    it 'properly exchanges row and column lengths' do
      num_rows = a.length
      num_columns = a[0].length
      expect(a.my_transpose.length).to eq(num_columns)
      expect(a.my_transpose[0].length).to eq(num_rows)
    end
  end

  describe '#stock_picker' do
    subject(:a) {[10, 25, 30, 15, 8, 40, 60, 5, 15]}
    it 'provides the best days to buy and sell the stock to maximize profit' do
      expect(a.stock_picker).to eq([4, 6])
    end

    it 'is unable to sell a stock before buying it' do
      buy_day = a.stock_picker[0]
      sell_day = a.stock_picker[1]
      expect(buy_day).to be < sell_day
    end
  end

end


# describe '#towers'
