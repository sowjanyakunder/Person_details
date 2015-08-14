class Pyramid
  def printdig(lines)
    l=lines
    space = l
    j=0

    (0...l).each do |i|
      (0..space).each do
        print" "
      end
     (0...2*i+1).each do |j|
      j+=1
#(1..9).each do|k| k-=1 
#puts k
       #i.downto(i-1) do |y|
  # Display variable.
 # print y
 #i.upto(y) do 
        
      # print y
  
     
     j.upto (l) { |k| print k}
  
    
   end

 
     puts "\n"
     space -=1
    end
  end

end

p = Pyramid.new
p.printdig(5)

