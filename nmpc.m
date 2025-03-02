Vdc = 800;
L = 2e-3;
R = 0.1;
fs = 10000;
Ts = 1 / fs;
Np = 10;
Nc = 5;
id_max = 30;
iq_max = 30;
m_max = 1;
Q = [1 0; 0 1];
R_weight = [0.1 0; 0 0.1];
id_meas = 15;
iq_meas = 10;
id_ref = 20;
iq_ref = 0;
vd = 325;
vq = 0;
num_steps = 100;

id_values = zeros(num_steps, 1);
iq_values = zeros(num_steps, 1);
md_values = zeros(num_steps, 1);
mq_values = zeros(num_steps, 1);

for k = 1:num_steps
    x_current = [id_meas; iq_meas];
    x_ref = [id_ref; iq_ref];
    error = x_ref - x_current;

    md = (2 / Vdc) * (L * (R / L * id_meas - fs * iq_meas + Q(1,1) * error(1)) + vd);
    mq = (2 / Vdc) * (L * (R / L * iq_meas + fs * id_meas + Q(2,2) * error(2)) + vq);

    md = max(min(md, m_max), -m_max);
    mq = max(min(mq, m_max), -m_max);

    md_values(k) = md;
    mq_values(k) = mq;

    did_dt = (vd - R * id_meas + md * Vdc) / L;
    diq_dt = (vq - R * iq_meas + mq * Vdc) / L;

    id_meas = id_meas + did_dt * Ts;
    iq_meas = iq_meas + diq_dt * Ts;

    id_values(k) = id_meas;
    iq_values(k) = iq_meas;
end

figure;
subplot(2,1,1);
plot(1:num_steps, id_values, 'r', 'DisplayName', 'i_d');
hold on;
plot(1:num_steps, iq_values, 'b', 'DisplayName', 'i_q');
title('Current Trajectories');
xlabel('Time Step');
ylabel('Current (A)');
legend;

subplot(2,1,2);
plot(1:num_steps, md_values, 'r', 'DisplayName', 'm_d');
hold on;
plot(1:num_steps, mq_values, 'b', 'DisplayName', 'm_q');
title('Modulation Indices');
xlabel('Time Step');
ylabel('Modulation Index');
legend;