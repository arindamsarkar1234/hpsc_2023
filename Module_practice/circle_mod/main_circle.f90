program main

	use circle_mod, only: pi, area
	implicit none
	real(kind=8) :: a
	
	
	print *, 'pi= ', pi
	
	
	a = area(2.d0)
	print *, 'area for a circle of radius 2: ', a
	
	
end program main
