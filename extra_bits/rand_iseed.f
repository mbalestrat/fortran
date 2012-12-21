c     Copyright 2012 Bartosz Szczesny <bszcz@bszcz.eu> {bszcz.eu/license/MIT}

      program rand_iseed
      real x

      iseed = 2357
      do j=1,3
          print *, j
          x = rand(iseed)
          do i=1,10
              x = rand()
              print *, x
          enddo
      enddo

      stop
      end
