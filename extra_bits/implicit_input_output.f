c     Copyright (c) 2012 Bartosz Szczesny
c     LICENSE: The MIT License (MIT)

      program implicit_input_output
      implicit none
      integer i, j
      real a(2,3)

      a(1,1) = 11
      a(1,2) = 12
      a(1,3) = 13
      a(2,1) = 21
      a(2,2) = 22
      a(2,3) = 23

      print *, ((a(i,j), i=1,2), j=1,3)

      print *, (a(1,j), j=1,3)
      print *, (a(2,j), j=1,3)

c     can also do: read(22,*) ((a(i,j), i=1,2), j=1,3)

      stop
      end
