c     Copyright (c) 2012 Bartosz Szczesny
c     LICENSE: The MIT License (MIT)

      program logicals
      implicit none
      logical bool

c     for logicals:
c      .eq. -->  .eqv.
c     .neq. --> .neqv.

      bool = .true.

      if (bool .neqv. .false.)
     &    print *, "bool != .false.  -->  bool =", bool

      stop
      end
