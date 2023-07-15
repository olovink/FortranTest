program hello
  implicit none

  type :: human
    integer :: years
    character(len=10) :: name
  end type
  
  type(human) :: type_human
  integer :: a, b, i, result, sum_numbers
  logical :: isTrue = .true.

  print *, 'Enter your name'
  read(*, *) type_human%name

  print *, 'Enter your years'
  read(*, *) type_human%years

  print *, 'Enter A: '
  read(*, *) a

  print *, 'Enter B: '
  read(*, *) b

  if (isTrue) then
  	print *, 'a + b = ', sum_numbers(a, b)
  	print *, 'Your name: ', type_human%name
  	print *, 'Your years: ', type_human%years
  else 
  	print *, 'isTrue = false'
  end if

  test_cycle: do concurrent (i = 1:10)
  	result = i
  end do test_cycle

  print *, 'parrallel result: ' , i

  call subprogram("Hello World", 10)

end program hello

subroutine subprogram(test_message, number)
  implicit none
  integer :: number
  character(len=11) :: test_message

  print *, test_message , ' ' , number
end subroutine subprogram

function sum_numbers(first, second) result(sum_result)
   implicit none
   integer :: first, second, sum_result

   sum_result = first + second
end function sum_numbers
