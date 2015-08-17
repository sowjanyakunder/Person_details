
require "test/unit"

class Pat1



	def pattern(n)
		#n=5
		space=n
		num=1
		(1..n).each do |c|
		(1..space).each do |l|
		print " "
	end
	(1..2*c-1).each do|d|
	print (num%10)
	num+=1
end
print "\n"
space-=1
end
end
end

class TestTriangle < Test::Unit::TestCase

  def test_pattern
    pt = Pat1.new(5)
    
    assert_equal(" 789012345", pt.pattern(5))
  end
end


pt=Pat1.new
pt.pattern(5)
