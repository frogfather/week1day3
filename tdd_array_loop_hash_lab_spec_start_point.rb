require('minitest/autorun')
require_relative('./tdd_array_loop_hash_lab_start_point.rb')

class Lab < MiniTest::Test

  def test_add_array_lengths
    result = add_array_lengths([ 1.23, 6.98, 8.43, 2.45 ],[ 4.23, 1.12, 0.52, 8.67 ])
    assert_equal(8, result)
  end


 def test_sum_array
   result = sum_array([1,2,3,4,5])
   assert_equal(15, result)
 end


 def test_find_item
   result = find_item("Slytherin",["Hufflepuff","Slytherin","Gryffindor","Ravenclaw"])
   assert_equal(true, result)
 end


 def test_first_key_name
   result = first_key_name({
  'Sandy' => 12,
  'Zsolt'  => 10,
  'Val'  => 1356,
  'Jay' => 1
})
   assert_equal('Sandy',result)
 end


 def test_array_of_capitals
 result = array_of_capitals({
    uk: {
      capital: 'London',
      population: 60
    },
    france: {
      capital: 'Paris',
      population: 70
    },
    italy: {
      capital: 'Rome',
      population: 56
    }
  })
 puts "result of test is #{result}"
 assert_equal(["London", "Paris", "Rome"],result)
 
 end

end
