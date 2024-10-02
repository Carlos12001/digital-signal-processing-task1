function sobreponer(f_analog, Ts, k, N)
  %SOBREPONER Overlay a continuous-time signal, its samples, and its k-th alias.
  %
  % sobreponer(f_analog, Ts, k, N) overlays a continuous-time sinusoidal signal 
  % with frequency f_analog, its first N samples, and its k-th alias. The 
  % sampling interval is given by Ts.
  %
  % Inputs:
  % - f_analog: Frequency of the continuous-time sinusoidal signal (in Hz).
  % - Ts: Sampling interval (in seconds).
  % - k: Specifies the k-th alias to be plotted.
  % - N: Number of samples to be taken from the continuous-time signal.
  %
  % The function generates a plot where the continuous-time signal is shown in 
  % blue, the samples are shown as red stems, and the k-th alias is shown in green.
  %
  % Example:
  %   sobreponer(10, 0.05, 2, 10) 
  %   % Overlays a 10 Hz sinusoidal signal, its samples taken at intervals of 
  %   % 0.05 seconds, and its 2nd alias, using the first 10 samples.
  %
  % See also: plot, stem
  %

  t_continuous = 0:Ts/N:((N-1)*Ts);
  t_discrete = 0:Ts:(N-1)*Ts;
  
  % Continuous-time sinusoidal signal
  y_continuous = sin(2 * pi * f_analog * t_continuous);
  
  % First N samples
  y_samples = sin(2 * pi * f_analog * t_discrete);
  
  % Frequency of the k-th alias
  f_alias = k/Ts - f_analog;
  
  % Signal of the k-th alias
  y_alias = sin(2 * pi * f_alias * t_continuous);
  
  % Plot the signals
  figure;
  plot(t_continuous, y_continuous, 'b', 'LineWidth', 2); 
  hold on;
  stem(t_discrete, y_samples, 'r', 'filled'); 
  plot(t_continuous, y_alias, 'g', 'LineWidth', 1.5); 
  hold off;
  
  legend('Continuous Signal', 'Samples', 'k-th Alias');
  xlabel('Time (s)');
  ylabel('Amplitude');
  title('Overlay of Signal, Samples, and Alias');
  grid on;
end