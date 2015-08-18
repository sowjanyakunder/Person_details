
require "test/unit"

class Pat1
 def initialize(lines)
    @lines = lines
  end


	def pattern(n)
		#n=@lines
		d=""
		space=n
		num=1
		(1..n).each do |c|
		(1..space).each do |l|
		print " "
	end
	(1..2*c-1).each do|d|
	d<<print (num%10)
	num+=1
end
print "\n"
space-=1
d
end
end
end

class TestTriangle < Test::Unit::TestCase

  def test_pattern()
    pt = Pat1.new(1)
    
    assert_equal(" 1", pt.pattern(1))
  end
end


pt=Pat1.new(1)
pt.pattern(1)
