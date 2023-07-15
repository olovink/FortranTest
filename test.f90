program hello
  implicit none

  integer :: a
  integer :: b
  logical :: isTrue = .true.
  character(len=5) :: yourName

  print *, 'Enter your name'
  read(*, *) yourName

  print *, 'Enter A: '
  read(*, *) a

  print *, 'Enter B: '
  read(*, *) b

  print *, 'a + b = ', a + b
  print *, yourNames
end program hello
