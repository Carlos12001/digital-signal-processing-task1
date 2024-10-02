function set_plot_style(title_str = "")
    %SET_PLOT_STYLE Sets a standardized style for plots.
    %
    %   set_plot_style() applies a standardized style to the current plot, 
    %   including enabling the grid, setting a default font size, and 
    %   configuring the x and y labels. An optional title string can be 
    %   provided, which will be interpreted in TeX format.
    %
    %   Syntax:
    %       set_plot_style(title_str)
    %
    %   Input:
    %       title_str - (Optional) A string specifying the title of the plot. 
    %                   Default is an empty string.
    %
    %   Example:
    %       plot(1:10, sin(1:10));
    %       set_plot_style("Sine Wave");
    %
    grid on;
    set(gca, "FontSize", 24);
    title(title_str, "interpreter", 
    "tex");
    xlabel("n", "FontSize", 24);
    ylabel("y[n]", "FontSize", 24);
end
