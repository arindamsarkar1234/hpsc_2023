module circle_mod

	implicit none
	real(kind=8), parameter :: pi = 3.141592653589793d0
	
contains

	real(kind=8) function area(r)
		real(kind=8), intent(in) :: r
		area = pi * r**2
	end function area
	
	real(kind=8) function circum(r)
		real(kind=8), intent(in) :: r
		circum = 2.d0 * pi * r
	end function circum
	
end module circle_mod
