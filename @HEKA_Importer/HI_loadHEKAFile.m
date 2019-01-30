function HI_loadHEKAFile(obj)

% CHECK IF FILE EXISTS
if ~exist(obj.opt.filepath,'file')
    warning('File not found'); return
end

   
    
    % CREATE PRELIM STRUCTURE FOR EPHYS DATA
%     ephysData = struct();
    
    %% CALL IMPORT FUNCTION
    [dataTree, data, stimTree, solTree] = obj.HI_ImportHEKAtoMat;
    
    for i = length(data):-1:1
        dCollapse(1:length(data{i}))= data{i};
    end
    
    
%     [~,saveName] = fileparts(obj.opt.filepath);
    
    % Split the data into series by recording name, etc. and assign into
    % the final data structure
    
    obj.HI_SplitSeries(dCollapse,dataTree,stimTree);
    
    
    obj.HI_extractHEKADataTree(dataTree);
    obj.HI_extractHEKAStimTree(stimTree);
    obj.HI_extractHEKASolutionTree(solTree);



    

    obj.trees = struct('dataTree',{dataTree},'stimTree',{stimTree},'solutionTree',{solTree});

    
end
