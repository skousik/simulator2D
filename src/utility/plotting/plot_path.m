function h = plot_path(P,varargin)
% plot_path(P,'property1',value1,'property2',value2,...)
% handle = plot_path(...)
%
% Plot a 2-by-N or 3-by-N array P, where each column of P is a point on a
% path.

    d = size(P,1) ;
    switch d
        case 2
            h = plot(P(1,:),P(2,:),varargin{:}) ;
        case 3
            h = plot3(P(1,:),P(2,:),P(3,:),varargin{:}) ;
        otherwise
            error('The input path must be 2D or 3D, as a 2- or 3-by-N array!')
    end
    
    if nargout < 1
        clear h
    end
end