module nopfunit_tCat
use no_pfunit, only: assertRelativelyEqual,  assertGreaterThan, assertLessThan,  conclusion, &
        assertEqual_array_string, assertEqual_scalar_string, assertEqual_scalar_bool, assertEqual_scalar_int, &
        assertEqual_scalar_double_notol, assertEqual_scalar_dble, assertEqual_scalar, assertEqual_scalar_notol, &
        assertEqual_array, assertEqual_array_bool, assertEqual_array_int, assertEqual_array_int16, &
        assertEqual_array_4d, assertEqual_array_5d, assertEqual_array_2d, &
        assertEqual_array_2d_notol, assertEqual_array_int16_2d, assertTrue, assertFalse
implicit none
    interface assertEqual
       module procedure  assertEqual_array_string
       module procedure  assertEqual_scalar_string
       module procedure  assertEqual_scalar_bool
       module procedure  assertEqual_scalar_int
       module procedure  assertEqual_scalar_double_notol
       module procedure  assertEqual_scalar_dble
       module procedure  assertEqual_scalar 
       module procedure  assertEqual_scalar_notol
       module procedure  assertEqual_array
       module procedure  assertEqual_array_int
       module procedure  assertEqual_array_int16
       module procedure  assertEqual_array_bool
       module procedure  assertEqual_array_5d
       module procedure  assertEqual_array_4d
       module procedure  assertEqual_array_2d
       module procedure  assertEqual_array_2d_notol
       module procedure  assertEqual_array_int16_2d
       module procedure  assertEqual_tCat
    end interface assertEqual

contains

    subroutine assertEqual_tCat(cat,ref_cat,message,lineno, fname)
    use m_error
    use m_commonfile
    implicit none
       type(tcat),        intent(in) :: cat, tcat
       character(len=*),  intent(in) :: message
       integer, optional, intent(in) :: lineno
       character(len=*), optional, intent(in) :: fname

       call assertEqual( cat%neyes, ref_cat%neyes, message, lineno, fname)
       call assertEqual( cat%nfeet, ref_cat%nfeet, message, lineno, fname)
       call assertEqual( cat%ntails, ref_cat%ntails, message, lineno, fname)
    end subroutine assertEqual_tCat

end module nopfunit_tCat

