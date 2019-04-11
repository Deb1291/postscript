# Fortran Module to generate postscript

Available subroutines:
----------------------
1. Circle(centre,radius,*linewidth,edgecolor,fill,color*)


      |  Arguments     |       Type                        |   Information                                            |
      |  --------------|-----------------------------------|----------------------------------------------------------|
      |  centre        |      integer/real/real(kind=8)    |   array of 2 elements                                    |
      |  radius        |      integer/real/real(kind=8)    |                                                          |
      |  linewidth     |      real                         |   (_optional_), `default`: according to present canvas size  |
      |  edgecolor     |      character                    |   (_optional_), see coloring format below, `default`: 'k'    |
      |  fill          |      logical                      |   (_optional_), `default`: .False.                           |
      |  color         |      character                    |   (_optional_), see coloring format below, `default`: 'k'    |



2. Rectangle(xy,dx,dy,*angle,linewidth,edgecolor,fill,color*)

      |  Arguments       |     Type                        |   Information                                             |
      |  -------------   |    -------------------------    |   -----------------------------------------------------   |    
      |  xy              |    integer/real/real(kind=8)    |   array of 2 elements,position of bottom left vertex      |
      |  dx              |    integer/real/real(kind=8)    |                                                           |
      |  dy              |    integer/real/real(kind=8)    |                                                           |
      |  angle           |    real                         |   (_optional_), in degrees, `default`: 0                  |
      |  linewidth       |    real                         |   (_optional_), `default`: according to present canvas size |        
      |  edgecolor       |    character                    |   (_optional_), see coloring format below, `default`: 'k'   |  
      |  fill            |    logical                      |   (_optional_), `default`: .False.                          |
      |  color           |    character                    |   (_optional_), see coloring format below, `default`: 'k'   |  



3. RegularPolygon(centre,numVertices,radius,*angle,linewidth,edgecolor,fill,color*)

       | Arguments       |     Type                       |    Information                                              |
       | -------------   |    -------------------------   |    -----------------------------------------------------    |
       | centre          |    integer/real/real(kind=8)   |    array of 2 elements,position of bottom left vertex       |
       | numVertices     |    integer                     |                                                             |
       | radius          |    integer/real/real(kind=8)   |                                                             |
       | angle           |    real                        |    (_optional_), in degrees, `default`: 0                   |
       | linewidth       |    real                        |    (_optional_), `default`: according to present canvas size |
       | edgecolor       |    character                   |    (_optional_), see coloring format below, `default`: 'k'  |
       | fill            |    logical                     |    (_optional_), `default`: .False.                         |
       | color           |    character                   |    (_optional_), see coloring format below, `default`: 'k'  |



4. Polygon(x,y,*linewidth,edgecolor,fill,color*)

       | Arguments       |    Type                        |   Information                                              | 
       | -------------   |   -------------------------    |   -----------------------------------------------------    |
       | x               |   integer/real/real(kind=8)    |   array containing x values of vertices                    |
       | y               |   integer/real/real(kind=8)    |   array containing y values of vertices                    |
       | linewidth       |   real                         |   (_optional_), `default`: according to present canvas size |
       | edgecolor       |   character                    |   (_optional_), see coloring format below, `default`: 'k'  |
       | fill            |   logical                      |   (_optional_), `default`: .False.                         |
       | color           |   character                    |   (_optional_), see coloring format below, `default`: 'k'  |



5. Curve(x,y,*linewidth,linecolor,fill,color,closepath*)
                 * to draw Bezier Curve

      |  Arguments        |    Type                       |    Information                                          |
      |  -------------    |   -------------------------   |    -----------------------------------------------------|
      |  x                |   integer/real/real(kind=8)   |    array containing x values                            |
      |  y                |   integer/real/real(kind=8)   |    array containing y values                            |
      |  linewidth        |   real                        |    (_optional_), `default`: according to present canvas size |
      |  linecolor        |   character                   |    (_optional_), see coloring format below,             |
      |  fill             |   logical                     |    (_optional_), `default`: .False.                     |
      |  color            |   character                   |    (_optional_), see coloring format below,             |
      |  closepath        |   logical                     |    (_optional_), `default`: .False.                     |



6. Plot(x,y,*linewidth,color,marker,markersize,markeredgewidth,markeredgecolor,markerfill,markercolor*)

      |  Arguments       |     Type                       |    Information                                              |
      |  -------------   |    -------------------------   |    -----------------------------------------------------    |
      |  x               |    integer/real/real(kind=8)   |    array containing x values of vertices                    |
      |  y               |    integer/real/real(kind=8)   |    array containing y values of vertices                    |
      |  linewidth       |    real                        |    (_optional_), `default`: according to present canvas size |
      |  color           |    character                   |    (_optional_), see coloring format below, `default`: 'k'  |
      |  marker          |    character                   |    (_optional_), Available:                                 |
      |                  |                                |      if: 'circle' or 'o' then circular marker               |
      |                  |                                |      else: the character as it is.                          |
      |                  |                                |      `default`: no marker.                                  |
      |  markersize      |   real                         |  (_optional_), `default`: according to present canvas size  |
      |  markeredgewidth |   real                         |  (_optional_), `default`: according to present canvas size  |
      |  markeredgecolor |   character                    |  (_optional_), see coloring format below, `default`: 'k'    |
      |  markerfill      |   logical                      |  (_optional_), `default`: .False.                           |
      |  markercolor     |   character                    |  (_optional_), see coloring format below, `default`: 'k'    |



7. Text(position,texts,*fontsize,font,alignment,angle,edgecolor,edgewidth,fill,color*)

      |  Arguments       |     Type                       |    Information                                                  |
      |  -------------   |    -------------------------   |    -----------------------------------------------------        |
      |  position        |    integer/real/real(kind=8)   |    array of 2 elements                                          |
      |  text            |    character                   |                                                                 |
      |  fontsize        |    real                        |    (_optional_), `default`: according to present canvas size    |
      |  font            |    character                   |    (_optional_), `default`: 'Helvetica'                         |
      |  alignment       |    character                   |    (_optional_), Available: 'no','left','centre','right'.       |
      |                  |                                |        `default`: 'no'                                          |
      |  angle           |    real                        |    (_optional_), in degrees, `default`: 0                       |
      |  edgecolor       |    character                   |    (_optional_), see coloring format below , `default`: 'k'     |
      |  edgewidth       |    real                        |    (_optional_), `default`: according to present canvas size    |
      |  fill            |    logical                     |    (_optional_), `default`: .False.                             |
      |  color           |    character                   |    (_optional_), see coloring format below , `default`: 'k'     |



8. Axis(*lim,xticks,yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites,linewidth,color,gridwidth,gridcolor,fontsize,font*)

      |  Arguments       |     Type                       |    Information                                                  |
      |  -------------   |    -------------------------   |    -----------------------------------------------------        |
      |  lim             |    real                        |    (_optional_), array of size 4 (left,bottom,right,top)        |
      |                  |                                |        `default`: according to present canvas size              |
      |  xticks          |    real                        |    (_optional_), array of x values where ticks are to be given  |
      |  yticks          |    real                        |    (_optional_), array of y values where ticks are to be given  |
      |  xticklabel      |    character                   |    (_optional_), array of labels for x ticks                    |
      |  yticklabel      |    character                   |    (_optional_), array of labels for y ticks                    |
      |  grid            |    logical                     |    (_optional_), `default`: .FALSE.                             |
      |  xlabel          |    character                   |    (_optional_), `default`: " "                                 |
      |  ylabel_         |    character                   |    (_optional_), `default`: " "                                 |
      |  opposites       |    logical                     |    (_optional_), array of 2 elements, x_opposite and y_opposite |
      |                  |                                |        `default`: `(/.FALSE.,.FALSE./)`                         |
      |  linewidth       |    real                        |    (_optional_), `default`: according to present canvas size    |
      |  color           |    character                   |    (_optional_), see coloring format below , `default`: 'k'     |
      |  gridwidth       |    real                        |    (_optional_), `default`: according to present canvas size    |
      |  gridcolor       |    character                   |    (_optional_), see coloring format below , `default`: 'k'     |
      |  fontsize        |    real                        |    (_optional_), `default`: according to present canvas size    |
      |  font            |    character                   |    (_optional_), `default`: 'Helvetica'                         |



9. Savefig(*filename,scale,aspect_ratio,page,orientation*)

      |  Arguments       |     Type                       |    Information                                                      |
      |  -------------   |    -------------------------   |    -----------------------------------------------------            |
      |  filename        |    character                   |    (_optional_), `default`: according to availability of file name  |
      |                  |                                |        in current folder                                            |
      |  scale           |    real                        |    (_optional_), array of 2 elements                                |
      |                  |                                |        `default`: according to present canvas size                  |
      |  aspect_ratio    |    character                   |    (_optional_), Available: 'auto', 'stretch', ratio of y to x      |
      |                  |                                |        `default`: 'auto'                                            |
      |  page            |    character                   |    (_optional_), Available: 'A4','Letter','(width,height)'          |
      |                  |                                |        `default`: 'Letter'                                          |
      |  orientation     |    character                   |    (_optional_), Available: 'Potrait', 'Landscape'                  |
      |                   |                               |      `default`: 'Potrait'                                           |
                                                                
