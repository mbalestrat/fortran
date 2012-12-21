c     Copyright 2012 Bartosz Szczesny <bszcz@bszcz.eu> {bszcz.eu/license/MIT}

      program data_at_compile_time
      implicit none
      integer i, j, array(3)
      real x, y

c     this initialises the data at compilation
      data x, y / 0.1, 0.2/ array /10, 20, 30/

      print *,"x =", x
      print *,"y =", y
      print *,"array =", (array(i), i=1,3)

c     code below is not an infinite loop!
c     "data j /1/" statement is done once
123   continue
      data j /1/
      print *,"j =", j
      j = j + 1
      if (j .lt. 4) go to 123
      print *,"quit the loop"

      stop
      end
