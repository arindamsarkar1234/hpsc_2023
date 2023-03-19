program mysqrt
	implicit none
	real (kind=8) :: x, y, sqrt_true
	
	x=2.d0
	sqrt_true = sqrt(x)
	y = sqrt(x)  ! Uses our sqrtNT function
	print *, "x= ",x
	print *, "sqrt_true = ", sqrt_true
	print *, "sqrtNT = ", y
	print *, "error = ", sqrt_true-y
	
end program mysqrt


! sqrtNT function with newton raphson

function sqrtNT(x)
	implicit none
	real (kind=8), intent(in) :: x !function arguments
	real (kind=8) :: sqrtNT
	
	!local variables
	real (kind=8) :: s, tol, s_prev, delta_s
	integer :: kmax, k
	kmax=100
	s=1.d0
	tol=1.d-14
	
	do k=1, kmax
		s_prev=s
		s = 0.5*(s+x/s)
		delta_s = abs(s-s_prev)
		if(delta_s/x<tol) then
			exit
		endif
	
	enddo
	
	if(k<kmax) then 
		print *, "Newton's method did not converge for kmax interation; kmax= ", kmax
	endif
	
	sqrtNT = s

end function sqrtNT
