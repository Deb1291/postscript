# Fortran Module to generate postscript
How to call the subroutine
--------------------------
Add the following line to call any subroutine:
* `USE DRAW`

Available subroutines:
----------------------
1. Circle(centre,radius,*linewidth,edgecolor,fill,color*)


      |  Arguments     |       Type                        |   Information                                            |
      |  --------------|-----------------------------------|----------------------------------------------------------|
      |  centre        |    `integer/real/real(kind=8)`    |   array of 2 elements                                    |
      |  radius        |    `integer/real/real(kind=8)`    |                                                          |
      |  linewidth     |    `real`                         |   (_optional_), _default_: according to present canvas size  |
      |  edgecolor     |    `character`                    |   (_optional_), see coloring format below, _default_: `'k'`    |
      |  fill          |    `logical`                      |   (_optional_), _default_: `.False.`                           |
      |  color         |    `character`                    |   (_optional_), see coloring format below, _default_: `'k'`    |



2. Rectangle(xy,dx,dy,*angle,linewidth,edgecolor,fill,color*)

      |  Arguments       |     Type                        |   Information                                             |
      |  -------------   |    -------------------------    |   -----------------------------------------------------   |    
      |  xy              |  `integer/real/real(kind=8)`    |   array of 2 elements,position of bottom left vertex      |
      |  dx              |  `integer/real/real(kind=8)`    |                                                           |
      |  dy              |  `integer/real/real(kind=8)`    |                                                           |
      |  angle           |  `real`                         |   (_optional_), in degrees, _default_: `0`                  |
      |  linewidth       |  `real`                         |   (_optional_), _default_: according to present canvas size |        
      |  edgecolor       |  `character`                    |   (_optional_), see coloring format below, _default_: `'k'`   |  
      |  fill            |  `logical`                      |   (_optional_), _default_: `.False.`                          |
      |  color           |  `character`                    |   (_optional_), see coloring format below, _default_: `'k'`   |  



3. RegularPolygon(centre,numVertices,radius,*angle,linewidth,edgecolor,fill,color*)

      |  Arguments       |     Type                        |   Information                                             |
      | -------------   |    -------------------------   |    -----------------------------------------------------    |
      | centre          |  `integer/real/real(kind=8)`   |    array of 2 elements,position of bottom left vertex       |
      | numVertices     |  `integer`                     |                                                             |
      | radius          |  `integer/real/real(kind=8)`   |                                                             |
      | angle           |  `real`                        |    (_optional_), in degrees, _default_: `0`                   |
      | linewidth       |  `real`                        |    (_optional_), _default_: according to present canvas size |
      | edgecolor       |  `character`                   |    (_optional_), see coloring format below, _default_: `'k'`  |
      | fill            |  `logical`                     |    (_optional_), _default_: `.False.`                         |
      | color           |  `character`                   |    (_optional_), see coloring format below, _default_: `'k'`  |



4. Polygon(x,y,*linewidth,edgecolor,fill,color*)

      | Arguments       |    Type                        |   Information                                              | 
      | -------------   |   -------------------------    |   -----------------------------------------------------    |
      | x               | `integer/real/real(kind=8)`    |   array containing x values of vertices                    |
      | y               | `integer/real/real(kind=8)`    |   array containing y values of vertices                    |
      | linewidth       | `real`                         |   (_optional_), _default_: according to present canvas size |
      | edgecolor       | `character`                    |   (_optional_), see coloring format below, _default_: `'k'`  |
      | fill            | `logical`                      |   (_optional_), _default_: `.False.`                         |
      | color           | `character`                    |   (_optional_), see coloring format below, _default_: `'k'`  |



5. Curve(x,y,*linewidth,linecolor,fill,color,closepath*)
                 * to draw Bezier Curve

     |  Arguments        |    Type                       |    Information                                          |
     |  -------------    |   -------------------------   |    -----------------------------------------------------|
     |  x                | `integer/real/real(kind=8)`   |    array containing x values                            |
     |  y                | `integer/real/real(kind=8)`   |    array containing y values                            |
     |  linewidth        | `real`                        |    (_optional_), _default_: according to present canvas size |
     |  linecolor        | `character`                   |    (_optional_), see coloring format below,             |
     |  fill             | `logical`                     |    (_optional_), _default_: `.False.`                   |
     |  color            | `character`                   |    (_optional_), see coloring format below, _default_: `'k'` |
      |  closepath       | `logical`                     |    (_optional_), _default_: `.False.`                  |



6. Plot(x,y,*linewidth,color,marker,markersize,markeredgewidth,markeredgecolor,markerfill,markercolor*)

      |  Arguments       |     Type                       |    Information                                              |
      |  -------------   |    -------------------------   |    -----------------------------------------------------    |
      |  x               |  `integer/real/real(kind=8)`   |    array containing x values of points to plot              |
      |  y               |  `integer/real/real(kind=8)`   |    array containing y values of points to plot              |
      |  linewidth       |  `real`                        |    (_optional_), _default_: according to present canvas size |
      |  color           |  `character`                   |    (_optional_), see coloring format below, _default_: `'k'` |
      |  marker          |  `character`                   |    (_optional_), Available:                                 |
      |                  |                                |      if: `'circle'` or `'o'` then circular marker           |
      |                  |                                |      else: the character as it is.                          |
      |                  |                                |      _default_: no marker.                                  |
      |  markersize      | `real`                         |  (_optional_), _default_: according to present canvas size  |
      |  markeredgewidth | `real`                         |  (_optional_), _default_: according to present canvas size  |
      |  markeredgecolor | `character`                    |  (_optional_), see coloring format below, _default_: `'k'`  |
      |  markerfill      | `logical`                      |  (_optional_), _default_: `.False.`                         |
      |  markercolor     | `character`                    |  (_optional_), see coloring format below, _default_: `'k'`  |



7. Text(position,texts,*fontsize,font,alignment,angle,edgecolor,edgewidth,fill,color*)

      |  Arguments       |     Type                       |    Information                                                  |
      |  -------------   |    -------------------------   |    -----------------------------------------------------        |
      |  position        |  `integer/real/real(kind=8)`   |    array of 2 elements                                          |
      |  text            |  `character`                   |                                                                 |
      |  fontsize        |  `real`                        |    (_optional_), _default_: according to present canvas size    |
      |  font            |  `character`                   |    (_optional_), _default_: `'Helvetica'`                       |
      |  alignment       |  `character`                   |    (_optional_), Available: `'no'`,`'left'`,`'centre'`,`'right'`  |
      |                  |                                |        _default_: `'no'`                                        |
      |  angle           |  `real`                        |    (_optional_), in degrees, _default_: `0`                     |
      |  edgecolor       |  `character`                   |    (_optional_), see coloring format below , _default_: `'k'`   |
      |  edgewidth       |  `real`                        |    (_optional_), _default_: according to present canvas size    |
      |  fill            |  `logical`                     |    (_optional_), _default_: `.False.`                           |
      |  color           |  `character`                   |    (_optional_), see coloring format below , _default_: `'k'`   |



8. Axis(*lim,xticks,yticks,xticklabel,yticklabel,grid,xlabel,ylabel,opposites,linewidth,color,gridwidth,gridcolor,fontsize,font*)

     |  Arguments       |     Type                       |    Information                                                  |
     |  -------------   |    -------------------------   |    -----------------------------------------------------        |
     |  lim             |  `real`                        |    (_optional_), array of size 4 (left,bottom,right,top)        |
     |                  |                                |        _default_: according to present canvas size              |
     |  xticks          |  `real`                        |    (_optional_), array of x values where ticks are to be given  |
     |                  |                                |    _default_: 11 equally spaced ticks according to canvas size/lim | 
     |  yticks          |  `real`                        |    (_optional_), array of y values where ticks are to be given  |
     |                  |                                |    _default_: 11 equally spaced ticks according to canvas size/lim |
     |  xticklabel      |  `character`                   |    (_optional_), array of labels for x ticks                    |
     |                  |                                |    _default_: numbers according to xticks                       |
     |  yticklabel      |  `character`                   |    (_optional_), array of labels for y ticks                    |
     |                  |                                |    _default_: numbers according to yticks                       |
     |  grid            |  `logical`                     |    (_optional_), _default_: `.FALSE.`                           |
     |  xlabel          |  `character`                   |    (_optional_), _default_: `" "`                               |
     |  ylabel_         |  `character`                   |    (_optional_), _default_: `" "`                               |
     |  opposites       |  `logical`                     |    (_optional_), array of 2 elements, x_opposite and y_opposite |
     |                  |                                |        _default_: `(/.FALSE.,.FALSE./)`                         |
     |  linewidth       |  `real`                        |    (_optional_), _default_: according to present canvas size    |
     |  color           |  `character`                   |    (_optional_), see coloring format below , _default_: `'k'`   |
     |  gridwidth       |  `real`                        |    (_optional_), _default_: according to present canvas size    |
     |  gridcolor       |  `character`                   |    (_optional_), see coloring format below , _default_: `'k'`   |
     |  fontsize        |  `real`                        |    (_optional_), _default_: according to present canvas size    |
     |  font            |  `character`                   |    (_optional_), _default_: `'Helvetica'`                       |



9. Savefig(*filename,scale,aspect_ratio,page,orientation*)

     |  Arguments       |     Type                       |    Information                                                      |
     |  -------------   |    -------------------------   |    -----------------------------------------------------            |
     |  filename        |  `character`                   |    (_optional_), _default_: according to availability of file name  |
     |                  |                                |        in current folder                                            |
     |  scale           |  `real`                        |    (_optional_), array of 2 elements                                |
     |                  |                                |        _default_: according to present canvas size                  |
     |  aspect_ratio    |  `character`                   |    (_optional_), Available: `'auto'`, `'stretch'`, ratio of y to x  |
     |                  |                                |        _default_: `'auto'`                                          |
     |  page            |  `character`                   |    (_optional_), Available: `'A4'`,`'Letter'`,                      |
     |                  |                                |  `'(_width_,_height_)'` where `_width_` & `_height_` are integer values |       
     |                  |                                |  denoting widths and heights of the canvas size in points           |
     |                  |                                |                                               (1 point=1/72 inches) |
     |                  |                                |        _default_: `'Letter'`                                        |
     |  orientation     |  `character`                   |    (_optional_), Available: `'Potrait'`, `'Landscape' `             |
     |                   |                               |      _default_: `'Potrait'`                                         |
                                                                
Color format
-------------
* `'r'` : Red
* `'k'` : Black
* `'y'` : Yellow
* `'g'` : Green
* `'w'` : White
* `'b'` : Blue
* `'(r,g,b)'`: For RGB format where `r`,`g`,`b` are three numbers between 0 and 1.
