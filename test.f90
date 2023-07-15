program hello
  implicit none

  integer :: a
  integer :: b
  integer :: i
  integer :: result
  logical :: isTrue = .true.
  character(len=5) :: yourName

  print *, 'Enter your name'
  read(*, *) yourName

  print *, 'Enter A: '
  read(*, *) a

  print *, 'Enter B: '
  read(*, *) b

  if (isTrue) then
  	print *, 'a + b = ', a + b
  	print *, yourName
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
