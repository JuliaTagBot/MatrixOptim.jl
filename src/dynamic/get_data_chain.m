
function s_data = get_data_chain(varargin)

l_total = 10;
n = 20;
m_total = 14;

s_data = struct(...
	'm', m_total / n, ...
	'g', 9.81, ...
	'l', l_total / n, ...
	'n', n, ...
	'h', 6, ...
	'z_0', 0, ...,
	'y_0', 0);