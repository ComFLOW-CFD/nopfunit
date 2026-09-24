    subroutine subroutine_name(val1, val2, tol, message, lineno, filename) 
    use, intrinsic :: iso_fortran_env, only: real32, real64
    implicit none
       typ,              intent(in) :: val1, val2
       real,             intent(in) :: tol
       character(len=*), intent(in), optional :: message
       integer,          intent(in), optional :: lineno
       character(len=*), intent(in), optional :: filename
       logical :: success
       character(len=512) :: msg
       write(msg,'(1p,10(a,g20.12))') 'checking whether ',abs(val1-val2),'= |',val1,'-',val2,'| <= ',tol,'*',abs(val1),'=',tol*abs(val1)
       if (val1==0 .and. val2==0) then
          success = .true.
       else if (val1==0) then
          success = .false.
       else
          success= abs(val1-val2)<=tol*abs(val1)
       end if

       call print_result(message, lineno, filename, msg, success=success)
    end subroutine subroutine_name 

#   undef  subroutine_name   
#   undef  typ

