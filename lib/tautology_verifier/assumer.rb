class Assumer

    def self.assign_random_truth_table(predicate_array)
      random_truth_values = {}
      predicate_array.each do |predicate|
        random_truth_value = [true, false].sample
        random_truth_values[predicate] = random_truth_value
      end
      random_truth_values
    end

end
