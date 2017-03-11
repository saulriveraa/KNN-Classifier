function ac = cifar_10_evaluate(pred, gt)
% CIFAR_10_EVALUATE(pred, gt) gives the classification accuracy for predicted
% labels PRED as compared to the ground truth labels GT.

    pred = double(pred);
    gt = double(gt);

    a = pred == gt;
    ac = sum(a)/length(pred);
    
end
