c     Copyright (c) 2012 Bartosz Szczesny
c     LICENSE: The MIT License (MIT)

      program external_function
      implicit none
      real x, x3, cube
      external cube

      x = 4
      x3 = cube(x)
      print *, x, "**3 =", x3

      stop
      end

      real function cube(x)
      real x
      cube = x**3
      return
      end
