% Denoise Using Butter filter

[b,a] = butter(2,0.1); % using second order filter
t = [0:0.001:0.5];
orig = 200*sin(30*t) + 100*cos(54*t); % signal to be denoised
noise = 30 * randn(1,501);
ip = orig + noise;
filtered = filter(b,a,ip);
subplot(3,2,1),plot(ip);
subplot(3,2,2),plot(filtered);




% Denoise Using Average filter

a = fspecial('average');
t = [0:0.001:0.5];
orig = 200*sin(30*t) + 100*cos(54*t); % signal to be denoised
noise = 30 * randn(1,501);
ip = orig + noise;
filtered = filter2(a,ip);
subplot(3,2,3),plot(ip);
subplot(3,2,4),plot(filtered);



% Denoise Using Median filter

t = [0:0.001:0.5];
orig = 200*sin(30*t) + 100*cos(54*t); % signal to be denoised
noise = 30 * randn(1,501);
ip = orig + noise;
filtered = medfilt1(ip);
subplot(3,2,5),plot(ip);
subplot(3,2,6),plot(filtered);
