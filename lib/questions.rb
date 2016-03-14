def select_elements_starting_with_a(array)
  array.select {|x| x[0] == 'a'}
end

def select_elements_starting_with_vowel(array)
  array.select {|x| x[0] =~ /[aeiou]/ }
end

def remove_nils_from_array(array)
  array.delete_if {|x| x == nil }
end

def remove_nils_and_false_from_array(array)
  array.delete_if {|x| x == nil || x == false }
end

def reverse_every_element_in_array(array)
  array.map {|x| x.reverse }
end

def every_possible_pairing_of_students(array)
  array.sort.combination(2).to_a
end

def all_elements_except_first_3(array)
  array.drop(3)
end

def add_element_to_beginning_of_array(array, element)
  ([element]).concat(array)
end

def array_sort_by_last_letter_of_word(array)
  array.sort_by {|x| x[-1] }
end

def get_first_half_of_string(string)
  string[0...-(string.length / 2)]
end

def make_numbers_negative(number)
  number > 0 ? number -number - number : number
end

def separate_array_into_even_and_odd_numbers(array)
  [] << array.select {|x| x.even?} << array.select {|z| z.odd?}
end

def number_of_elements_that_are_palindromes(array)
  array.select {|x| (x == x.reverse) == true}.count
end

def shortest_word_in_array(array)
  array.min_by(&:length)
end

def longest_word_in_array(array)
  array.max_by(&:length)
end

def total_of_array(array)
  array.inject(&:+)
end

def double_array(array)
  array + array
end

def turn_symbol_into_string(symbol)
  symbol.to_s
end

def average_of_array(array)
  (array.inject(&:+) / array.length.to_f).round
end

def get_elements_until_greater_than_five(array)
  array[0..5]
end

def convert_array_to_a_hash(array)
  Hash[*array]
end

def get_all_letters_in_array_of_words(array)
  new = ''
  array.collect {|x| x.to_s.chars}.flatten.sort
end

def swap_keys_and_values_in_a_hash(hash)
  hash.invert
end

def add_together_keys_and_values(hash)
  hash.inject(&:+).inject(&:+)
end
