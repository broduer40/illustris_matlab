% Illustris Simulation: Public Data Release.

function [filePath] = gcPath(basePath,snapNum,chunkNum)
  % GCPATH  Return absolute path to a group catalog HDF5 file (modify as needed).
  if ~exist('chunkNum','var')
    chunkNum = 0;
  end
  
  gcPath = [basePath '/postprocessing/groups_new2/groups_' num2str(snapNum,'%03d') '/']; % TODO
  filePath = [gcPath 'groups_' num2str(snapNum,'%03d')];
  filePath = [filePath '.' num2str(chunkNum) '.hdf5'];
end
