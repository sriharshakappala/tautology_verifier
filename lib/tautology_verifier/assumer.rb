require 'pry'

class Assumer

  def self.assign_random_truth_table(predicate_array)
    random_truth_values = {}
    predicate_array.each do |predicate|
      random_truth_value = [true, false].sample
      random_truth_values[predicate] = random_truth_value
    end
    random_truth_values
  end

  def self.generate_possible_truth_tables(predicate_array)
    predicates_count = predicate_array.length
    possible_truth_tables_array = []
    possible_truth_tables_count = 2 ** predicates_count
    (0...(possible_truth_tables_count)).each do |i|
      temp_val = possible_truth_tables_count - 1 - i
      temp = Hash.new
      (0...predicates_count).each do |j|
        temp[predicate_array[j]] = (temp_val[predicates_count - 1 -j ] == 1)
      end
      possible_truth_tables_array << temp
    end
    binding.pry
    possible_truth_tables_array
  end

end

# Assumer.generate_possible_truth_tables(['a', 'b'])
predicate_array = ["a", "b", "c", "d"]
Assumer.generate_possible_truth_tables(predicate_array)
