%% Script 3: Number of patches 
% Produces the file results_num_patch.xlsx 
% |Index|Folder|Image|Percent|nPatches|Overlap|Window|perStone|
% The percent is of the entire image
% Number of patches  per image
% Total of patches: 


clc; clear; close all;

overlap = 20;
wsize = 128;
per = 95;

par = [overlap, wsize, per];

%% AU-SEC

type_stone = 'AU-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_au_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% AU-SUR
type_stone = 'AU-SUR'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_au_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% BRU-SEC
type_stone = 'BRU-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_bru_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% BRU-SUR
type_stone = 'BRU-SUR';
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_bru_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);
 
%% CYS-SEC
type_stone = 'CYS-SEC';
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Cystine/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_cys_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% CYS-SUR
type_stone = 'CYS-SUR'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Cystine/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_cys_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% STR-SEC
type_stone = 'STR-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/PAM (phosphate ammoniacomagnesien - struvite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_str_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% STR-SUR
type_stone = 'STR-SUR'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/PAM (phosphate ammoniacomagnesien - struvite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_str_sur =  f_readfiles(dir_folder,dir_gt,type_stone,par);

%% WD/COD-SEC
type_stone = 'WD-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_wd_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% WD/COD-SUR
type_stone = 'WD-SUR'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_wd_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);
 
%% WW/COM-SEC
type_stone = 'WW-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium monohydrate (C1)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_ww_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% WW/COM-SUR
type_stone = 'WW-SUR';
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium monohydrate (C1)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_ww_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% Concatenate tables
t__results = vertcat(   t_au_sec, t_au_sur, ...
                        t_bru_sec, t_bru_sur, ... 
                        t_cys_sec, t_cys_sur, ...
                        t_str_sec, t_str_sur, ...
                        t_wd_sec, t_wd_sur, ...
                        t_ww_sec, t_ww_sur);

writetable(t__results,'results_num_patch.xlsx')



%% Functions!

%% Read files function!

% Requires: f_makepatch()
function t_folder = f_readfiles(dir_folder,dir_gt,type_stone,par)
addpath(dir_folder);
overleap = par(1);
wsize = par(2);
per = par(3);
%disp(type_stone);
ext = 'jpg';
cont = 0;
dir_file = dir(fullfile(dir_folder,['*.', ext]));
dir_numberimages = numel(dir_file);
num_images = ['Number of images: ', num2str(dir_numberimages)]; disp(num_images); 
for j = 1:1:dir_numberimages
    dir_name = dir_file(j).name; % Name of image
    I = imread(dir_name);
    [mI,nI,~] = size(I);
    newStr = strrep(dir_name,'jpg','png');
    gt_name = [dir_gt,newStr];
    if isfile(gt_name)
        gt = imread(gt_name);
        [mgt,ngt] = size(gt);
        if(mI == mgt && nI==ngt)
            cont = cont + 1;
            percent_pixels_gt = (100*sum(sum(gt)))/(mgt*ngt);
            disp(type_stone);
            npatch = f_make_patch(I,gt,newStr,par);  % Patch function!!!
            T = table(j,categorical({type_stone}),{dir_name},percent_pixels_gt,npatch,overleap,wsize,per,'VariableNames',{'Index','Folder','Name','Percent','nPatches','Overlap','Window','perStone'});
            if(j==1)
               t_folder = T;
            else
               t_folder = vertcat(t_folder,T);
            end 
        else
            new_message = ['Dimension error: ', dir_name];
            disp(new_message);
        end
    else
        message = ['Error in: ', newStr];
        disp(message);
    end
end
num_images = ['Total of images: ', num2str(dir_numberimages)]; disp(num_images); disp(" "); 
end



%% Patch function!!!

function npatch = f_make_patch(I,gt,newStr,par)
% disp("Patch function")
% par = [overlap, wsize, per];
overleap = par(1);
wsize = par(2);
per = par(3);
w = wsize/2;
counter = 0;
[rows,cols] = size(gt);
for x = 1+w:overleap:rows-w
    for y = 1+w:overleap:cols-w
        patch_gt = gt(x-w:x+w-1,y-w:y+w-1);
        gtpixels_patch = sum(sum(logical(patch_gt)));
        totalpixels_patch = wsize*wsize;
        percent = 100*(gtpixels_patch/totalpixels_patch);
        if(percent>per)
            %disp(percent);
            patch_I = I(x-w:x+w-1,y-w:y+w-1,:);
            counter = counter + 1; 
            name_img = newStr(1:end-4);
            message1 = [name_img, ' - ', num2str(counter),'.png' ];
            disp(message1)
%             figure; 
%             %title(newStr); 
%             %hold on;
%             subplot(1,2,1); imshow(patch_I);title(message1); 
%             subplot(1,2,2); imshow(logical(patch_gt));title(message1); 
%             pause(0.5);
%             close all;
        end
    end 
end
npatch = counter;
end
