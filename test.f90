\program hello
  implicit none

  integer :: a
  integer :: b
  integer :: i
  logical :: isTrue = .true.
  character(len=5) :: yourName

  print *, 'Enter your name'
  read(*, *) yourName

  print *, 'Enter A: '
  read(*, *) a

  print *, 'Enter B: '
  read(*, *) b

  if (isTrue .eqv. .true.) then
  	print *, 'a + b = ', a + b
  	print *, yourName
  else 
  	print *, 'isTrue = false'
  end if

  test_cycle: do i = 1, 10
  	print *, i 
  end do test_cycle

end program hello
