# `shrink_data_set`

Reduces the number of data points in a data set to a specified number.


## Syntax

`X_shrunk = shrink_data_set(X,N)`\
`X_shrunk = shrink_data_set(X,N,'rows')`\
`X_shrunk = shrink_data_set(X,N,'columns')`


## Description

`X_shrunk = shrink_data_set(X,N)` shrinks a matrix `X` (storing a data set) so that it is left with only `N` rows. This syntax assumes the various variables are organized into separate columns. Therefore, `X_shrunk` will be the original matrix `X` shrunk down to `N` data points.

`X_shrunk = shrink_data_set(X,N,'columns')` shrinks a matrix `X` (storing a data set) so that it is left with only `N` rows. The input `'columns'` indicates that the variables are organized into separate columns, which implies that to remove data points, we need to remove rows. Therefore, `X_shrunk` will be the original matrix (i.e. data set) `X` shrunk down to `N` data points.

`X_shrunk = shrink_data_set(X,N,'rows')` shrinks a matrix `X` (storing a data set) so that it is left with only `N` columns. The input `'rows'` indicates that the variables are organized into separate rows, which implies that to remove data points, we need to remove columns. Therefore, `X_shrunk` will be the original matrix (i.e. data set) `X` shrunk down to `N` data points.

**NOTE:** Sometimes, the function will not be able to return exactly Npoints (due to rounding issues). However, the purpose of this function is mainly to reduce the size of a data set when not all the points are needed. For example, plotting <img src="https://latex.codecogs.com/svg.latex?y=x^{2}" title="y=x^{2}" /> with 100 points rather than 1000 points will (to the naked eye) not be visually any worse, but will be a lot faster for the computer to perform.

## Examples

Generate one random double between <img src="https://latex.codecogs.com/svg.latex?a=-2.3" title="a=-2.3" /> and <img src="https://latex.codecogs.com/svg.latex?b=5.5" title="b=5.5" />.

    X = rand2(-2,5)

    X =

        4.7975
    
Generate one random single between <img src="https://latex.codecogs.com/svg.latex?a=-20.1" title="a=-20.1" /> and <img src="https://latex.codecogs.com/svg.latex?b=-10" title="b=-10" />.

    X = rand2(-20.1,-10,[],'single')

    X =

      single

      -16.4349

Generate a <img src="https://latex.codecogs.com/svg.latex?5\times1" title="5\times1" /> vector of random integers between <img src="https://latex.codecogs.com/svg.latex?a=-100" title="a=-100" /> and <img src="https://latex.codecogs.com/svg.latex?b=100" title="b=100" />.

    X = rand2(-100,100,[5,1],'int')
    
    X =

        19
       -52
        69
        72
        93
        
Generate a <img src="https://latex.codecogs.com/svg.latex?10\times9" title="10\times9" /> matrix of random doubles between <img src="https://latex.codecogs.com/svg.latex?a=37.234" title="a=37.234" /> and <img src="https://latex.codecogs.com/svg.latex?b=49.5869" title="b=49.5869" />.

    X = rand2(37.234,49.5869,[10,9])
    
    X =

       41.5783   48.9087   48.2243   43.9763   46.7629   47.8149   47.2225   48.2973   46.3959
       47.1503   46.3074   42.5047   41.7195   46.2046   40.6686   39.8432   45.5151   47.0909
       46.9132   48.7850   38.0038   47.1557   39.3809   39.4256   43.5242   48.5833   44.3081
       44.1270   40.5826   43.9497   44.0783   47.0463   40.4757   48.9926   42.8177   46.7184
       40.8926   43.8141   40.2850   48.5330   38.2767   41.8502   41.9095   48.3437   41.6195
       45.4862   38.5658   40.4121   47.8212   42.5587   41.1579   38.5179   38.0642   40.4581
       40.5702   46.3256   41.5839   41.9215   46.0455   48.2024   40.3503   44.7134   41.4362
       43.0207   44.6218   39.0554   44.0104   46.5951   38.5645   42.3762   46.8118   44.4298
       42.2302   47.4289   46.2229   41.8135   42.0401   44.5193   41.6703   40.5628   47.1291
       43.9246   48.8710   46.2336   44.8508   46.1935   39.7919   40.5256   48.2572   41.1951
