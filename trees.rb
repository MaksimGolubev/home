#!/usr/bin/env ruby

$Tree = [30,[[1,[[5,[[10,[14,38]],[38,[7,18]]]],[19,[[10,[19,16]],[29,[8,7]]]]]],[35,[[46,[[36,[19,22]],[44,[7,15]]]],[22,[[19,[17,42]],[46,[16,7]]]]]]]]
$Tree2 = [1 ,[[2 ,[3 , 4 ]],[3,[5,2]]]]
$Tree3 = [1,[2,3]]

class Recursion
  
  def initialize 
    @return_string =""
    @conv_arr = []
    @stack = []
  end
  def conv_arr
          p @conv_arr
  end

  def stack
          p @stack
  end



  def recursion_tree (arr)
  @stack2 = []      
   str = ""     
          if arr[0].kind_of?(Array)
 
                arr.each do |el|
                        str +=  el[0].to_s + " "
                    if el[1].kind_of?(Array)
                           @stack2 <<  el[1]
                     else
                     str += el[1].to_s  + " "     
                    end    
                end


                puts str 
p @stack2
p "-"*100
                recursion_tree (@stack2)


          elsif  arr[1].nil? 
                  
                puts arr[0].to_s
          elsif  arr[1].kind_of?(Array) 
                 puts  arr[0].to_s
                
                 recursion_tree(arr[1])
                
                         
           else puts "#{arr[0]} #{arr[1]} "          
          
          
           end

end
end


    
 
rec = Recursion.new
rec.recursion_tree($Tree)
rec.conv_arr
rec.stack


class Tree
 # @@env_value=""

def val
#puts  @@env_value
end

end

#b = Tree.val
#p b

