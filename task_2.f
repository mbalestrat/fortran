c     2011 (CC0) Bartosz Szczesny <bszcz@bszcz.eu>

      program task_2
      implicit none

      integer RY, CY, NY
      real*8  RT, CT, RCT
      real*8  CCO2, CRTCO2
      real*8  CSUL, CRTSUL

      RY=2005; RT=15.0; CRTCO2=1.5; CRTSUL=3.0

      open(22, file='un.dat')
      read(22,*) CY, CT, CCO2, CSUL
      close(22)

      NY=CY-RY
      RCT=(CT-RT)/NY

      if (RCT .gt. +0.1) print *, 'global warming'
      if (RCT .lt. -0.1) print *, 'global cooling'

      if (RCT .eq.  0.0) then
        print *,'no climate change'
      else
        if ((RCT .ge. -0.1) .and. (RCT .le. +0.1)) then
          if ((CCO2 .lt. CRTCO2) .and. (CSUL .lt. CRTSUL)) then
            print *, 'climate change not iminent'
          else
            if ((CCO2 .gt. CRTCO2) .and. (CSUL .gt. CRTSUL)) then
              print *, 'cannot predict'
            else
              if (CCO2 .gt. CRTCO2) print *, 'global warming likely'
              if (CSUL .gt. CRTSUL) print *, 'global cooling likely'
            endif
          endif
        endif
      endif

      stop
      end
