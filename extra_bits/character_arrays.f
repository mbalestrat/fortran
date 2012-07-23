c     2012 (CC0) Bartosz Szczesny <bszcz@bszcz.eu>

      program character_arrays
      implicit none
      integer i
      character*32 names(3)

      do i=1,3
          print *, "names(",i,") ?"
          read *, names(i)
      enddo

      do i=1,3
          print *, "names(",i,") = ", names(i)
      enddo

      stop
      end
