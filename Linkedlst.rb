class Node

    attr_accessor :value, :next_node

    def initialize val
        @value = val
        @next_node = next_node
        puts  value.to_s 
    end
end

class LinkedList

    def initialize val
        @head = Node.new(val)
    end
    
    def add(val)
        current = @head
        while current.next_node != nil
            current = current.next_node
        end 
        current.next_node = Node.new(val)
        self    
    end

    def delete(val)
        current = @head
        if current.value == val
            @head = @head.next_node
        else
            current = @head
            while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
                current = current.next_node
            end 

            if (current != nil) && (current.next_node != nil)
                current.next_node = (current.next_node).next_node
            end
        end
    end
    
    def search(val)
    
        current = @head
         if current.value == val
             print val

             puts " present in List"
         end
             full_list2 = [] 
        while current.next_node != nil 
            full_list2 << [current.value.to_s]
            current = current.next_node
            print full_list2.index('val')
            if current.value == val
                
                print val
                puts " present in List"
            
            end

         end
    end
    
    def display
        
        current = @head
        full_list = [] 
        while current.next_node != nil 
            full_list << [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        puts full_list.join("->")
    end

end
list = LinkedList.new(12)

list.add(13)
list.add(30)
list.add(17)

print"\n"

list.display
print"\n"

list.delete(30)
list.display

print"\n"

list.search(13)
