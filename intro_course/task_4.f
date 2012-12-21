c     Copyright 2011 Bartosz Szczesny <bszcz@bszcz.eu> {bszcz.eu/license/MIT}

      program task_4
      implicit none

      real temp(5,24), humi(5,24)
      real temp_avg,   humi_avg  ! for averages
      real temp_min,   humi_min  ! for humi_min
      integer site,     hour     ! loop indexes
      integer site_min, hour_min ! for humi_min
      integer i,j

      character abcde*5
      abcde='ABCDE'

c     read input data from two files
      open(unit=22,file='temp.txt')
      open(unit=33,file='humi.txt')

      do 100 site=1,5
        do 200 hour=1,24
          read(22,*) temp(site,hour)
          read(33,*) humi(site,hour)
c         print *,   't',temp(site,hour)
c         print *,   'h',humi(site,hour)
200     continue
100   continue
      do j=1,24
       print *, (temp(i,j),i=1,5)
c 107    format(1x,5(10.4E,1x,5A)
      enddo

      close(22); close(33)

c     find where minimum humidity occurred
      site_min=1
      hour_min=1

      do 101 site=1,5
        do 201 hour=1,24
          if ( humi(site,hour) < humi(site_min,hour_min) ) then
            site_min=site
            hour_min=hour
          endif
201     continue
101   continue

      print *, 'min humidity:'
      print *, 'site=',abcde(site_min:site_min)
      print *, 'hour=',hour_min
      print *, 'temp=',temp(site_min,hour_min)
      print *, 'humi=',humi(site_min,hour_min)

c     tempi_avg over all sites at hour=14
      temp_avg=0.0
      do 102 site=1,5
        temp_avg=temp_avg+temp(site,14)
102   continue
      temp_avg=temp_avg/5.0
      print *, '@ hour=14, temp_avg=', temp_avg

c     humi_avg at site C over 24 hours
      temp_avg=0.0
      do 202 hour=1,24
        humi_avg=humi_avg+humi(3,hour)
202   continue
      humi_avg=humi_avg/24.0
      print *, '@ site=C, humi_avg=', humi_avg

      stop
      end
