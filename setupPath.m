function bootcampsetup()
% Set up the MATLAB path for the course.

% We want all folders under "BootcampFiles" to be on the path for the course.
cd('..')
dirUp = pwd;
addpath(genpath([dirUp, filesep, 'BootcampFiles']))

% We don't want the test data folder on the path yet.
warning('off', 'MATLAB:rmpath:DirNotFound')
rmpath([dirUp, filesep, 'BootcampFiles', filesep, 'Test_Data'])
warning('on', 'MATLAB:rmpath:DirNotFound')

% Change back to the right directory.
cd('BootcampFiles')

end % setupCoursePaths