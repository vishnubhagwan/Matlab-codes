myVoice=audiorecorder(16000,8,1);
disp('Start speaking.');
record(myVoice,5);
disp('End of Recording.');
pause(.5);
voice=getaudiodata(myVoice);
% Impulse Response 1 effect on Env.
i1=audioread('i1.wav');
result1=conv(i1,voice);
play1=audioplayer(result1,16000);
disp('environment 1 voice is');
play(play1);
pause(1.5);
disp('environment 1 voice end');
% Impulse Response 2 effect on Env.
i2=audioread('i2.wav');
result2=conv(i2,voice);
play2=audioplayer(result2,16000);
disp('environment 2 voice is');
play(play2);
pause(1.5);
disp('environment 2 voice end');
% Impulse Response 3 effect on Env.
i3=audioread('i3.wav');
result3=conv(i3,voice);
play3=audioplayer(result3,16000);
disp('environment 3 voice is');
play(play3);
disp('environment 3 voice end');
