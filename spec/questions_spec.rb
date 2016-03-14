require 'rspec'
require 'questions.rb'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

describe 'ruby kata' do

  it 'returns elements with first letter a' do
    n = select_elements_starting_with_a(['bananas', 'apples', 'pears', 'avocados'])
    expect(n).to eq(['apples', 'avocados'])
  end

  it 'returns elements that start with a vowel' do
    n = select_elements_starting_with_vowel(['john', 'david', 'omar', 'fred', 'idris', 'angela'])
    expect(n).to eq(['omar', 'idris', 'angela'])
  end

  it 'removes instances of nil only' do
    n = remove_nils_from_array(['a', 'b', nil, nil, false, 'c', nil])
    expect(n).to eq(['a', 'b', false, 'c'])
  end

  it 'removes instance of nil and false' do
    n = remove_nils_and_false_from_array(['a', 'b', nil, nil, false, 'c', nil])
    expect(n).to eq(['a', 'b', 'c'])
  end

  it 'reverses each word in the array' do
    n = reverse_every_element_in_array(['dog', 'monkey', 'elephant'])
    expect(n).to eq(['god', 'yeknom', 'tnahpele'])
  end

  it 'returns every possible pairing in of names in array' do
    n = every_possible_pairing_of_students(['Bob', 'Dave', 'Clive'])
    expect(n).to eq([['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']])
  end

  it 'discards the first three elements from array' do
    n = all_elements_except_first_3([1, 2, 3, 4, 5, 6, 7])
    expect(n).to eq([4,5,6,7])
  end

  it 'adds element to the beginning of an array' do
    n = add_element_to_beginning_of_array([2, 3, 4, 5], 1)
    expect(n).to eq ([1, 2, 3, 4, 5])
  end

  it 'sorts an array of words by last letter' do
    n = array_sort_by_last_letter_of_word(['sky', 'puma', 'maker'])
    expect(n).to eq(['puma', 'maker', 'sky'])
  end

  it 'cuts strings in half and returns the first half' do
    n = get_first_half_of_string('banana')
    b = get_first_half_of_string('apple')
    expect(n).to eq('ban')
    expect(b).to eq('app')
  end

  it 'makes a positive number negative' do
    n = make_numbers_negative(2)
    b = make_numbers_negative(-11)
    expect(n).to eq(-2)
    expect(b).to eq(-11)
  end

  it ' seperates array in to positive and negative numbers' do
    n = separate_array_into_even_and_odd_numbers([1, 2, 3, 4, 5, 6, 7])
    expect(n).to eq([[2, 4, 6], [1, 3, 5, 7]])
  end

  it 'returns the count of  palindromes' do
    n = number_of_elements_that_are_palindromes(['bob', 'radar', 'alex', 'noon', 'banana'])
    expect(n).to eq(3)
  end

  it 'returns the shortest word in an array' do
    n = shortest_word_in_array %w(here is a bunch of words of different lengths)
    expect(n).to eq('a')
  end

  it 'returns the longest word in an array' do
    n = longest_word_in_array %w(here is a bunch of words of different lengths)
    expect(n).to eq('different')
  end

  it 'sums all the numbers in array' do
    n = total_of_array([1,3,5,6])
    expect(n).to eq(15)
  end

  it 'double the array' do
    n = double_array([1,2,3])
    expect(n).to eq([1,2,3,1,2,3])
  end

  it 'turns a symbol in to a string' do
    n = turn_symbol_into_string(:foobar)
    expect(n).to eq('foobar')
  end

  it 'gets the average from an array' do
    n = average_of_array([10, 15, 25])
    expect(n).to eq(17)
  end

  it 'gets elements below 5' do
    n = get_elements_until_greater_than_five([1, 3, 5, 4, 1, 2, 6, 2, 1, 3, 7])
    expect(n).to eq([1, 3, 5, 4, 1, 2])
  end

  it 'turns an array in to hash' do
    n = convert_array_to_a_hash(['a', 'b', 'c', 'd'])
    expect(n).to eq({'a' => 'b', 'c' => 'd'})
  end

  it 'splits alphabetically array of words' do
      n = get_all_letters_in_array_of_words(['cat', 'dog', 'fish'])
      expect(n).to eq(['a','c','d','f','g','h','i','o','s','t'])
  end

  it 'swaps keys and values in hash' do
    n = swap_keys_and_values_in_a_hash({'a' => 'b', 'c' => 'd'})
    expect(n).to eq({'b' => 'a', 'd' => 'c'})
  end

  it 'sums together keys and values in hash' do
    n = add_together_keys_and_values({1 => 1, 2 => 2})
    expect(n).to eq(6)
  end

  it 'removes capital letters from words' do
    n = remove_capital_letters_from_string('Hello JohnDoe')
    expect(n).to eq('ello ohnoe')
  end

  it 'rounds up a float' do
    n = round_up_number(3.1444)
    expect(n).to eq(4)
  end

  it ' rounds the number down' do
    n = round_down_number(4.99)
    expect(n).to eq(4)
  end

  it 'formats to a date style' do
    n = format_date_nicely Time.new(2013, 10, 31)
    expect(n).to eq('31/10/2013')
  end

  it 'gets domain name only from email' do
    n = get_domain_name_from_email_address('alex@makersacademy.com')
    expect(n).to eq('makersacademy')
  end

  it 'capitalises the first letter in each word' do
    n = titleize_a_string('the lion the witch and the wardrobe')
    expect(n).to eq('The Lion the Witch and the Wardrobe')
  end

  it 'returns true if string contains specail character' do
    n = check_a_string_for_special_characters('ABCdef123')
    b = check_a_string_for_special_characters('ABC@def123!')
    expect(n).to eq(false)
    expect(b).to eq(true)
  end

  it 'should return the upper limit of range' do
    n = get_upper_limit_of(1..20)
    b = get_upper_limit_of(1..55)
    expect(n).to eq(20)
    expect(b).to eq(55)
  end

  it 'should return true for 3 dot range else false' do
    n = is_a_3_dot_range?(1...20)
    b = is_a_3_dot_range?(1..20)
    expect(n).to eq(true)
    expect(b).to eq(false)
  end

  it 'returns the square root of a number' do
    n = square_root_of(9)
    b = square_root_of(3)
    expect(n).to eq 3.0
    expect(b).to eq 1.7320508075688772
  end

  it 'call_method_from_string' do
    expect {call_method_from_string('foobar')}.to raise_error(NameError)
  end

  it 'is_a_2014_bank_holiday?' do
  a = is_a_2014_bank_holiday?(Time.new(2014, 8, 25))
  b = is_a_2014_bank_holiday?(Time.new(2014, 8, 26))
  expect(a).to be true
  expect(b).to be false
end



end
