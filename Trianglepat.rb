require "test/unit"

class Trianglepat

  def initialize(lines,dig)
    @lines = lines
    @dig=dig
  end

  def add_space(current_line)
    " " * (@lines - current_line)
  end

  def digits(current_line)
    max = (current_line * 2) -1
    digit = ""
    (1..max).each do |line|
      digit <<  (@dig % 10).to_s
      @dig+=1
    end
    digit
  end

  def complete_line(current_line)
   line =  add_space(current_line) + digits(current_line)
   
  end

  def print_triangle()
    1.upto(@lines) do |current_line|
      puts complete_line(current_line)
    end
  end

end


class TestTriangle < Test::Unit::TestCase

  def test_spaces
    tr = Trianglepat.new(5,1)
    assert_equal("    ", tr.add_space(1))
    assert_equal("", tr.add_space(5))
  end

  def test_digits
    tr = Trianglepat.new(5,1)
    assert_equal("1", tr.digits(1))
    assert_equal("234", tr.digits(2))
  end

  def test_complete_line
    tr = Trianglepat.new(5,1)
    assert_equal("    1", tr.complete_line(1))
    assert_equal("   234", tr.complete_line(2))
    assert_equal("  56789", tr.complete_line(3))
  end
end

tr = Trianglepat.new(6,1)
tr.print_triangle
