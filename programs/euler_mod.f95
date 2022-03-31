program euler_mod
  use tools, only: oela, form_header3, line3, form_result2r, dp
  implicit none
  real(dp) :: x0, y0, h, x_point

  x0 = 0.0; y0 = 1.0; h = 0.05
  x_point = 0.25 !the value of x at which y is to be calculated

  write (*, form_header3) 'itn', 'x', 'y'
  write (*, line3) '-------', '-------', '-------'

  call mod_oela(x0, y0, x_point, h)

  print *, ''
  print *, 'result:'
  write (*, form_result2r) x0, '-- given value of x'
  write (*, form_result2r) y0, '-- the required value of y'
end program euler_mod
