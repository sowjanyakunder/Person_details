class Sumprog
def add
a=Array.new(5) 
a[0]=1
a[1]=20
a[2]=4
a[3]=3
a[4]=4
a[5]=5
#a.each_index do |i|
sum=0
sqr=1
a.each {|e|  sqr=e**e}
sum+=sqr
#a.each {|e|  sum+=sqr}
	puts sum
end

end
ar=Sumprog.new

ar.add

