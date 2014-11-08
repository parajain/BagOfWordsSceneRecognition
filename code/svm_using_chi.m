function predicted_categories = svm_using_chi(train_image_feats, train_labels, test_image_feats)
    disp('Using chi-squared');
	trainData = train_image_feats;
	testData = test_image_feats;
	numTrain = size(trainData,1); numTest = size(testData,1);
	%calulating kernel and adding data point number
    kerneltrain =  [ (1:numTrain)' , chi2Kernel(trainData,trainData) ];
	kerneltest = [ (1:numTest)'  , chi2Kernel(testData,trainData)  ];
	categories = unique(train_labels); 
	num_categories = length(categories); 
    trainLabel = zeros(1,size(train_labels,1))';
	for class = 1 : num_categories
		binary_labels = strcmp(train_labels,categories(class)) * class;
		trainLabel = trainLabel + binary_labels;
	end

	model = svmtrain(trainLabel, kerneltrain, '-t 4');
    %model = svmtrain(trainLabel, kerneltrain);
	[predTrainLabel, acc, decVals] = svmpredict(trainLabel, kerneltest, model);
	predicted_categories = categories(predTrainLabel);
end



