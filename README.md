# Fortran Module to generate postscript

Available subroutines:
----------------------
1. Circle(centre,radius,*linewidth,edgecolor,fill,color*)


      |  Arguments     |       Type                        |   Information                                            |
      |  --------------|-----------------------------------|----------------------------------------------------------|
      |  centre        |      integer/real/real(kind=8)    |   array of 2 elements                                    |
      |  radius        |      integer/real/real(kind=8)    |                                                          |
      |  linewidth     |      real                         |   (optional), default: according to present canvas size  |
      |  edgecolor     |      character                    |   (optional), see coloring format below, default: 'k'    |
      |  fill          |      logical                      |   (optional), default: .False.                           |
      |  color         |      character                    |   (optional), see coloring format below, default: 'k'    |



2. Rectangle(xy,dx,dy,*angle,linewidth,edgecolor,fill,color*)

        Arguments            Type                           Information
        -------------       -------------------------       -----------------------------------------------------
        xy                  integer/real/real(kind=8)       array of 2 elements,position of bottom left vertex
        dx                  integer/real/real(kind=8)
        dy                  integer/real/real(kind=8)
        angle               real                            (optional), in degrees, default: 0 
        linewidth           real                            (optional), default: according to present canvas size
        edgecolor           character                       (optional), see coloring format below, default: 'k'
        fill                logical                         (optional), default: .False.
        color               character                       (optional), see coloring format below, default: 'k'



3. RegularPolygon(centre,numVertices,radius,*angle,linewidth,edgecolor,fill,color*)

        Arguments            Type                           Information
        -------------       -------------------------       -----------------------------------------------------
        centre              integer/real/real(kind=8)       array of 2 elements,position of bottom left vertex
        numVertices         integer
        radius              integer/real/real(kind=8)
        angle               real                            (optional), in degrees, default: 0 
        linewidth           real                            (optional), default: according to present canvas size
        edgecolor           character                       (optional), see coloring format below, default: 'k'
        fill                logical                         (optional), default: .False.
        color               character                       (optional), see coloring format below, default: 'k'



4. Polygon(x,y,*linewidth,edgecolor,fill,color*)

        Arguments            Type                           Information
        -------------       -------------------------       -----------------------------------------------------
        x                   integer/real/real(kind=8)       array containing x values of vertices
        y                   integer/real/real(kind=8)       array containing y values of vertices
        linewidth           real                            (optional), default: according to present canvas size
        edgecolor           character                       (optional), see coloring format below, default: 'k'
        fill                logical                         (optional), default: .False.
        color               character                       (optional), see coloring format below, default: 'k'



5. Curve(x,y,*linewidth,linecolor,fill,color,closepath*)
                 * to draw Bezier Curve

        Arguments            Type                           Information
        -------------       -------------------------       -----------------------------------------------------
        x                   integer/real/real(kind=8)       array containing x values of ver
        y                   integer/real/real(kind=8)       array containing y values of ver
        linewidth           real                            (optional), default: according to prese
        linecolor           character                       (optional), see coloring format below, 
        fill                logical                         (optional), default: .False.
        color               character                       (optional), see coloring format below, 
        closepath           logical                         (optional), default: .False.



6. Plot(x,y,*linewidth,color,marker,markersize,markeredgewidth,markeredgecolor,markerfill,markercolor*)

        Arguments            Type                           Information
        -------------       -------------------------       -----------------------------------------------------
        x                   integer/real/real(kind=8)       array containing x values of vertices
        y                   integer/real/real(kind=8)       array containing y values of vertices
        linewidth           real                            (optional), default: according to present canvas size
        color               character                       (optional), see coloring format below, default: 'k'
        marker              character                       (optional), Available:
                                                                if: 'circle' or 'o' then circular marker 
                                                                else: the character as it is.
                                                                default: no marker. 
        markersize          real                            (optional), default: according to present canvas size
        markeredgewidth     real                            (optional), default: according to present canvas size
        markeredgecolor     character                       (optional), see coloring format below, default: 'k'
        markerfill          logical                         (optional), default: .False.
        markercolor         character                       (optional), see coloring format below, default: 'k'



7. Text(position,texts,*fontsize,font,alignment,angle,edgecolor,edgewidth,fill,color*)

        Arguments            Type                           Information
        -------------       -------------------------       -----------------------------------------------------
        position            integer/real/real(kind=8)       array of 2 elements
        text                character
        fontsize            real                            (optional), default: according to present canvas size
        font                character                       (optional), default: 'Helvetica'
        alignment           character                       (optional), Available: 'no','left','centre','right'. 
                                                                default: 'no'
        angle               real                            (optional), in degrees, default: 0
        edgecolor           character                       (optional), see coloring format below , default: 'k'
        edgewidth           real                            (optional), default: according to present canvas size
        fill                logical                         (optional), default: .False.
        color               character                       (optional), see coloring format below , default: 'k'



8. Axis(*lim,xticks,yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites,linewidth,color,gridwidth,gridcolor,fontsize,font*)

        Arguments            Type                           Information
        -------------       -------------------------       -----------------------------------------------------
        lim                 real                            (optional), array of size 4 (left,bottom,right,top)
                                                                default: according to present canvas size
        xticks              real                            (optional), array of x values where ticks are to be given
        yticks              real                            (optional), array of y values where ticks are to be given
        xticklabel          character                       (optional), array of labels for x ticks
        yticklabel          character                       (optional), array of labels for y ticks
        grid                logical                         (optional), default: .FALSE.
        xlabel              character                       (optional), default: " "
        ylabel_             character                       (optional), default: " "
        opposites           logical                         (optional), array of 2 elements, x_opposite and y_opposite
                                                                default: (/.FALSE.,.FALSE./)
        linewidth           real                            (optional), default: according to present canvas size
        color               character                       (optional), see coloring format below , default: 'k'
        gridwidth           real                            (optional), default: according to present canvas size
        gridcolor           character                       (optional), see coloring format below , default: 'k'
        fontsize            real                            (optional), default: according to present canvas size
        font                character                       (optional), default: 'Helvetica'



9. Savefig(*filename,scale,aspect_ratio,page,orientation*)

        Arguments            Type                           Information
        -------------       -------------------------       -----------------------------------------------------
        filename            character                       (optional), default: according to availability of file name
                                                                in current folder
        scale               real                            (optional), array of 2 elements
                                                                default: according to present canvas size
        aspect_ratio        character                       (optional), Available: 'auto', 'stretch', ratio of y to x
                                                                default: 'auto'
        page                character                       (optional), Available: 'A4','Letter','(width,height)'
                                                                default: 'Letter'
        orientation         character                       (optional), Available: 'Potrait', 'Landscape'
                                                                default: 'Potrait'
                                                                
