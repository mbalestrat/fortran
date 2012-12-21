c     Copyright 2012 Bartosz Szczesny <bszcz@bszcz.eu> {bszcz.eu/license/MIT}

      program equivalent_variables
      implicit none
      integer i, j, n(3), m(3)
      equivalence (i,j)
      equivalence (n,m)

      i = 1
      print *,"i =", i, ", j =", j

      j = 2
      print *,"i =", i, ", j =", j

      n(1) = 11
      n(2) = 22
      n(3) = 33
      print *, "m =", (m(i), i=1,3)

      stop
      end
