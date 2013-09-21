! Copyright (c) 2012-2013 Bartosz Szczesny
! LICENSE: The MIT License (MIT)

program external_function
    interface
        function cube( x )
            real :: cube, x
        end function
    end interface

    real :: x = 4
    print "(F4.1, A, F4.1)", x, "**3 = ", cube( x )

    stop
end program

function cube( x )
    real :: x, cube
    cube = x**3
    return
end function
