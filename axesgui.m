function axesgui(command_str)
if nargin < 1
	command_str = 'initialize';
end

if strcmp(command_str,'initialize')

	h_fig = figure(1);
    clf;
		
	c = uicontrol('Style','edit');
    uicontrol(c);

end;