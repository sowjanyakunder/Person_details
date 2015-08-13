class Pyramid
  def printdig(lines)
    l=lines
    space = l

    (0...l).each do |i|
      (0..space).each do
        print" "
      end
     (0...2*i+1).each do

       #i.downto(i-1) do |y|
  # Display variable.
 # print y
 #i.upto(y) do 
        
      # print y
     
     
      print i
   end
   
     puts "\n"
     space -=1
    end
  end
end

p = Pyramid.new
p.printdig(5)

