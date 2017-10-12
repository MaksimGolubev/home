#!/usr/bin/env ruby
$Tree4 = [7,[[24,[[37,[[39,[[40,[39,19]],[4,[0,36]]]],[7,[[34,[42,30]],[2,[4,48]]]]]],[45,[[8,[[17,[21,6]],[21,[43,48]]]],[21,[[33,[40,36]],[45,[41,1]]]]]]]],[32,[[42,[[34,[[25,[4,10]],[34,[40,47]]]],[45,[[28,[21,48]],[6,[0,7]]]]]],[47,[[5,[[20,[34,40]],[6,[29,20]]]],[7,[[8,[36,34]],[42,[47,29]]]]]]]]]]
$Tree = [30,[[1,[[5,[[10,[14,38]],[38,[7,18]]]],[19,[[10,[19,16]],[29,[8,7]]]]]],[35,[[46,[[36,[19,22]],[44,[7,15]]]],[22,[[19,[17,42]],[46,[16,7]]]]]]]]
$Tree2 = [1 ,[[2 ,[3 , 4 ]],[3,[5,2]]]]
$Tree3 = [1,[2,3]]

class Recursion
  
  def initialize 
    @lev = 0
    @stack = [0] 
 end
  
  def recursion_tree (arr)
    if arr[0].kind_of?(Array)
        a = arr[0]
        b = arr[1] 
        @stack << @lev

        recursion_tree (a)       
        
        @lev = @stack.last 
        @stack.pop
        recursion_tree (b)

    else
        @lev += 1
        puts "#{arr[0]} уровень #{@lev}" 
        if arr[1].kind_of?(Array)
          recursion_tree (arr[1])
          else 
        puts "#{arr[1]} уровень #{@lev}" 
        end
    end



  end

end

    
 
rec = Recursion.new
rec.recursion_tree($Tree4)

