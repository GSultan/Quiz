#DESCRIPTION OF STACK VS QUEUE IS COMMENTED OUT
#SEE BELOW:

#A stack is a LIFO (Last In First Out) data structured. It's a list or sequence of elements that is lengthened by placing new elements "on top" of existing elements and shortened by removing elements from the top of existing elements. It is an ADT[Abstract Data Type] with math operations of "push" and "pop".

#A queue is a FIFO (First In First Out) data structure. It's a sequence of elements that is added to by placing the new element at the rear of existing and shortened by removing elements in front of queue. It is an ADT[Abstract Data Type].

#THIS IS THE STACK CLASS AND METHODS

@@stack = []

class Stack
  def add(n)
    @@stack.unshift(n)
  end

  def remove(n)
    @@stack.shift(n)
  end
end

#######################################3

#THIS IS THE QUEUE BEHAVIOUR
@@queue = []

class Queue
  def add(n)
    @@queue.push(n)
  end

  def remove(n)
    @@queue.shift(n)
  end
end


# a = Stack.new
# a.add("John")
# p stack
