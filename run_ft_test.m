% addpath('/path/to/Fieldtrip');
ft_default.trackusage = 'no';
ft_defaults;

cfg = [];
cfg.dataset = 'subj2.vhdr';
data_eeg = ft_preprocessing(cfg);

chansel = 1;
plot(data_eeg.time{1}, data_eeg.trial{1}(chansel, :));
xlabel('time (s)');
ylabel('channel amplitude (uV)');
legend(data_eeg.label(chansel));
