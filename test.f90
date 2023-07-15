program hello
  implicit none

  type :: human_type
    integer :: years
    character(len=10) :: name
  end type

  type :: math_type
    integer :: a, b
  end type  
  
  type(human_type) :: human
  type(math_type) :: math
  
  integer :: i, result, sum_numbers
  logical :: isTrue = .true.

  print *, 'Enter your name'
  read(*, *) human%name

  print *, 'Enter your years'
  read(*, *) human%years

  print *, 'Enter A: '
  read(*, *) math%a

  print *, 'Enter B: '
  read(*, *) math%b

  if (isTrue) then
    call subprogram("a + b = ", sum_numbers(math%a, math%b))
    print *, 'Your name: ', human%name
    print *, 'Your years: ', human%years
  else 
    print *, 'isTrue = false'
  end if

  test_cycle: do i = 1, 10
    print *, 'cycle input: ',  i 
  end do test_cycle

end program hello

subroutine subprogram(test_message, number)
  implicit none
  integer :: number
  character(len=8) :: test_message

  print *, test_message , ' ' , number
end subroutine subprogram

function sum_numbers(first, second) result(sum_result)
   implicit none
   integer :: first, second, sum_result

   sum_result = first + second
end function sum_numbers
