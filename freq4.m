function freq4( N )
    %FREQ4 Generates a figure with 4 subplots of sinusoidal signals.
    %
    %   freq4(N) produces a figure with 4 subplots, each displaying a 
    %   sinusoidal signal with a different frequency. The frequencies are:
    %   0.01, 0.02, 0.05, and 0.1. The argument N specifies the number of points 
    %   to be generated for each signal.
    %
    %   Example:
    %       freq4(100) will produce sinusoidal signals with 100 points.
    %
    %   Input:
    %       N - Number of points for each sinusoidal signal.
    %
    %   Output:
    %       A figure with 4 subplots.
    %
    n = 0:N-1; 
    frequencies = [0.01, 0.02, 0.05, 0.1];
    figure;
    for i = 1:length(frequencies)
        subplot(2, 2, i);
        f = frequencies(i);
        y = sin(2*pi*f*n);
        stem(n, y);
        set_plot_style(["y[n] = sin(2 * \\pi * " num2str(f) " * n)"]);
    end
end 