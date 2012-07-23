c     2012 (CC0) Bartosz Szczesny <bszcz@bszcz.eu>

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
