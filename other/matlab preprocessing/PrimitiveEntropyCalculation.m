%% Calculate entropy of one sequence

function S = entropyCalculation(sequenceIndice)

%% codonFraction contain information of the probability value for each codon

codonFraction=[0.12,0.23,0.45,0.20,0.30,0.70,0.65,0.35,...
    0.20,0.22,0.39,0.20,0.11,0.30,0.37,0.22,...
    0.21,0.47,0.16,0.11,0.42,0.58,0.60,0.40,...
    1.00,0.28,0.46,0.26,0.14,0.31,0.34,0.21,...
    1.00,0.30,0.62,0.38,0.23,0.47,0.57,0.43,...
    0.28,0.28,0.59,0.41,0.10,0.21,0.26,0.16,...
    0.04,0.07,0.14,0.06,0.32,0.68,0.64,0.36,...
    0.11,0.14,0.13,0.06,0.12,0.41,0.31,0.16];

seqVek=codonFraction(sequenceIndice);

S=sum(seqVek.*log(seqVek));

end