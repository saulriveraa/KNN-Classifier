function X = cifar_10_1NN(x, trdata, trlabels)
% CIFAR_10_1NN(x, trdata, trlabels) gets the nearest data classification
% pont for the given data X, and the respective training data TRDATA and
% its labels TRLABELS.

    x = double(x);
    trdata = double(trdata);
    trlabels = double(trlabels);

    num_samp = size(x, 1);
    num_tra = size(trdata, 1);
    
    X = zeros(num_samp, 1);
    
    fprintf('\nSearching for sample: ');
    
    for sample = 1:num_samp
        
        R = repmat(x(sample, :), num_tra, 1);
        euc = sum((R - trdata).^2, 2);
        
        p_lab = euc == min(euc);
        
        aux = trlabels(p_lab);
        
        if length(aux) > 1
            X(sample) = aux(1);
        else
            X(sample) = aux;
        end
    

        if sample > 1

            for u = 0:log10(sample - 1)

                fprintf('\b'); 

            end

        end

      fprintf('%d', sample);
        
    end
    
    fprintf('    Done!');