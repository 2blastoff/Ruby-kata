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

def remove_capital_letters_from_string(string)
  string.gsub!(/[A-Z]/,'')
end

def round_up_number(float)
  float.ceil
end

def round_down_number(float)
  float.floor
end

def format_date_nicely(date)
  t = date
  t.strftime("%d/%m/%Y")
end

def get_domain_name_from_email_address(email)
  (email.split('@')[1])[0..-5]
end

def titleize_a_string(string)
  words_to_ignore = ["the","and","a"]
  new_string = string.split(' ').map do |x|
    unless words_to_ignore.include? x
      x.capitalize
    else
      x
    end
  end
  new_string[0].capitalize!
  new_string.join(" ")
end

def check_a_string_for_special_characters(string)
  string.include?('@'||'?')
end

def get_upper_limit_of(range)
  range.last
end

def is_a_3_dot_range?(range)
  range.exclude_end?
end

def square_root_of(number)
  Math.sqrt(number)
end

def call_method_from_string(str_method)
  str_method.call
end

def is_a_2014_bank_holiday?(date)
  bank_hols = ["25/08", "25/12", "26/12", "26/05", "05/05", "21/04", "18/04", "01/01"]
  bank_hols.include?(date.strftime("%d/%m"))
end
