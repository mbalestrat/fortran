! Copyright (c) 2012-2013 Bartosz Szczesny
! LICENSE: The MIT License (MIT)

program character_arrays
    character( len = 64 ) :: names( 3 )
    integer :: i

    do i = 1, 3
        write ( *, fmt = "( A, I1, A )", advance = 'no' ) "Enter name ", i, ": "
        read *, names( i )
    enddo

    do i = 1, 3
        print "( A, I1, A, A )", "names( ", i ," ) = ", names( i )
    enddo

    stop
end
