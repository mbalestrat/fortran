c     Copyright 2011 Bartosz Szczesny <bszcz@bszcz.eu> {bszcz.eu/license/MIT}

      program task3
      implicit none
      
c     logical seat_v(300)
      real sound(300,7200)
      integer seat, seat_l, seat_q, timei, sec


c     read data
      open(unit=22, file='sound.txt')
      do 100 seat=1,300
        do 200 sec=1,7200
          read(22,*) sound(seat,sec)
200     continue
100   continue
      close(22)

      goto 13 ! skip laudness check as it prints lots of lines

c     check laudness
      do 101 seat=1,300
        do 201 sec=1,7200
          if (sound(seat,sec)>90.0) print *, 'seat=',seat,' sec=',sec,
     &                             ' sound=',sound(seat,sec),' > 90 !' 
          if (sound(seat,sec)<10.0) print *, 'seat=',seat,' sec=',sec,
     &                             ' sound=',sound(seat,sec),' < 10 !' 
201     continue
101   continue

13    continue ! laudness check skipped
c     find laudest and quitest at 50min = 3000sec
      seat_l=1 
      seat_q=1
      time=50*60
      do 103 seat=2,300
        if ( sound(seat,time)>sound(seat_l,time) ) seat_l=seat
        if ( sound(seat,time)<sound(seat_l,time) ) seat_q=seat
103   continue
      print *, '@ time=50min'
      print *, ' laudest_seat=',seat_l,' sound=',sound(seat_l,time)
      print *, 'quietest_seat=',seat_q,' sound=',sound(seat_q,time)

c     check laudness but now only print seat number once
      do 104 seat=1,300
        do 204 sec=1,7200
          if ( sound(seat,sec)>90.0 .or. sound(seat,sec)<10.0 ) then
            print *, 'violation at seat=',seat
            goto 104
          endif
204     continue
104   continue

      stop
      end
