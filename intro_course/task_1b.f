c     Copyright (c) 2011 Bartosz Szczesny
c     LICENSE: The MIT License (MIT)

      program task_1b
      implicit none

      real*8 oz1, oz2, oz3, oz4, oz5, oz6
      real*8 avg, ozmax, datmax


c      print *, 'ozmax = '
c      read (5,*) ozmax
      ozmax = 340.0
      print *, 'ozmax = 340.0 [Dobson units]'

      open(unit=22, file='oz.txt')
      read(22,*) oz1, oz2, oz3, oz4, oz5, oz6
      close(22)

      datmax = 0.0
      if (oz1 .GT. datmax) then; datmax=oz1; endif
      if (oz2 .GT. datmax) then; datmax=oz2; endif
      if (oz3 .GT. datmax) then; datmax=oz3; endif
      if (oz4 .GT. datmax) then; datmax=oz4; endif
      if (oz5 .GT. datmax) then; datmax=oz5; endif
      if (oz6 .GT. datmax) then; datmax=oz6; endif

      if (oz1 .GT. ozmax) then
        print *, 'oz1 > ozmax : ', oz1, ' > ', ozmax
      endif
      if (oz2 .GT. ozmax) then
        print *, 'oz2 > ozmax : ', oz2, ' > ', ozmax
      endif
      if (oz3 .GT. ozmax) then
        print *, 'oz3 > ozmax : ', oz3, ' > ', ozmax
      endif
      if (oz4 .GT. ozmax) then
        print *, 'oz4 > ozmax : ', oz4, ' > ', ozmax
      endif
      if (oz5 .GT. ozmax) then
        print *, 'oz5 > ozmax : ', oz5, ' > ', ozmax
      endif
      if (oz6 .GT. ozmax) then
        print *, 'oz6 > ozmax : ', oz6, ' > ', ozmax
      endif

      avg=(oz1+oz2+oz3+oz4+oz5+oz6)/6.0

      print *,'avg =', avg
      print *,'datmax =', datmax

      stop
      end
