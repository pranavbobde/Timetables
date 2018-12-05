require 'test_helper'

class FacultyTest < ActiveSupport::TestCase
  
  def setup
    @faculty = Faculty.new(name: "Jon Doe", school: "school of wizcraft", phonenumber: "123456789", email: "jondoe@witchcraft.as")
  end
  test "only allow numbers in phonenumber" do
    @faculty.phonenumber = "a" * 9
    assert_not @faculty.valid?
  end
  
  test "faculty not save if details are missing" do
    assert_equal(false, faculty.save, "saves when all the required field exist")
  end
  
end
