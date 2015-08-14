class Pasc
def triangle(n)
    space = n
    pat=1
    (0..n).each{|r|
            lst=[1]
            term=1
            k=1
            
             
            (0..r-1).step(1){|index|
                    term=term*(r-k+1)/k
                    pat=lst.push term 
                    k+=1
                   

            }
 #print pat
 #print "\n "
 (0..space).each do
        print" "
      end

 (0...n+1).each {|i|
 print pat [i] 
print " "}

             print "\n "
            #p lst
           space -=1
    }

end
end
pas=Pasc.new
pas.triangle(6)

