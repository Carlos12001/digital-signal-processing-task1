function repair_homework1
  clc;clear;close all;
  part1();
endfunction

function part1()
  t = 0:0.0001:0.1;
  Fs = 44100/4;
  F = 440;
  

  # Genera la señal sinusoidal
  signal = sin(2 * pi * t * F);


  # Visualiza la señal
  figure;
  subplot(2,1,1);
  plot(t(1:100),signal(1:100));
  set_plot_style(["y[n] = sin(2 * \\pi * f * t)"]);
  t = 0:0.0001:0.1;
  Fs = 44100/4;
  F = F + Fs;
  

  # Genera la señal sinusoidal
  signal = sin(2 * pi * t * F);
  # Visualiza la señal
  subplot(2,1,2);
  plot(t(1:100),signal(1:100));
  set_plot_style(["y[n] = sin(2 * \\pi * f * t)"]);
endfunction
