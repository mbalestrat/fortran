c     Copyright 2012 Bartosz Szczesny <bszcz@bszcz.eu> {bszcz.eu/license/MIT}

      program common_blocks
      implicit none
      integer i, j
      real x, y, addall
      common j, y
      external addall

      x = 0.1
      y = 0.2
      i = 1
      j = 2

      print *, "addall =", addall(i,x)

      stop
      end

      real function addall(i,x)
      implicit none
      integer i, j
      real x, y
      common j, y
c     no need to pass 'j' and 'y' as arguments
      addall = i + j + x + y
      return
      end
