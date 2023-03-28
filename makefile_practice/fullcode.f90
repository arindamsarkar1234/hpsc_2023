program demo
	print *, " In main program"
	call sub1()
	call sub2()
	call sub3()
end program demo


subroutine sub1()
	print *, "In sub1"
end subroutine sub1


subroutine sub2()
	print *, " In sub2"
end subroutine sub2


subroutine sub3()
	implicit none
	real :: a,b, result
	a=12.0
	b=15.6
	result = a+b
	print *, 'The sum is ', result
end subroutine sub3

