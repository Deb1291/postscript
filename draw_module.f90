!  
! Contents  : Fortran-90 module to generate 2d plots in post-script format
! Author    : Debasmit Sarkar
! Generated : April 2019
! 

! Subroutines:

!  ----------------------------------------------------------------------------------------
!  (1) Circle(centre,radius,[linewidth,edgecolor,fill,color])
!
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!        centre     integer/real/real(kind=8)      array of 2 elements
!        radius     integer/real/real(kind=8)
! 
!       linewidth               real        (optional), default: according to present canvas size
!       edgecolor            character      (optional), see coloring format below, default: 'k'
!         fill                logical       (optional), default: .False.
!        color               character      (optional), see coloring format below, default: 'k'
!  ----------------------------------------------------------------------------------------


    
!  ----------------------------------------------------------------------------------------
!  (2) Rectangle(xy,dx,dy,[angle,linewidth,edgecolor,fill,color])
!
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!          xy       integer/real/real(kind=8)      array of 2 elements,position of bottom left vertex
!          dx       integer/real/real(kind=8)
!          dy       integer/real/real(kind=8)
! 
!        angle                  real        (optional), in degrees, default: 0 
!       linewidth               real        (optional), default: according to present canvas size
!       edgecolor            character      (optional), see coloring format below, default: 'k'
!         fill                logical       (optional), default: .False.
!        color               character      (optional), see coloring format below, default: 'k'
! 
!  ----------------------------------------------------------------------------------------


    
!  ----------------------------------------------------------------------------------------
!  (3) RegularPolygon(centre,numVertices,radius,[angle,linewidth,edgecolor,fill,color])
!
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!        centre      integer/real/real(kind=8)     array of 2 elements,position of bottom left vertex
!     numVertices              integer
!        radius      integer/real/real(kind=8)
! 
!        angle                  real        (optional), in degrees, default: 0 
!       linewidth               real        (optional), default: according to present canvas size
!       edgecolor            character      (optional), see coloring format below, default: 'k'
!         fill                logical       (optional), default: .False.
!        color               character      (optional), see coloring format below, default: 'k'
! 
!  ----------------------------------------------------------------------------------------


    
!  ----------------------------------------------------------------------------------------
!  (4) Polygon(x,y,[linewidth,edgecolor,fill,color])
!
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!           x        integer/real/real(kind=8)     array containing x values of vertices
!           y        integer/real/real(kind=8)     array containing y values of vertices
! 
!       linewidth               real        (optional), default: according to present canvas size
!       edgecolor            character      (optional), see coloring format below, default: 'k'
!         fill                logical       (optional), default: .False.
!        color               character      (optional), see coloring format below, default: 'k'
! 
!  ----------------------------------------------------------------------------------------


    
!  ----------------------------------------------------------------------------------------
!  (5) Curve(x,y,[linewidth,linecolor,fill,color,closepath])
!                   * to draw Bezier Curve
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!           x        integer/real/real(kind=8)     array containing x values of vertices
!           y        integer/real/real(kind=8)     array containing y values of vertices
! 
!       linewidth               real        (optional), default: according to present canvas size
!       linecolor            character      (optional), see coloring format below, default: 'k'
!         fill                logical       (optional), default: .False.
!        color               character      (optional), see coloring format below, default: 'k'
!      closepath              logical       (optional), default: .False.
! 
!  ----------------------------------------------------------------------------------------


    
!  ----------------------------------------------------------------------------------------
!  (6) Plot(x,y,[linewidth,color,marker,markersize,markeredgewidth,markeredgecolor,markerfill,markercolor])
!                   
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!           x        integer/real/real(kind=8)     array containing x values of vertices
!           y        integer/real/real(kind=8)     array containing y values of vertices
! 
!       linewidth               real        (optional), default: according to present canvas size
!        color               character      (optional), see coloring format below, default: 'k'
!        marker              character      (optional), Available:
!                                                               if: 'circle' or 'o' then circular marker 
!                                                             else: the character as it is.
!                                                       default: no marker. 
!      markersize               real        (optional), default: according to present canvas size
!   markeredgewidth             real        (optional), default: according to present canvas size
!   markeredgecolor          character      (optional), see coloring format below, default: 'k'
!      markerfill             logical       (optional), default: .False.
!     markercolor            character      (optional), see coloring format below, default: 'k'
! 
!  ----------------------------------------------------------------------------------------


    
!  ----------------------------------------------------------------------------------------
!  (7) Text(position,texts,[fontsize,font,alignment,angle,edgecolor,edgewidth,fill,color])
! 
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!       position     integer/real/real(kind=8)     array of 2 elements
!         text               character
! 
!       fontsize                real        (optional), default: according to present canvas size
!         font               character      (optional), default: 'Helvetica'
!       alignment            character      (optional), Available: 'no','left','centre','right'. default: 'no'
!        angle                  real        (optional), in degrees, default: 0
!      edgecolor             character      (optional), see coloring format below , default: 'k'
!      edgewidth                real        (optional), default: according to present canvas size
!        fill                 logical       (optional), default: .False.
!       color               character       (optional), see coloring format below , default: 'k'
!
!  ----------------------------------------------------------------------------------------


    
!  ----------------------------------------------------------------------------------------
!  (8) Axis([lim,xticks,yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites,
!                                           linewidth,color,gridwidth,gridcolor,fontsize,font])
! 
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!         lim                   real            (optional), array of size 4 (left,bottom,right,top)
!                                                           default: according to present canvas size
!        xticks                 real            (optional), array of x values where ticks are to be given
!        yticks                 real            (optional), array of y values where ticks are to be given
!      xticklabel             character         (optional), array of labels for x ticks
!      yticklabel             character         (optional), array of labels for y ticks
!        grid                  logical          (optional), default: .FALSE.
!        xlabel               character         (optional), default: " "
!        ylabel_              character         (optional), default: " "
!      opposites               logical          (optional), array of 2 elements, x_opposite and y_opposite
!                                                           default: (/.FALSE.,.FALSE./)
!      linewidth                real            (optional), default: according to present canvas size
!        color                character         (optional), see coloring format below , default: 'k'
!      gridwidth                real            (optional), default: according to present canvas size
!      gridcolor              character         (optional), see coloring format below , default: 'k'
!      fontsize                 real            (optional), default: according to present canvas size
!        font                 character         (optional), default: 'Helvetica'
!
!  ----------------------------------------------------------------------------------------


    
!  ----------------------------------------------------------------------------------------
!  (9) Savefig([filename,scale,aspect_ratio,page,orientation])
! 
!       
!       Arguments               Type                    Information
!     -------------        --------------       ----------------------------
!       filename             character          (optional), default: according to availability of file name
!                                                               in current folder
!        scale                 real             (optional), array of 2 elements
!                                                           default: according to present canvas size
!     aspect_ratio           character          (optional), Available: 'auto', 'stretch', ratio of y to x
!                                                           default: 'auto'
!        page                character          (optional), Available: 'A4','Letter','(width,height)'
!                                                           default: 'Letter'
!     orientation            character          (optional), Available: 'Potrait', 'Landscape'
!                                                           default: 'Potrait'
!
!  ----------------------------------------------------------------------------------------




module draw
    USE,INTRINSIC :: ISO_FORTRAN_ENV
    implicit none

    private
    public::Circle,Rectangle,RegularPolygon,Plot,Polygon,Curve,text,axis,savefig

    interface Circle 
        module procedure::Circle_real,Circle_real_8,Circle_integer
    end interface

    interface Rectangle
        module procedure::Rectangle_integer,Rectangle_real,Rectangle_real_8
    end interface

    interface RegularPolygon
        module procedure::RegularPolygon_integer,RegularPolygon_real,RegularPolygon_real_8
    end interface

    interface Polygon 
        module procedure::Polygon_integer,Polygon_real,Polygon_real_8 
    end interface

    interface Curve 
        module procedure::Curve_integer,Curve_real,Curve_real_8
    end interface Curve

    interface Plot 
        module procedure::Plot_integer,Plot_real,Plot_real_8
    end interface

    interface text 
        module procedure::text_integer,text_real,text_real_8
    end interface

    interface axis 
        module procedure::axis_integer,axis_real,axis_real_8
    end interface

    interface refine_limits
        module procedure::refine_limits_s,refine_limits_v
    end interface


    integer::ps             !file index
    real::xlim(2),ylim(2)
    logical::started=.false.


contains

    subroutine start()
        implicit none
        logical::not_available

        if (.not. started) then

            ps = 10
            do 
                inquire(ps,opened=not_available)
                if (.not. not_available) exit
                ps = ps+1
            end do

            open(unit=ps,status='scratch',action='READWRITE')
            
            started = .true.

            xlim = (/10000,-10000/)
            ylim = (/10000,-10000/)

        end if

    end subroutine start


    function convert(color) result(rgb)
        implicit none
        character,intent(in)::color*(*)
        real::rgb(3)
        integer::length

!       if color contains brackets then the values will be extracted from it
        if (color(1:1)=='(') then

            length = len(color)
            if (color(length:length)/=')') then
                write(error_unit, "('error in color format')")
                stop 
            end if 

            read(color(2:length-1),*,err=10) rgb(1:3)

            return
        end if


!       set the rgb values of colors by name
!       only first character of the color will be seen
        select case(color(1:1))

            case('y')
                rgb = (/1.0,1.0,0.0/)

            case('r')
                rgb = (/1.0,0.0,0.0/)

            case ('g')
                rgb = (/0.5,0.5,0.5/)

            case ('w')
                rgb = (/1.0,1.0,1.0/)

            case ('b')
                rgb = (/0.0,0.0,1.0/)

            case ('k')
                rgb = (/0.0,0.0,0.0/)

        end select

        return

    10  write(error_unit, "('error in color format')")
        stop 

    end function convert

    subroutine refine_limits_v(left,right,bottom,top)
        implicit none 
        real(kind=8)::left(:),right(:),bottom(:),top(:)
        integer::i,n

        n = size(left)

        do i=1,n 
            call refine_limits_s(left=left(i))
        end do 

        n = size(right)

        do i=1,n 
            call refine_limits_s(right=right(i))
        end do 
        
        n = size(bottom)

        do i=1,n 
            call refine_limits_s(bottom=bottom(i))
        end do 

            n = size(top)

        do i=1,n 
            call refine_limits_s(top=top(i))
        end do 

    end subroutine refine_limits_v


    subroutine refine_limits_s(left,right,bottom,top)
        implicit none
        real(kind=8),optional::left,right,bottom,top
        real(kind=8)::left_,right_,bottom_,top_

        if (present(left)) then
            left_ = left 
            if(xlim(1)>left_) xlim(1) = left_
        end if 

        if (present(right)) then
            right_ = right 
            if (xlim(2)<right_) xlim(2) = right_
        end if 

        if (present(bottom)) then 
            bottom_ = bottom 
            if (ylim(1)>bottom_) ylim(1) = bottom_
        end if 

        if (present(top)) then 
            top_ = top 
            if (ylim(2)<top_) ylim(2) = top_
        end if 

    end subroutine refine_limits_s



    subroutine Circle_integer(centre,radius,linewidth,edgecolor,fill,color)
        implicit none

        integer,intent(in)::centre(2),radius

        real,optional::linewidth
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        call Circle_real_8(1.0_8*centre,1.0_8*radius,linewidth,edgecolor,fill,color)

    end subroutine Circle_integer

    subroutine Circle_real(centre,radius,linewidth,edgecolor,fill,color)
        implicit none

        real,intent(in)::centre(2),radius

        real,optional::linewidth
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        call Circle_real_8(1.0_8*centre,1.0_8*radius,linewidth,edgecolor,fill,color)

    end subroutine Circle_real


    subroutine Circle_real_8(centre,radius,linewidth,edgecolor,fill,color)
        implicit none

        real(kind=8),intent(in)::centre(2),radius

        real,optional::linewidth
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        real::linewidth_,edgecolor_(3),color_(3)
        logical::fill_


        call start()

        call refine_limits(left=centre(1)-radius &
                            ,right=centre(1)+radius &
                            ,bottom=centre(2)-radius &
                            ,top=centre(2)+radius)


!       find the optional arguments
        if (present(linewidth)) then
            linewidth_ = linewidth
        else
!           auto find
            if ((xlim(2)-xlim(1))<=(ylim(2)-ylim(1))) then
                linewidth_ = 0.005*(xlim(2)-xlim(1))
            else
                linewidth_ = 0.005*(ylim(2)-ylim(1))
            end if 
        end if

        if (present(edgecolor)) then
            edgecolor_ = convert(edgecolor)
        else
            edgecolor_ = (/0.,0.,0./)
        end if 

        if (present(fill)) then
            fill_ = fill

            if(present(color)) then
                color_ = convert(color)
            else
                color_ = edgecolor_
            end if 

        else
            fill_ = .false.
        end if


!       write to the file
        write(ps,"(/,'% ',65('-'))")
        write(ps,"('% Circle: (',2ES14.5,')',' radius= ',ES14.5)") centre(1),centre(2),radius
        write(ps,"('% ',65('-'),/)")

!       set edge-width
        write(ps,"(ES14.5,' setlinewidth')") linewidth_

!       set edge-color
        write(ps,"(3ES14.5,' setrgbcolor')") edgecolor_

!       draw the circle
        write(ps,"(3ES14.5,' 0. 360. arc closepath')") centre(1),centre(2),radius

!       fill circle
        if (fill_) then
            write(ps,"('   gsave')")
            write(ps,"(3ES14.5,' setrgbcolor fill')") color_
            write(ps,"('   grestore')")
        end if 

        write(ps,"('   stroke',/)")

    end subroutine Circle_real_8


    subroutine Rectangle_integer(xy,dx,dy,angle,linewidth,edgecolor,fill,color)
        implicit none

        integer,intent(in)::xy(2),dx,dy

        real,optional::linewidth,angle
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        call Rectangle_real_8(1.0_8*xy,1.0_8*dx,1.0_8*dy,angle,linewidth,edgecolor,fill,color)

    end subroutine Rectangle_integer


    subroutine Rectangle_real(xy,dx,dy,angle,linewidth,edgecolor,fill,color)
        implicit none

        real,intent(in)::xy(2),dx,dy

        real,optional::linewidth,angle
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        call Rectangle_real_8(1.0_8*xy,1.0_8*dx,1.0_8*dy,angle,linewidth,edgecolor,fill,color)

    end subroutine Rectangle_real


    subroutine Rectangle_real_8(xy,dx,dy,angle,linewidth,edgecolor,fill,color)
        implicit none

        real(kind=8),intent(in)::xy(2),dx,dy
        real(kind=8)::x(4),y(4)

        real,optional::linewidth,angle
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        real::linewidth_,edgecolor_(3),color_(3),angle_
        logical::fill_



        call start()

!       finding out the four vertices co-ordinates
        angle_ = atan(1.0)*angle_/45.0

        x(1) = xy(1)
        y(1) = xy(2)
        x(2) = xy(1)+dx*cos(angle_)
        y(2) = xy(2)+dx*sin(angle_)
        x(3) = xy(1)+dx*cos(angle_)-dy*sin(angle_)
        y(3) = xy(2)+dx*sin(angle_)+dy*cos(angle_)
        x(4) = xy(1)-dy*sin(angle_)
        y(4) = xy(2)+dy*cos(angle_)


        call refine_limits(left=x &
                            ,right=x &
                            ,bottom=y &
                            ,top=y)

!       find the optional arguments
        if (present(angle)) then
            angle_ = angle
        else
            angle_ = 0.
        end if 

        if (present(linewidth)) then
            linewidth_ = linewidth
        else
!           auto find
            if ((xlim(2)-xlim(1))<=(ylim(2)-ylim(1))) then
                linewidth_ = 0.005*(xlim(2)-xlim(1))
            else
                linewidth_ = 0.005*(ylim(2)-ylim(1))
            end if 
        end if

        if (present(edgecolor)) then
            edgecolor_ = convert(edgecolor)
        else
            edgecolor_ = (/0.,0.,0./)
        end if 

        if (present(fill)) then
            fill_ = fill

            if(present(color)) then
                color_ = convert(color)
            else
                color_ = edgecolor_
            end if 

        else
            fill_ = .false.
        end if



!       write to the file
        write(ps,"(/,'% ',65('-'))")
        write(ps,"('% Rectangle about (',2ES14.5,')')") x(1),y(1)
        write(ps,"('%',5X,' dx: ',ES14.5,' dy: ',ES14.5,' angle: ',ES14.5)") dx,dy,45.0*angle_/atan(1.0)
        write(ps,"('% ',65('-'),/)")


!       set edge-width
        write(ps,"(ES14.5,' setlinewidth')") linewidth_

!       set edge-color
        write(ps,"(3ES14.5,' setrgbcolor')") edgecolor_

!       draw the rectangle
!       write(ps,"(2(ES14.5,2X),' moveto',3(2(F8.3,2X),' lineto '),'closepath')") x(1),y(1),x(2),y(2),x(3),y(3),x(4),y(4)
        write(ps,"(2ES14.5,' moveto')") x(1),y(1)
        write(ps,"(2ES14.5,' lineto')") x(2),y(2)
        write(ps,"(2ES14.5,' lineto')") x(3),y(3)
        write(ps,"(2ES14.5,' lineto')") x(4),y(4)
        write(ps,"('   closepath')")


!       fill rectangle
        if (fill_) then
            write(ps,"('   gsave')")
            write(ps,"(3ES14.5,' setrgbcolor fill')") color_
            write(ps,"('   grestore')")
        end if 

        write(ps,"('   stroke',/)")

    end subroutine Rectangle_real_8


    subroutine RegularPolygon_integer(centre,numVertices,radius,angle,linewidth,edgecolor,fill,color)
        implicit none

        integer,intent(in)::centre(2),radius
        integer,intent(in)::numVertices

        real,optional::linewidth,angle
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        call RegularPolygon_real_8(1.0_8*centre,numVertices,1.0_8*radius,angle,linewidth,edgecolor,fill,color)

    end subroutine RegularPolygon_integer


    subroutine RegularPolygon_real(centre,numVertices,radius,angle,linewidth,edgecolor,fill,color)
        implicit none

        real,intent(in)::centre(2),radius
        integer,intent(in)::numVertices

        real,optional::linewidth,angle
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        call RegularPolygon_real_8(1.0_8*centre,numVertices,1.0_8*radius,angle,linewidth,edgecolor,fill,color)

    end subroutine RegularPolygon_real


    subroutine RegularPolygon_real_8(centre,numVertices,radius,angle,linewidth,edgecolor,fill,color)
        implicit none

        real(kind=8),intent(in)::centre(2),radius
        integer,intent(in)::numVertices
        
        real(kind=8),allocatable::x(:),y(:)

        real,optional::linewidth,angle
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        real::linewidth_,edgecolor_(3),color_(3),angle_
        logical::fill_

        integer::i
        real*8::pi_by_4,a




        call start()

!       find the angle
        if (present(angle)) then
            angle_ = angle
        else
            angle_ = 0.
        end if 

!       finding out the four vertices co-ordinates
        pi_by_4 = atan(1.0)
        angle_ = pi_by_4*angle_/45.0

        allocate(x(numVertices),y(numVertices))
        a=8*pi_by_4/numVertices

        do i=1,numVertices
            x(i) = centre(1) + radius*sin((i-1.5)*a+angle_)
            y(i) = centre(2) - radius*cos((i-1.5)*a+angle_)
        end do 


        call refine_limits(left=x &
                            ,right=x &
                            ,bottom=y &
                            ,top=y)


!       find other optional arguments
        if (present(linewidth)) then
            linewidth_ = linewidth
        else
!           auto find
            if ((xlim(2)-xlim(1))<=(ylim(2)-ylim(1))) then
                linewidth_ = 0.005*(xlim(2)-xlim(1))
            else
                linewidth_ = 0.005*(ylim(2)-ylim(1))
            end if 
        end if

        if (present(edgecolor)) then
            edgecolor_ = convert(edgecolor)
        else
            edgecolor_ = (/0.,0.,0./)
        end if 

        if (present(fill)) then
            fill_ = fill

            if(present(color)) then
                color_ = convert(color)
            else
                color_ = edgecolor_
            end if 

        else
            fill_ = .false.
        end if



!       write to the file
        write(ps,"(/,'% ',65('-'))")
        write(ps,"('% Regular polygon of n=',I4)") numVertices
        write(ps,"('%',5X,'centre: (',2ES14.5,') r: ',ES14.5,' angle: ',F7.2)") centre,radius,angle_*45.0/pi_by_4
        write(ps,"('% ',65('-'),/)")

!       set edge-width
        write(ps,"(ES14.5,' setlinewidth')") linewidth_

!       set edge-color
        write(ps,"(3ES14.5,' setrgbcolor')") edgecolor_

!       draw the polygon
        write(ps,"(2ES14.5,' moveto')") x(1),y(1)

        do i=2,numVertices
            write(ps,"(2ES14.5,' lineto')") x(i),y(i)
        end do 

        write(ps,"('   closepath')")

!       fill polygon
        if (fill_) then
            write(ps,"('   gsave')")
            write(ps,"(3ES14.5,' setrgbcolor fill')") color_
            write(ps,"('   grestore')")
        end if 

        write(ps,"('   stroke',/)")

        deallocate(x,y)

    end subroutine RegularPolygon_real_8


    subroutine Polygon_integer(x,y,linewidth,edgecolor,fill,color)
        implicit none

        integer,intent(in)::x(:),y(:)

        real,optional::linewidth
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        call Polygon_real_8(1.0_8*x,1.0_8*y,linewidth,edgecolor,fill,color)

    end subroutine Polygon_integer


    subroutine Polygon_real(x,y,linewidth,edgecolor,fill,color)
        implicit none

        real,intent(in)::x(:),y(:)

        real,optional::linewidth
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        call Polygon(1.0_8*x,1.0_8*y,linewidth,edgecolor,fill,color)

    end subroutine Polygon_real


    subroutine Polygon_real_8(x,y,linewidth,edgecolor,fill,color)
        implicit none

        real(kind=8),intent(in)::x(:),y(:)

        real,optional::linewidth
        logical,optional::fill
        character,optional::edgecolor*(*),color*(*)

        real::linewidth_,edgecolor_(3),color_(3)
        logical::fill_

        integer::i,n

!       check x and y size
        n = size(x)
        if (size(y)/=n) then
            write(error_unit, "('mismatch in size of x and y')")
            stop  
        end if 


        call start()
        call refine_limits(left=x &
                            ,right=x &
                            ,bottom=y &
                            ,top=y)


!       find the optional arguments
        if (present(linewidth)) then
            linewidth_ = linewidth
        else
!           auto find
            if ((xlim(2)-xlim(1))<=(ylim(2)-ylim(1))) then
                linewidth_ = 0.005*(xlim(2)-xlim(1))
            else
                linewidth_ = 0.005*(ylim(2)-ylim(1))
            end if 
        end if

        if (present(edgecolor)) then
            edgecolor_ = convert(edgecolor)
        else
            edgecolor_ = (/0.,0.,0./)
        end if 

        if (present(fill)) then
            fill_ = fill

            if(present(color)) then
                color_ = convert(color)
            else
                color_ = edgecolor_
            end if 

        else
            fill_ = .false.
        end if



!       write to the file
        write(ps,"(/,'% ',65('-'))")

        if(x(n)==x(1) .and. y(n)==y(1)) then
            write(ps,"('% Polygon of n= 'I4)") n-1
        else
            write(ps,"('% Polygon of n= 'I4)") n
        end if
        write(ps,"('% ',65('-'),/)")


!       set edge-width
        write(ps,"(ES14.5,' setlinewidth')") linewidth_

!       set edge-color
        write(ps,"(3ES14.5,' setrgbcolor')") edgecolor_

!       draw the polygon
        write(ps,"(2(ES14.5,2X),' moveto')") x(1),y(1)

        do i=2,n
            write(ps,"(2ES14.5,' lineto')") x(i),y(i)
        end do 

        write(ps,"('   closepath')")

!       fill polygon
        if (fill_) then
            write(ps,"('   gsave')")
            write(ps,"(3ES14.5,'  setrgbcolor fill')") color_
            write(ps,"('   grestore')")
        end if 

        write(ps,"('   stroke',/)")

    end subroutine Polygon_real_8


    subroutine Curve_integer(x,y,linewidth,linecolor,fill,color,closepath)
        implicit none

        integer,intent(in)::x(:),y(:)

        real,optional::linewidth
        logical,optional::fill,closepath
        character,optional::linecolor*(*),color*(*)

        call Curve_real_8(1.0_8*x,1.0_8*y,linewidth,linecolor,fill,color,closepath)

    end subroutine Curve_integer


    subroutine Curve_real(x,y,linewidth,linecolor,fill,color,closepath)
        implicit none

        real,intent(in)::x(:),y(:)

        real,optional::linewidth
        logical,optional::fill,closepath
        character,optional::linecolor*(*),color*(*)

        call Curve_real_8(1.0_8*x,1.0_8*y,linewidth,linecolor,fill,color,closepath)

    end subroutine Curve_real


    subroutine Curve_real_8(x,y,linewidth,linecolor,fill,color,closepath)
        implicit none

        real(kind=8),intent(in)::x(:),y(:)

        real,optional::linewidth
        logical,optional::fill,closepath
        character,optional::linecolor*(*),color*(*)

        real::linewidth_,linecolor_(3),color_(3)
        logical::fill_,closepath_

        integer::i,n

!       check x and y size
        n = size(x)
        if (size(y)/=n) then
            write(error_unit, "(5X,'mismatch in size of x and y')")
            stop  
        end if 


        call start()
        call refine_limits(left=x &
                            ,right=x &
                            ,bottom=y &
                            ,top=y)



!       find the optional arguments
        if (present(linewidth)) then
            linewidth_ = linewidth
        else
!           auto find
            if ((xlim(2)-xlim(1))<=(ylim(2)-ylim(1))) then
                linewidth_ = 0.005*(xlim(2)-xlim(1))
            else
                linewidth_ = 0.005*(ylim(2)-ylim(1))
            end if 
        end if

        if (present(linecolor)) then
            linecolor_ = convert(linecolor)
        else
            linecolor_ = (/0.,0.,0./)
        end if 

        if (present(closepath)) then
            closepath_ = closepath
        else
            closepath_ = .false.
        end if 

        if (present(fill)) then
            fill_ = fill

            if(present(color)) then
                color_ = convert(color)
            else
                color_ = linecolor_
            end if 

        else
            fill_ = .false.
        end if


!       write to the file
        write(ps,"(/,'% ',65('-'))")
        write(ps,"('% Bezier Curve for ',I4,' points')") n
        write(ps,"('% ',65('-'),/)")

!       set edge-width
        write(ps,"(ES14.5,' setlinewidth')") linewidth_

!       set edge-color
        write(ps,"(3ES14.5,' setrgbcolor')") linecolor_

!       draw the polygon
        write(ps,"(2ES14.5,' moveto')") x(1),y(1)

        do i=2,n
            write(ps,"(2ES14.5)") x(i),y(i)
        end do 

        if (closepath_) then 
            write(ps,"(2ES14.5)") x(1),y(1)
        end if 

        write(ps,"('   curveto')")

!       fill polygon
        if (fill_) then
            write(ps,"('   gsave')")
            write(ps,"(3ES14.5,'  setrgbcolor fill')") color_
            write(ps,"('   grestore')")
        end if 

        write(ps,"('   stroke',/)")

    end subroutine Curve_real_8


    subroutine axis_integer(lim,xticks,yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites, &
        linewidth,color,gridwidth,gridcolor,fontsize)

        integer::lim(4)
        integer,optional::xticks(:),yticks(:)
        real,optional::linewidth,gridwidth,fontsize
        character(len=*),optional::xticklabel(:),yticklabel(:),xlabel,ylabel,color,gridcolor
        logical,optional::grid,opposites(2)

        call axis_real_8(1.0_8*lim,1.0_8*xticks,1.0_8*yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites, &
        linewidth,color,gridwidth,gridcolor,fontsize)

    end subroutine axis_integer


    subroutine axis_real(lim,xticks,yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites, &
        linewidth,color,gridwidth,gridcolor,fontsize)

        real::lim(4)
        real,optional::xticks(:),yticks(:)
        real,optional::linewidth,gridwidth,fontsize
        character(len=*),optional::xticklabel(:),yticklabel(:),xlabel,ylabel,color,gridcolor
        logical,optional::grid,opposites(2)

        call axis_real_8(1.0_8*lim,1.0_8*xticks,1.0_8*yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites, &
        linewidth,color,gridwidth,gridcolor,fontsize)

    end subroutine axis_real

    subroutine axis_real_8(lim,xticks,yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites, &
        linewidth,color,gridwidth,gridcolor,fontsize,font)

        real(kind=8),optional::lim(4),xticks(:),yticks(:)
        real,optional::linewidth,gridwidth,fontsize
        character(len=*),optional::xticklabel(:),yticklabel(:),xlabel,ylabel,color,gridcolor,font
        logical,optional::grid,opposites(2)

        real(kind=8)::xlim_(2),ylim_(2),linewidth_,color_(3),gridwidth_,gridcolor_(3)
        real(kind=8)::fontsize_
        real(kind=8),allocatable::xticks_(:),yticks_(:)
        character(len=50),allocatable::xticklabel_(:),yticklabel_(:),xlabel_,ylabel_
        character(len=50)::font_

        logical::grid_,opposites_(2),ticks_given(2)
        integer::nxticks,nyticks,i,charlength,labellength

!       find the optional arguments

        if (present(color)) then
            color_ = convert(color)
        else
            color_ = (/0.,0.,0./)
        end if 

        if (present(gridcolor)) then
            gridcolor_ = convert(gridcolor)
        else 
            gridcolor_ = color_
        end if 

        if (present(font)) then
            font_ = font 
        else
            font_ = "Helvetica"
        end if 


        if (present(lim)) then
            xlim_(1) = lim(1) ; xlim_(2) = lim(3)
            ylim_(1) = lim(2) ; ylim_(2) = lim(4) 
            
            call start()

!           over-ride global limits
            xlim(1) = xlim_(1) ; xlim(2) = xlim_(2)
            ylim(1) = ylim_(1) ; ylim(2) = ylim_(2)

        else
!           auto determine
            if (.not. started) then
                write(error_unit,"(5X,'can''t draw axis in an empty canvas')")
            else
                xlim_ = xlim 
                ylim_ = ylim
            end if
        end if 

        if (present(fontsize)) then
            fontsize_ = fontsize
        else
!           auto determine
            if ((xlim(2)-xlim(1))<=(ylim(2)-ylim(1))) then
                fontsize_ = 0.02*(xlim(2)-xlim(1))
            else
                fontsize_ = 0.02*(xlim(2)-xlim(1))
            end if
        end if

        if (present(linewidth)) then
            linewidth_ = linewidth
        else
            linewidth_ = 0.25*fontsize_
        end if

        if (present(gridwidth)) then
            gridwidth_ = gridwidth
        else
            gridwidth_ = 0.5*linewidth_
        end if 

        if (present(xticks)) then
            nxticks = size(xticks)
            allocate(xticks_(nxticks+2))
            xticks(1) = xlim_(1) ; xticks(nxticks) = xlim_(2)
            xticks(2:nxticks+1) = xticks(1:nxticks)
            ticks_given(1) = .true.
        else
            nxticks = 11
            allocate(xticks_(nxticks))
            allocate(xticklabel_(nxticks))
            
            do i=1,nxticks
                xticks_(i) = xlim_(1) + (i-1) * (xlim_(2)-xlim_(1))/10.0
                write(xticklabel_(i),"(ES9.2)") xticks_(i)
            end do 
            ticks_given(1) = .false.

        end if 

        if (present(yticks)) then
            nyticks = size(yticks)
            allocate(yticks_(nyticks+2))
            yticks(1) = ylim_(1) ; yticks(nyticks) = ylim_(2)
            yticks(2:nyticks+1) = yticks(1:nyticks)
            ticks_given(2) = .true.

        else
            nyticks = 11
            allocate(yticks_(nyticks))
            allocate(yticklabel_(nyticks))
            
            do i=1,nyticks
                yticks_(i) = ylim_(1) + (i-1) * (ylim_(2)-ylim_(1))/10.0
                write(yticklabel_(i),"(ES9.2)") yticks_(i)
            end do 
            ticks_given(2) = .false.

        end if 

        if (ticks_given(1)) then
            if(present(xticklabel)) then
                i = size(xticklabel)
                if (i/=nxticks) then
                    write(error_unit, "('mismatch in ticks label array and value array')")
                    stop 
                end if 

                allocate(xticklabel_(nxticks))
                xticklabel_(1:nxticks) = xticklabel(1:nxticks)

            else
                
                allocate(xticklabel_(nxticks))
                do i=1,nxticks 
                    write(xticklabel_(i),"(ES9.2)") xticks_(i)
                end do 

            end if

        end if 

        if (ticks_given(2)) then
            if(present(yticklabel)) then
                i = size(yticklabel)
                if (i/=nyticks) then
                    write(error_unit, "('mismatch in ticks label array and value array')")
                    stop 
                end if 

                allocate(yticklabel_(nyticks))
                yticklabel_(1:nyticks) = yticklabel(1:nyticks)

            else
                
                allocate(yticklabel_(nyticks))
                do i=1,nyticks 
                    write(yticklabel_(i),"(ES9.2)") yticks_(i)
                end do 

            end if

        end if 

        if (present(grid)) then
            grid_ = grid 
        else
            grid_ = .false.
        end if 

        if (present(xlabel)) then 
            xlabel_ = xlabel 
        else
            xlabel_ = " "
        end if 

        if (present(ylabel)) then
            ylabel_ = ylabel 
        else
            ylabel_ = " "
        end if 

        if (present(opposites)) then 
            opposites_ = opposites 
        else
            opposites_ = .false.
        end if 

!       write to ps file
        write(ps,"(2/,'% ',65('-'))")
        write(ps,"('% Putting axis to the Canvas ')")
        write(ps,"('% ',65('-'),/)")

!       set line-width
        write(ps,"(ES14.5,' setlinewidth')") linewidth_

!       set color
        write(ps,"(3ES14.5,' setrgbcolor')") color_

!       draw the xaxis
        write(ps,"(/,'% x-axis')")
        write(ps,"(2ES14.5,' moveto')") xlim_(1)-fontsize_,ylim_(1)
        write(ps,"(2ES14.5,' lineto stroke')") xlim_(2)+fontsize_,ylim_(1)

!       draw the yaxis
        write(ps,"(/,'% y-axis')")
        write(ps,"(2ES14.5,' moveto')") xlim_(1),ylim_(1)-fontsize_
        write(ps,"(2ES14.5,' lineto stroke')") xlim_(1),ylim_(2)+fontsize_

!       draw opposite lines
        if (opposites_(1)) then
            write(ps,"(/,'% x-opposite')")
            write(ps,"(2ES14.5,' moveto')") xlim_(1)-fontsize_,ylim_(2)
            write(ps,"(2ES14.5,' lineto stroke')") xlim_(2)+fontsize_,ylim_(2)
        end if 

        if (opposites_(2)) then
            write(ps,"(/,'% y-opposite')")
            write(ps,"(2ES14.5,' moveto')") xlim_(2),ylim_(1)-fontsize_
            write(ps,"(2ES14.5,' lineto stroke')") xlim_(2),ylim_(2)+fontsize_
        end if

!       draw the grid
        if (grid_) then

            write(ps,"(/,'% Grid: ')")

!           set line-width
            write(ps,"(ES14.5,' setlinewidth')") gridwidth_

!           set color
            write(ps,"(3ES14.5,' setrgbcolor')") gridcolor_

!           dotted grid
            write(ps,"('   1 setlinecap [',2ES14.5,'] 0 setdash')") gridwidth_,2*gridwidth_

            write(ps,"(/,'% y-parallel lines in grid: ')")

            do i=2,nxticks

                write(ps,"(2ES14.5,' moveto')") xticks_(i),ylim_(1)
                write(ps,"(2ES14.5,' lineto stroke')") xticks_(i),ylim_(2)

            end do 

            write(ps,"(/,'% x-parallel lines in grid: ')")

            do i=2,nyticks

                write(ps,"(2ES14.5,' moveto')") xlim_(1),yticks_(i)
                write(ps,"(2ES14.5,' lineto stroke')") xlim_(2),yticks_(i)

            end do 

            write(ps,"('   0 setlinecap [] 0 setdash')")

        end if



        write(ps,"(/,'   /',(A),' findfont',/,ES14.5,' scalefont setfont')") trim(font_),fontsize_


!       add x ticks
        write(ps,"(/,'% x-ticks: ')")

        do i=1,nxticks
            
            charlength = len(trim(xticklabel_(i)))
            
            write(ps,"(2ES14.5,' moveto ')",advance='no') xticks_(i)-charlength*fontsize_*0.25,ylim_(1)-1.75*fontsize_
            write(ps,"('(',A,') show')") trim(xticklabel_(i))

        end do 

!       add y ticks
        write(ps,"(/,'% y-ticks: ')")
        do i=1,nyticks 
            
            charlength = len(trim(yticklabel_(i)))
            
            write(ps,"(2ES14.5,' moveto ')",advance='no') xlim_(1)-fontsize_*(1+0.5*charlength) ,yticks_(i)-fontsize_*0.25
            write(ps,"('(',A,') show')") trim(yticklabel_(i))

        end do 

!       refine limits according to new values       
        call refine_limits(left=xlim_(1)-fontsize_*(1.5+0.5*charlength), &
                            right=xlim_(2)+fontsize_, &
                            bottom=ylim_(1)-1.75*fontsize_, &
                            top=ylim_(2)+fontsize_ )




!       add labels
        write(ps,"('   /',(A),' findfont',/,ES14.5,' scalefont setfont')") trim(font_),2.0*fontsize_

!       add xlabel
        labellength = len(trim(xlabel_))
        if (labellength>0) then
            write(ps,"(/,'% x-label: ')")
            write(ps,"(2ES14.5,' moveto ')",advance='no') 0.5*(xlim_(1)+xlim_(2))-labellength*0.5*fontsize_,ylim_(1)-4.0*fontsize_
            write(ps,"('(',A,') show')") trim(xlabel_)


            call refine_limits(bottom=ylim_(1)-4.0*fontsize_)

        end if 

!       add ylabel
!       write(ps,"('90 rotate')")
        labellength = len(trim(ylabel_))
        if (labellength>0) then
            write(ps,"(/,'% y-label: ')")
            write(ps,"(2ES14.5,' moveto')",advance='no') xlim_(1)-fontsize_*(3+0.5*charlength), &
                                                 0.5*(ylim_(1)+ylim_(2))-labellength*fontsize_*0.5
            write(ps,"(' 90 rotate ')",advance='no')
            write(ps,"('(',A,') show')") trim(ylabel_)
            write(ps,"('  -90 rotate',/)")


            call refine_limits(left=xlim_(1)-fontsize_*(3+0.5*charlength))

        end if 


    end subroutine axis_real_8


    subroutine Plot_integer(x,y,marker,markersize,markercolor,markeredgecolor,markeredgewidth,linewidth,color,markerfill)
        implicit none

        integer,intent(in)::x(:),y(:)

        character,optional::marker*(*),color*(*),markercolor*(*),markeredgecolor
        real,optional::markersize,linewidth,markeredgewidth

        logical,optional::markerfill

        call Plot_real_8(1.0_8*x,1.0_8*y,marker,markersize,markercolor, &
            markeredgecolor,markeredgewidth,linewidth,color,markerfill)
    

    end subroutine Plot_integer


    subroutine Plot_real(x,y,marker,markersize,markercolor,markeredgecolor,markeredgewidth,linewidth,color,markerfill)
        implicit none

        real,intent(in)::x(:),y(:)

        character,optional::marker*(*),color*(*),markercolor*(*),markeredgecolor
        real,optional::markersize,linewidth,markeredgewidth

        logical,optional::markerfill

        call Plot_real_8(1.0_8*x,1.0_8*y,marker,markersize,markercolor, &
            markeredgecolor,markeredgewidth,linewidth,color,markerfill)
    

    end subroutine Plot_real


    subroutine Plot_real_8(x,y,marker,markersize,markercolor,markeredgecolor,markeredgewidth,linewidth,color,markerfill)
        implicit none

        real(kind=8),intent(in)::x(:),y(:)

        character,optional::marker*(*),color*(*),markercolor*(*),markeredgecolor
        real,optional::markersize,linewidth,markeredgewidth

        logical,optional::markerfill

        character(len=:),allocatable::marker_
        real::color_(3),markercolor_(3),markeredgecolor_(3)
        real::markersize_,linewidth_,charlength,markeredgewidth_
        logical::fill_,marks

        integer::i,n

        n = size(x)
        if (size(y)/=n) then
            write(error_unit, "('size of x and y are not matching')")
            stop 
        end if 

        call start()
        call refine_limits(left=x &
                            ,right=x &
                            ,bottom=y &
                            ,top=y)



        if (present(linewidth)) then
            linewidth_ = linewidth
        else
!           auto determine
            if ((xlim(2)-xlim(1))<=(ylim(2)-ylim(1))) then
                linewidth_ = 0.005*(xlim(2)-xlim(1))
            else
                linewidth_ = 0.005*(ylim(2)-ylim(1))
            end if 

        end if 

        if (present(color)) then
            color_ = convert(color)
        else
            color_ = (/0.,0.,0./)
        end if 

        if (present(marker)) then
            allocate(marker_, source=marker)
            marks = .true.
        else
            marks = .false.
        end if 

        if(present(markersize)) then
            markersize_ = markersize 

            if (.not. marks) then
                allocate(marker_,source="o")
                marks = .true.
            end if 
        else
            if (marks) then
!               autodetermine
                markersize_ = 2*linewidth_
            end if 
        end if 

        if (present(markerfill)) then
            fill_ = markerfill
        else
            fill_ = .false.
        end if

        if (present(markercolor)) then
            markercolor_ = convert(markercolor)
        else
            markercolor_ = color_
        end if 

        if (present(markeredgecolor)) then
            markeredgecolor_ = convert(markeredgecolor)
        else
            markeredgecolor_ = markercolor_
        end if 

        if(present(markeredgewidth)) then
            markeredgewidth_ = markeredgewidth 
        else
            markeredgewidth_ = 1.0
        end if

!       write to the file
        write(ps,"(/,'% ',65('-'))")
        write(ps,"('% Dataplotter')")
        write(ps,"('% No. of data points: ',I6)") n
        write(ps,"('% ',65('-'),/)")


!       set line-width
        write(ps,"(ES14.5,' setlinewidth')") linewidth_

!       set color
        write(ps,"(3ES14.5,' setrgbcolor')") color_

!       draw the lines
        write(ps,"(2ES14.5,' moveto')") x(1),y(1)

        do i=2,n
            write(ps,"(2ES14.5,' lineto')") x(i),y(i)
        end do 

        write(ps,"('   stroke')")

!       put characters to the points
        if (marks) then 

!           if circle then draw a small circle with the desired properties
            if (marker=='o' .or. marker=='circle') then

                do i=1,n 
                    call Circle_real_8(centre=(/x(i),y(i)/),radius=1.0_8*markersize_,linewidth=markeredgewidth_ &
                        , edgecolor=markeredgecolor,fill=fill_,color=markercolor)
                end do 

            else 

                write(ps,"('   /Helvetica findfont',/,ES14.5,' scalefont setfont')") markersize_
                charlength = len(marker_)

                do i=1,n 
                    write(ps,"(2ES14.5,' moveto ')",advance='no') x(i)-charlength*markersize_*0.25,y(i)-markersize_*0.25
                    write(ps,"('(',A,') false charpath')") trim(marker)

                    if (fill_) then
                        write(ps,"('   gsave')")
                        write(ps,"(3ES14.5,' setrgbcolor fill',/,'grestore')") markercolor_
                    end if 

                    write(ps,"(ES14.5,'  setlinewidth')") markeredgewidth_
                    write(ps,"(3ES14.5,'  setrgbcolor stroke')") markeredgecolor_


!                   refine the limits
                    call refine_limits(left=x(i)-charlength*markersize_*0.25 &
                                        ,right=x(i)+charlength*markersize_*0.25 &
                                        ,bottom=y(i)-markersize_*0.25 &
                                        ,top=y(i)+markersize_*0.25)

                end do 



            end if 

        end if 

        write(ps,"(/)")


    end subroutine Plot_real_8


    subroutine text_integer(position,texts,fontsize,font,alignment,angle,edgecolor,edgewidth,color,fill)

        integer,intent(in)::position(2)
        character(len=*),intent(in)::texts

        character(len=*),optional::alignment,edgecolor,color,font
        real,optional::angle,fontsize,edgewidth
        logical,optional::fill

        call text_real_8(1.0_8*position,texts,fontsize,font,alignment,angle,edgecolor,edgewidth,color,fill)

    end subroutine text_integer


    subroutine text_real(position,texts,fontsize,font,alignment,angle,edgecolor,edgewidth,color,fill)

        real,intent(in)::position(2)
        character(len=*),intent(in)::texts

        character(len=*),optional::alignment,edgecolor,color,font
        real,optional::angle,fontsize,edgewidth
        logical,optional::fill

        call text_real_8(1.0_8*position,texts,fontsize,font,alignment,angle,edgecolor,edgewidth,color,fill)

    end subroutine text_real


    subroutine text_real_8(position,texts,fontsize,font,alignment,angle,edgecolor,edgewidth,color,fill)

        real(kind=8),intent(in)::position(2)
        character(len=*),intent(in)::texts

        character(len=*),optional::alignment,edgecolor,color,font
        real,optional::angle,fontsize,edgewidth
        logical,optional::fill

        character(len=20)::alignment_,font_
        real::edgecolor_(3),color_(3),angle_,fontsize_,sina,cosa,rangle_,edgewidth_
        real(kind=8)::x,y,xl,yl,xr,yr
        logical::fill_

        integer::charlength

        if (present(fontsize)) then
            fontsize_ = fontsize
        else 
            if (started) then
                if ((xlim(2)-xlim(1))<=(ylim(2)-ylim(1))) then 
                    fontsize_ = 0.01*(xlim(2)-xlim(1))
                else
                    fontsize_ = 0.01*(ylim(2)-ylim(1))
                end if
            else
                write(error_unit,"(5X,'can''t put text in an empty canvas')")
                stop
            end if
        end if 

        if (present(edgecolor)) then
            edgecolor_ = convert(edgecolor)
        else
            edgecolor_ = (/0.,0.,0./)
        end if 

        if (present(edgewidth)) then
            edgewidth_ = edgewidth
        else
            edgewidth_ = 0.1*fontsize_
        end if

        if (present(fill)) then
            fill_ = fill 

            if (present(color)) then
                color_ = convert(color)
            else
                color_ = edgecolor_
            end if 

        else 
            fill_ = .false.
        end if 

        if (present(angle)) then
            angle_ = angle 
        else 
            angle_ = 0.0
        end if 

        if (present(alignment)) then
            alignment_ = alignment
            call all_caps(alignment_)
        else
            alignment_ = "NO"
        end if 

        if (present(font)) then
            font_ = font 
        else
            font_ = "Helvetica"
        end if 

        call start()

        charlength = len(trim(texts))
        rangle_ = atan(1.0)*angle_/45.0
        cosa = cos(rangle_) ; sina = sin(rangle_)

        select case(alignment_)

            case('NO','LEFT')
                x = position(1)
                y = position(2)

                xl = x-0.25*fontsize_/sina ; xr = x+0.5*fontsize_*charlength*cosa
                yl = y ; yr = y+0.5*fontsize_*(charlength*sina+cosa)

            case('CENTRE')
                x = position(1)+0.25*fontsize_*(1./sina-(cosa*cosa)/sina-charlength*cosa)
                y = position(2)-0.25*fontsize_*(cosa+charlength*sina)

                xl = x-0.25*fontsize_/sina ; xr = x+0.5*fontsize_*charlength*cosa
                yl = y ; yr = y+0.5*fontsize_*(charlength*sina+cosa)


            case ('RIGHT')
                x = position(1)+0.25*fontsize_*(1./sina-(cosa*cosa)/sina-2*charlength*cosa)
                y = position(2)-0.25*fontsize_*(cosa+2*charlength*sina)

                xl = x-0.25*fontsize_/sina ; xr = x+0.5*fontsize_*charlength*cosa
                yl = y ; yr = y+0.5*fontsize_*(charlength*sina+cosa)

            case default
                write(error_unit, "('wrong alignment')")
                stop 

        end select

!       find limits
        call refine_limits(left=xl &
                            ,right=xr &
                            ,bottom=yl &
                            ,top=yr)

!       print in the file
        write(ps,"(/,'% ',65('-'))")
        write(ps,"('% Putting text in the file')")
        write(ps,"('% ',65('-'),/)")


!       print the character
        write(ps,"('   /',A,' findfont',/,ES14.5,' scalefont setfont')") trim(font_),fontsize_


        write(ps,"(2ES14.5,' moveto')",advance='no') x,y
        write(ps,"(ES14.5,' rotate')") angle_

        write(ps,"('   (',A,') false charpath')") trim(texts)

        if (fill_) then
            write(ps,"('   gsave')")
            write(ps,"(3ES14.5,'  setrgbcolor fill',/,'   grestore')") color_
        end if 

        write(ps,"(ES14.5,' setlinewidth')") edgewidth_
        write(ps,"(3ES14.5,' setrgbcolor stroke')") edgecolor_

        write(ps,"(ES14.5,' rotate',/)") -1*angle_


    end subroutine text_real_8


    subroutine all_caps(string)
        implicit none
        character(len=*)::string
        integer::i,n,ich

        n = len(string)

        do i=1,n 
            ich = ichar(string(i:i))
            if (ich>=97 .and. ich<=122) then 
                string(i:i) = char(ich-32)
            end if 
        end do 

    end subroutine



    subroutine savefig(filename,scale,aspect_ratio,page,orientation)
        implicit none

        real,optional::scale(2)
        character(len=*),optional::aspect_ratio,filename,page,orientation

        real::scale_(2),c(2)
        character(len=7)::aspect_ratio_
        character(len=:),allocatable::filename_,page_,orientation_

        integer::ps1,width,height

        character(len=13) ::file_name
        logical::not_available
        integer::i,io
        character(len=300)::line
        character(len=6)::ival

        logical::scaling,namegiven
        real::ytox


!       finding out optional arguments
        if (present(filename)) then
            allocate(filename_,source=filename)
            namegiven = .true.
        else
            namegiven = .false.
        end if

        if (present(page)) then
            allocate(page_,source=page)
            call all_caps(page_)
        else
            allocate(page_,source="LETTER")
        end if 

        if (present(orientation)) then
            allocate(orientation_,source=orientation)
            call all_caps(orientation_)
        else
            allocate(orientation_,source="POTRAIT")
        end if 

        if (present(scale)) then
            scale_ = scale
            scaling = .true.
        else
            scaling = .false.
        end if 

        if (present(aspect_ratio)) then
            aspect_ratio_ = aspect_ratio
            call all_caps(aspect_ratio_)
        else
            aspect_ratio_ = "AUTO"
        end if

        if (aspect_ratio_ /= "AUTO" .and. aspect_ratio_/="STRETCH") then
            read(aspect_ratio_,*,err=10) ytox
        end if 

!       determine page properties

!       A4 size:        width = 595, height = 842  (in points)
!       letter size:    width = 612, height = 792  (in points)
        select case(Page_)
            
            case ('A4')
                width = 595 ; height = 842

            case ('LETTER')
                width = 612 ; height = 792

            case default
                read(Page_(2:),*,err=20) width,height

        end select

        select case(orientation_)

            case ('LANDSCAPE')
                i = width ; width = height ; height = i 

        end select


!       opening the post-script file

        ps1 = 11
        do 
            inquire(ps1,opened=not_available)
            if (.not. not_available) exit
            ps1 = ps1+1
        end do

        if (namegiven) then

            open(ps1,file=filename_)
            write(ps1,"('<< /PageSize [',2I6,'] >> setpagedevice')") width,height
            write(ps1,"('%! Post-Script')")
            call write_declaration(ps1,filename_)
            deallocate(filename_)

        else

            i = 1
            do 
                write(ival,"(I6)") i
                file_name = 'figure-'//trim(adjustl(ival))//'.ps'
!               write(file_name,"('figure-',I3,'.ps')") i 
                open(ps1,file=file_name,status="OLD",err=11)
                close(ps1)
                i=i+1
            end do 

11          open(ps1,file=file_name,status='NEW')
            write(ps1,"('%!')")
            call write_declaration(ps1,trim(file_name))

        end if 


!       do necessary scalings here
        if (.not. scaling) then

    !       scaling
            c(1) = 1.0*(width-100)/(xlim(2)-xlim(1))
            c(2) = 1.0*(height-100)/(ylim(2)-ylim(1))

            scale_(1) = minval(c)
            if (aspect_ratio_=="AUTO") then
                scale_(2) = scale_(1)
            else if (aspect_ratio_=="STRETCH") then
                scale_(1) = c(1)
                scale_(2) = c(2)
            else
                scale_(2) = scale_(1)
                scale_(1) = scale_(2)/ytox
            end if

        end if

!       translate the plots so that the centre of canvas
!       matches with centre of the figure
        write(ps1,"(/,'% ',65('-'))")
        write(ps1,"('% Translating globally')")
        write(ps1,"('% ',65('-'),/)")
        write(ps1,"(2(ES14.5,2X),'translate')") -scale_(1)*xlim(1)+50.0,-scale_(2)*ylim(1)+50.0


        write(ps1,"(/,'% ',65('-'))")
        write(ps1,"('% Scaling globally')")
        write(ps1,"('% ',65('-'),/)")
        write(ps1,"(2(ES14.5,2X),'scale',/)") scale_(1:2)


!       copy the contents of the scratch file to ps1
        rewind(ps)

        do 
            read(ps,'(A)',iostat=io) line 
            if (io/=0) exit

            write(ps1,'(A)') trim(line)
        end do 

        write(ps1,"('showpage')")
        close(ps1)
        close(ps)

        return
        
10      write(error_unit, "('wrong aspect ratio')")
        stop

20      write(error_unit,"(5X,'Page type not recognized')")
        close(ps)
        stop

    end subroutine savefig

    subroutine write_declaration(unit_,filename)
        implicit none
        integer,intent(in)::unit_ 
        character(len=*),intent(in)::filename

        character(len=255)::cwd
        character(len=8)::date
        character(len=10)::time
        character(len=6)::month

        call getcwd(cwd)
        call date_and_time(Date=date,Time=time)

        select case(date(5:6))

            case("01")
                month = ' Jan, '

            case("02")
                month = ' Feb, '

            case("03")
                month = ' Mar, '

            case("04")
                month = ' Apr, '

            case("05")
                month = ' May, '

            case("06")
                month = ' Jun, '

            case("07")
                month = ' Jul, '

            case("08")
                month = ' Aug, '

            case("09")
                month = ' Sep, '

            case("10")
                month = ' Oct, '

            case("11")
                month = ' Nov, '

            case("12")
                month = ' Dec, '
        end select

!       this subroutine will write the declaration at the start of the file
        write(unit_, "('%% Creator: draw_module.f90 V 1.00 by Debasmit Sarkar')")
        write(unit_,"('%% Title: ')",advance='no')
        write(unit_, *) trim(cwd)//'/',filename
        write(unit_, "('%% CreationDate: ',(A))") date(7:8)//month//date(1:4) 
        write(unit_, "('%% CreationTime: ',(A))") time(1:2)//':'//time(3:4)//':'//time(5:6)
        write(unit_, "('%% Pages: 1')")
        write(unit_, "('%% BoundingBox: ',4ES9.0)") xlim,ylim
        write(unit_, "('%% EndComments',/)")


    end subroutine

end module
