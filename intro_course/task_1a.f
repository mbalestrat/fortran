c     Copyright 2011 Bartosz Szczesny <bszcz@bszcz.eu> {bszcz.eu/license/MIT}

      program task_1a

      print *, 'oz1, oz2 ='
      read (5,*) oz1, oz2

c     oz1=324.0
c     oz2=342.0
      oz3=443.0
      oz4=286.0
      oz5=401.1
      oz6=345.9

      avg=(oz1+oz2+oz3+oz4+oz5+oz6)/6.0

      print *, 'avg =', avg

      stop
      end
