program main
	use ISO_FORTRAN_ENV
	use draw
	implicit none


	call Circle(centre=(/0,0/),radius=50,edgecolor='r',fill=.true.,color='b',linewidth=1.0)
	call Rectangle(xy=(/250.0_8,250.0_8/),dx=500.0_8,dy=200.0_8,fill=.true.,color="(0.2,0.3,0.9)")


	call Circle(centre=(/-300.0_8,0.0_8/),radius=300.0_8,fill=.True.,color='(0.5,0.3,0.4)')
	call Circle(centre=(/-300.0_8,500.0_8/),radius=10.0_8)
	call Rectangle(xy=(/50.0_8,50.0_8/),dx=300.0_8,dy=400.0_8,angle=45.0,fill=.True.,color='r')
	call RegularPolygon(centre=(/0.0_8,0.0_8/),numVertices=6,radius=300.0_8,angle=90.0,fill=.True.,color='(0.4,0.0,0.0)')

	call Polygon(x=(/0.0_8,50.0_8,-130.0_8,186.0_8,0.0_8/),y=(/0.0_8,-150.0_8,0.0_8,120.0_8,0.0_8/),fill=.True.)
	call Curve(x=(/0.0_8,50.0_8,-130.0_8,186.0_8,0.0_8/),y=(/0.0_8,-150.0_8,0.0_8,120.0_8,0.0_8/),fill=.True.)

	call text(position=(/-50.0_8,0.0_8/),texts="this is the text",fontsize=30.,font="Helvetica", &
		alignment="centre",angle=90.0,edgecolor='r',edgewidth=0.3,color='b',fill=.True.)

	call Rectangle(xy=(/50.0_8,50.0_8/),dx=300.0_8,dy=400.0_8,angle=45.0,fill=.False.,color='r')
	
	call Plot(x=(/-200.0,-150.0,300.0,145.0/),y=(/400.0,225.0,900.0,210.25/),marker='o',markerfill=.True.,markeredgecolor='r')

	call text(position=(/-50.0_8,0.0_8/),texts="this is the text",fontsize=30.,font="Helvetica", &
		alignment="centre",angle=90.0,edgecolor='r',edgewidth=0.3,color='b',fill=.True.)

	call axis(grid=.True.,opposites=(/.true.,.true./),xlabel="myplot",ylabel="y axis")

	call savefig(filename="myfile.ps",orientation='landscape')

end program
