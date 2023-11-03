program password_generator
  implicit none
  integer :: length, i, random_index
  character(len=62) :: charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
  character(len=20) :: password = ""

  write(*,*) "Enter the length of the password: "
  read(*,*) length

  do i = 1, length
    call random_number(random_index)
    random_index = floor(random_index * len(charset)) + 1
    password(i:i) = charset(random_index:random_index)
  end do

  write(*,*) "Your password is: ", password

end program password_generator
