function classes = cifar_10_rand(x)
% CIFAR_10_RAND(x) returns a random class label for the imput data
% provided x.
    
    classes = randi(max(x), length(x), 1);
    