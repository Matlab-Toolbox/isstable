function [ flag ] = isstable( b, a )
%ISSTABLE Analyses filter coefficients and determines if filter is stable
%   Detailed explanation goes here
  flag  = false;

  if nargin < 2
    % No Denominator (feedback) coefficients
    a  = zeros(size(b));
    a(:, 1) = 1;
  end

  %[z,p,k] = tf2zp(b,a) Do not use gain.
  [z,p,~] = tf2zp(b,a);

  if all(abs(z) <= 1) && all(abs(p) <= 1)
    flag = true;
  end

end
