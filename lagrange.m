% Lagrange interpolation

function [Y] = lagrange(x, y, xp)
  
  n = size(x,2);
  %N = 1000; 
  x0 = x(1, 1);
  t = x0:0.1:xp;
  Y = zeros(2,length(t));
  for i = 1:length(t)
    f = 0;
    for j = 1:n
      p = 1;
      for k = 1:n
        if j == k
          continue;
        end
        p = p*(t(i)- x(1,k))/(x(1,j)-x(1,k));
      end
      f += y(1,j)*p;
    end
    Y(1, i) = t(i); % x value
    Y(2, i) = f; % y value
  end
  
  
end