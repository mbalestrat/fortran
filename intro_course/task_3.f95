! Copyright (c) 2011-2013 Bartosz Szczesny
! LICENSE: The MIT License (MIT)

program task3
    !logical :: seat_v( 300 )
    real :: sound( 300, 7200 )
    integer :: seat, seat_l, seat_q, time, sec


    ! read data
    open( unit = 22, file = "sound.txt" )
    do seat = 1, 300
        do sec = 1, 7200
            read( 22, * ) sound( seat, sec )
        enddo
    enddo
    close( 22 )

    goto 13 ! skip laudness check as it prints lots of lines

    ! check laudness
    do seat = 1, 300
        do sec = 1, 7200
            if ( sound( seat, sec ) > 90.0 ) then
                print *, 'seat=', seat, ' sec=', sec, ' sound=', sound( seat, sec ), ' > 90 !'
            endif
            if ( sound( seat, sec ) < 10.0 ) then
                print *, 'seat=', seat, ' sec=', sec, ' sound=', sound( seat, sec ), ' < 10 !'
            endif
        enddo
    enddo

13  continue ! laudness check skipped
    ! find laudest and quitest at 50min = 3000sec
    seat_l = 1
    seat_q = 1
    time = 50 * 60
    do seat = 2, 300
        if ( sound( seat, time ) > sound( seat_l, time ) ) then
            seat_l = seat
        endif
        if ( sound( seat, time ) < sound( seat_l, time ) ) then
            seat_q = seat
        endif
    enddo
    print *, '@ time=50min'
    print *, ' laudest_seat=', seat_l, ' sound=', sound( seat_l, time )
    print *, 'quietest_seat=', seat_q, ' sound=', sound( seat_q, time )

    ! check laudness but now only print seat number once
    do seat = 1, 300
        do sec = 1, 7200
            if ( sound( seat, sec ) > 90.0 .or. sound( seat, sec ) < 10.0 ) then
                print *, 'violation at seat=', seat
                exit
            endif
        enddo
    enddo

    stop
end
