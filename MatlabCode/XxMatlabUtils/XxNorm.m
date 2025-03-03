function output = XxNorm(data, tmin, tmax)
% ------------------------------------------------------------------------
% XxNorm: perform percentile normaliztion to data
%
% usage:  output = XxNorm(data, tmin, tmax)
% where,
%    output      -- [0, 1] normalized data, data type is double
%    data        -- data to be normalized
%    tmin        -- [0, 100] signals below tmin% will be cut
%    tmax        -- [0, 100] signals above tmax% will be cut
%
% Auther: Chang Qiao
% Email: qc17@mails.tsinghua.edu.cn
% Date  : 2020/5/15
% ------------------------------------------------------------------------

if nargin < 3, tmax = 100; end
if nargin < 2, tmin = 0; end
data = double(data);
datamin = prctile(data(:), tmin);
datamax = prctile(data(:), tmax);
output = (data - datamin) / (datamax - datamin);
output(output < 0) = 0;

end