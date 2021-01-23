% shrink_data_set  Reduces the number of data points in a data set to a 
% specified number.
%
%   X_shrunk = shrink_data_set(X,N) shrinks a matrix X (storing a data set)
%   so that it is left with only N rows. This syntax assumes the various 
%   variables are organized into separate columns. Therefore, X_shrunk will
%   be the original matrix X shrunk down to N data points.
%
%   X_shrunk = shrink_data_set(X,N,'columns') shrinks a matrix X (storing a 
%   data set) so that it is left with only N rows. The input 'columns' 
%   indicates that the variables are organized into separate columns, which
%   implies that to remove data points, we need to remove rows. Therefore,
%   X_shrunk will be the original matrix (i.e. data set) X shrunk down to N
%   data points.
%
%   X_shrunk = shrink_data_set(X,N,'rows') shrinks a matrix X (storing a 
%   data set) so that it is left with only N columns. The input 'rows' 
%   indicates that the variables are organized into separate rows, which 
%   implies that to remove data points, we need to remove columns. 
%   Therefore, X_shrunk will be the original matrix (i.e. data set) X 
%   shrunk down to N data points.
%
%   NOTE: Sometimes, the function will not be able to return exactly N
%   points (due to rounding issues). However, the purpose of this function
%   is mainly to reduce the size of a data set when not all the points are
%   needed. For example, plotting y = x^2 with 100 points rather than 1000
%   points will (to the naked eye) not be visually any worse, but will be a
%   lot faster for the computer to perform.
%
% See https://github.com/tamaskis/shrink_data_set-MATLAB for additional 
% documentation and examples. An example can also be found in EXAMPLE.m 
% (included with download).
%
% Copyright (c) 2021 Tamas Kis



%% FUNCTION

% INPUT: X - original data set
%        N - desired number of data points
%        data_organization - 'rows' if variables are separated into rows or
%                            'columns' if variables are separated into
%                            columns (OPTIONAL)
% OUTPUT: X_shrunk - updated data set with N data points
function X_shrunk = shrink_data_set(X,N,data_organization)
    
    % determines if variables are organized into rows or columns, and
    % defaults to 'columns' if not specified
    if nargin == 2
        type = 'columns';
    else
        type = data_organization;
    end
    
    % shrinks data set if variables organized into separate columns
    if strcmp(type,'columns')
        
        % determines original number of data points
        N_original = size(X,1);
        
        % determines indices of X to save
        save_ratio = round(N_original/N);
        save = 1:save_ratio:N_original;
       
        % returns shrunk data
        X_shrunk = X(save,:);
        
	% shrinks data set if variables organized into separate rows
    else
        
        % determines original number of data points
        N_original = size(X,2);
        
        % determines indices of X to save
        save_ratio = round(N_original/N);
        save = 1:save_ratio:N_original;
        
        % returns shrunk data
        X_shrunk = X(:,save);
        
    end
     
end
