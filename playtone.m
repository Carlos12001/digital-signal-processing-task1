function playtone(frequency, Fs = 44100, duration = 1)
  %PLAYTONE Play a sinusoidal tone of a specified frequency.
  %
  % playtone(frequency) plays a sinusoidal tone of the specified frequency 
  % for 1 second with a default sampling rate of 44.1 kHz.
  %
  % playtone(frequency, Fs) plays the tone with the specified sampling rate 
  % Fs (in Hz).
  %
  % playtone(frequency, Fs, duration) plays the tone for the specified 
  % duration (in seconds).
  %
  % Inputs:
  % - frequency: Frequency of the tone in Hz.
  % - Fs: Sampling rate in Hz (default is 44100 Hz).
  % - duration: Duration of the tone in seconds (default is 1 second).
  %
  % Example:
  %   playtone(440)          % Play a 440 Hz tone for 1 second
  %   playtone(440, 22050)   % Play a 440 Hz tone for 1 second at 22.05 kHz
  %   playtone(440, 44100, 2)% Play a 440 Hz tone for 2 seconds at 44.1 kHz
  %
  % See also: audioplayer, playblocking
  %
  t = 0:1/Fs:duration-1/Fs;
  
  % Generate the tone
  y = sin(2 * pi * frequency * t);
  
  % Reproduce the tone
  player = audioplayer(y, Fs);
  playblocking(player);
end
