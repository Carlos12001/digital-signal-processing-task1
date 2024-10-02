function barrido(multiplier, duration = 5, Fs = 44100)
  %BARRIDO Play a frequency sweep signal.
  %
  % barrido(multiplier) plays a frequency sweep signal that starts from 0 Hz 
  % and goes up to multiplier times the sampling rate over a default duration 
  % of 5 seconds and a default sampling rate of 44.1 kHz.
  %
  % barrido(multiplier, duration) plays the sweep for the specified 
  % duration (in seconds).
  %
  % barrido(multiplier, duration, Fs) plays the sweep with the specified 
  % sampling rate Fs (in Hz).
  %
  % Inputs:
  % - multiplier: Factor to determine the end frequency of the sweep. The sweep 
  %               will go from 0 to multiplier times the sampling rate.
  % - duration: Duration of the sweep in seconds (default is 5 seconds).
  % - Fs: Sampling rate in Hz (default is 44100 Hz).
  %
  % Example:
  %   barrido(2)               % Play a sweep from 0 to 2*44.1 kHz over 5 seconds
  %   barrido(2, 10)           % Play a sweep from 0 to 2*44.1 kHz over 10 seconds
  %   barrido(2, 10, 22050)    % Play a sweep from 0 to 2*22.05 kHz over 10 seconds at 22.05 kHz
  %
  % See also: audioplayer, playblocking
  %

  t = 0:1/Fs:duration-1/Fs;
  
  % Generate the sweep signal from 0 to multiplicator * Fs
  y = sin(2 * pi * (multiplier * Fs) * (t.^2) / (2 * duration));
  
  % Reproduce the tone
  player = audioplayer(y, Fs);
  playblocking(player);
end
