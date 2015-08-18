 class Temperature
 	def temp()
     result_arr = []
     day=[]
 
  File.open("weather.txt") do |f|
     while (line = f.gets)
      array = line.split   
       day << array[0]

      temp_max = array[1]
    
      temp_min = array[2]
      
      result = temp_max.to_i - temp_min.to_i
     
      result_arr << result unless result == 0
 end
 #puts result_arr.min
   #H = Hash[day => result]
     #puts "#{H['day']}"
   ind = result_arr.index(result_arr.min)
  
  
puts "Day with smallest temperature"
puts day[ind+2]
end
end
end

t=Temperature.new
t.temp()

