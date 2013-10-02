! Copyright (c) 2011-2013 Bartosz Szczesny
! LICENSE: The MIT License (MIT)

program task_2
    integer :: RY = 2005, CY, NY
    real( kind = 8 ) :: RT = 15.0, CT, RCT
    real( kind = 8 ) :: CCO2, CRTCO2 = 1.5
    real( kind = 8 ) :: CSUL, CRTSUL = 3.0

    open( 22, file = "un.txt" )
    read( 22, * ) CY, CT, CCO2, CSUL
    close( 22 )

    NY = CY - RY
    RCT = ( CT - RT ) / NY

    if ( RCT .gt. +0.1 ) then
        print *, "global warming"
    endif
    if ( RCT .lt. -0.1 ) then
        print *, "global cooling"
    endif

    if ( RCT .eq.  0.0 ) then
        print *, "no climate change"
    else
        if ( ( RCT .ge. -0.1 ) .and. ( RCT .le. +0.1 ) ) then
            if ( ( CCO2 .lt. CRTCO2 ) .and. ( CSUL .lt. CRTSUL ) ) then
                print *, "climate change not iminent"
            else
                if ( ( CCO2 .gt. CRTCO2 ) .and. ( CSUL .gt. CRTSUL ) ) then
                    print *, "cannot predict"
                else
                    if ( CCO2 .gt. CRTCO2 ) then
                        print *, "global warming likely"
                    endif
                    if ( CSUL .gt. CRTSUL ) then
                        print *, "global cooling likely"
                    endif
                endif
            endif
        endif
    endif

    stop
end
