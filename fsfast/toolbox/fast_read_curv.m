function [curv, fnum] = fast_read_curv(fname)
%
% [curv, fnum] = fast_read_curv(fname)
% reads a binary curvature file into a vector
%


%
% fast_read_curv.m
%
% Original Author: Doug Greve
% CVS Revision Info:
%    $Author: nicks $
%    $Date: 2011/03/02 00:04:05 $
%    $Revision: 1.3 $
%
% Copyright © 2011 The General Hospital Corporation (Boston, MA) "MGH"
%
% Terms and conditions for use, reproduction, distribution and contribution
% are found in the 'FreeSurfer Software License Agreement' contained
% in the file 'LICENSE' found in the FreeSurfer distribution, and here:
%
% https://surfer.nmr.mgh.harvard.edu/fswiki/FreeSurferSoftwareLicense
%
% Reporting: freesurfer@nmr.mgh.harvard.edu
%

% open it as a big-endian file
fid = fopen(fname, 'rb', 'b') ;
if (fid < 0)
 str = sprintf('could not open curvature file %s.', fname) ;
 error(str) ;
end

vnum = fread3(fid) ;
NEW_VERSION_MAGIC_NUMBER = 16777215;
if (vnum == NEW_VERSION_MAGIC_NUMBER)
  vnum = fread(fid, 1, 'int32') ;
  fnum = fread(fid, 1, 'int32') ;
  vals_per_vertex = fread(fid, 1, 'int32') ;
  curv = fread(fid, vnum, 'float') ; 
  fclose(fid) ;
else
  fnum = fast_fread3(fid) ;
  curv = fread(fid, vnum, 'int16') ./ 100 ; 
  fclose(fid) ;
end


