function tarea2
    %TAREA2 Execute a series of tasks related to discrete signal processing.
    %
    % This function performs a series of tasks, each related to discrete signal
    % processing. The function is organized into several parts, each calling a
    % different function to perform a specific task.
    %
    % The tasks are as follows:
    % 1. Clear all variables, close all figures, and clear the command window.
    % 2. Plot discrete sinusoidal functions for various frequencies.
    % 3. Execute the freq4 function with a parameter of 5.
    % 4. Execute the alias function to demonstrate aliasing effects.
    % 5. Play a tone with a frequency of 440 Hz.
    % 6. Execute the barrido function with parameters 3, 6, and 44100.
    % 7. Execute the sobreponer function with parameters 10, 0.05, 2, and 10.
    %
    % Example:
    %   tarea2()
    %
    % See also: plot_discrete_sinus, freq4, alias, playtone, barrido, sobreponer
    clear all;
    close all;
    clc;
    % Part 1 and Part 2
    plot_discrete_sinus();
    % Part 3
    freq4(5);
    % Part 4
    alias();
    % Part 5 and Part 6
    playtone(440);
    % Part 7
    barrido(3,6,44100);
    % Part 8
    sobreponer(10, 0.05, 2, 10);

end

function plot_discrete_sinus()
    %PLOT_DISCRETE_SINUS Plot discrete sinusoidal functions for various frequencies.
    %
    % This function plots the discrete sinusoidal function y[n] = sin(2πf n) 
    % for different values of frequency f. The frequencies used are 0.01, 0.02, 
    % 0.05, and 0.1. The function generates three types of plots:
    %
    % 1. Each sinusoidal function in its own separate window.
    % 2. All sinusoidal functions in the same window but in separate sections.
    % 3. All sinusoidal functions overlapped in a single plot.
    %
    % The overlapped plot uses different colors, line styles, and markers for 
    % each frequency to help distinguish between them.
    %
    % Example:
    %   plot_discrete_sinus()

    % Define values of n and f
    n = 0:49;  % 50 samples
    frequencies = [0.01, 0.02, 0.05, 0.1];

    % Each function in its own window
    for i = 1:length(frequencies)
        figure;
        f = frequencies(i);
        y = sin(2*pi*f*n);
        stem(n, y);
        set_plot_style(["y[n] = sin(2 * \\pi * " num2str(f) " * n)"]);
    end

    % Plot the four functions in the same figure but in separate sections
    figure;
    for i = 1:length(frequencies)
        subplot(2, 2, i);
        f = frequencies(i);
        y = sin(2*pi*f*n);
        stem(n, y);
        set_plot_style(["y[n] = sin(2 * \\pi * " num2str(f) " * n)"]);
    end

    % Plot the four functions overlapped on the same figure
    figure;
    hold on;
    colors = ["r", "g", "b", "m"];
    lineStyles = {"-", "--", ":", "-."};
    marketStyles = {"o", "+", "*", "."};
    for i = 1:length(frequencies)
        f = frequencies(i);
        y = sin(2*pi*f*n);
        stem(n, y, colors(i), 
            "LineStyle", lineStyles{i}, 
            "Marker", marketStyles{i},
            "LineWidth", i);
    end
    set_plot_style(["y[n] = sin(2 * \\pi * f * n)"]);
    legend("f = 0.01", "f = 0.02", "f = 0.05", "f = 0.1");
    hold off;
end
