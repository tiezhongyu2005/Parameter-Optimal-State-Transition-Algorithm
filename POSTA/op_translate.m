function State = op_translate(oldBest,newBest,SE,beta)
% translation
State = repmat(newBest,SE,1) + beta/(norm(newBest - oldBest) + eps)*rand(SE,1).*(newBest - oldBest);



