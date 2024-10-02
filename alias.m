function alias()
    %ALIAS Demonstrate the aliasing effect for discrete sinusoidal functions.
    %
    % This function plots two discrete sinusoidal functions y[n] = sin(2πf n) 
    % for the frequencies f = 0.05 and f = 1.05. The purpose is to demonstrate 
    % the aliasing effect, where the higher frequency (f = 1.05) appears as if 
    % it's the lower frequency (f = 0.05) due to undersampling.
    %
    % The function generates a single plot with both sinusoidal functions 
    % overlapped. Different colors, line styles, and markers are used for each 
    % frequency to help distinguish between them.
    %
    % Example:
    %   alias()
    %
    % See also: stem, set_plot_style
    %
    
    n = 0:49;  % 50 samples
    frequencies = [0.05, 1.05];
   
    % Plot the four functions overlapped on the same figure
    figure;
    hold on;
    colors = ["g", "m"];
    lineStyles = {"-", ":",};
    marketStyles = {"o", "*"};
    legend_plot = {};
    for i = 1:length(frequencies)
        f = frequencies(i);
        y = sin(2*pi*f*n);
        stem(n, y, colors(i), 
            "LineStyle", lineStyles{i}, 
            "Marker", marketStyles{i},
            "LineWidth", i);
        legend_plot{end+1} = ["f = " num2str(f)];
    end
    set_plot_style(["y[n] = sin(2 * \\pi * f * n)"]);
    legend(legend_plot);

end