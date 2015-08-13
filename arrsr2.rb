
class Odd
def odd
a=Array.new(5) 
a[0]=1
a[1]=20
a[2]=4
a[3]=3
a[4]=4
a[5]=5
a.each_index do |i|
#a.each {|e|  puts {a[i]%2!=0}} 
if(a[i]%2!=0)
	puts a[i]
end
end
end
end
ar=Odd.new
ar.odd