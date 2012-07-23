c     2012 (CC0) Bartosz Szczesny <bszcz@bszcz.eu>

      program open_status_iostat_err
      integer ierr

c     status="old" means a file should exist already
c     if it does not then go to 123 and print iostat
c     same thing for status="new" if file does exist

      open(unit=22, file="nope.txt", status="old", err=123, iostat=ierr)
      close(22)
      print *, "File open/close successful."
      stop

123   print *, "File open error: iostat =", ierr
      stop

      end
