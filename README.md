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

Let's consider a data set with 10001 data points that are usually distributed in <img src="https://latex.codecogs.com/svg.latex?x" title="x" /> between <img src="https://latex.codecogs.com/svg.latex?x=0" title="x=0" /> and <img src="https://latex.codecogs.com/svg.latex?x=10" title="x=10" />. Additionally, let's define the dependent variable of this data set such that <img src="https://latex.codecogs.com/svg.latex?y_{i}=x_{i}&plus;\sin{(x_{i})}\;\forall\;i\;\in[0,1001]" title="y_{i}=x_{i}+\sin{(x_{i})}\;\forall\;i\;\in[0,1001]" />. The goal is to shrink this data set down to just 5 data points.

First, we need to define the data set. Let's definte it as row vectors.

    x = 0:0.01:10;
    y = x+sin(x);
    
To use the `shrink_data_set` function, we must first compile this data set into a matrix. Since `x` and `y` are defined as row vectors,

    X = [x,y];
    
Now, we can use the `shrink_data_set` function with the specification `'rows'` to indicate that the variables (i.e. <img src="https://latex.codecogs.com/svg.latex?x" title="x" /> and <img src="https://latex.codecogs.com/svg.latex?y" title="y" />) are separated into rows (in this case, <img src="https://latex.codecogs.com/svg.latex?x" title="x" /> occupies the first row while <img src="https://latex.codecogs.com/svg.latex?y" title="y" /> occupies the second row).

    X_shrunk = shrink_data_set(X,5,'rows');
        
The shrunk data set will have **6** data points, whereas we requested only **5**. However, there is no direct way to resolve this; we do not wish to remove the endpoints from the data set, we want to select the points as uniformly as possible, and we can only select integer indices.
