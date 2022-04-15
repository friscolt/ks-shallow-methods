%% Script 3.v2: Number of patches 
% Produces the file results_num_patch.xlsx 
% |Index|Folder|Image|Percent|nPatches|Overlap|Window|perStone|
% The percent is of the entire image
% Number of patches  per image
% Total of patches: 


clc; clear; close all;
tic
wsize = 128; per = 95;
par = [wsize, per];


%% BRU-SEC
type_stone = 'BRU-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_bru_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% BRU-SEC-VE-Complement!
type_stone = 'BRU-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/IVd de brushite_Smash/brushite section/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
t_bru_sec_c = f_readfiles(dir_folder,dir_gt,type_stone,par);


%% WD/COD-SEC
type_stone = 'WD-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_wd_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% WD-SEC-VE-Complement!
type_stone = 'WD-SEC'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/b-IIb_weddellite_Sections/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
t_wd_sec_c = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% WD/COD-SUR
type_stone = 'WD-SUR'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_wd_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);
 
%% WD-SUR-VE-Complement!
type_stone = 'WD-SUR'; 
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/a-IIb_weddellite_Surfaces/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
t_wd_sur_c = f_readfiles(dir_folder,dir_gt,type_stone,par);

%% Concatenate tables
t__results = vertcat(   ...
                        t_bru_sec, t_bru_sec_c, ... 
                        t_wd_sec, t_wd_sur, ...
                        t_wd_sec_c, t_wd_sur_c);
                      
writetable(t__results,'results_num_patch_complement.xlsx')
toc


%% Only test
% t__results = t_bru_sec; % Test
% writetable(t__results,'results_num_patch_test.xlsx') % Test


%% Functions!

% Read files function!
% Requires: f_makepatch()

function t_folder = f_readfiles(dir_folder,dir_gt,type_stone,par)
addpath(dir_folder);
%overleap = par(1);
wsize = par(1);
per = par(2);
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
            nn_patch = zeros(1,9);
            contj = 1;
            for overlap = 20:10:100
                par = [wsize, per, overlap];
                npatch = f_make_patch(I,gt,newStr,par,type_stone);  % Patch function!!!
                nn_patch(1,contj) = npatch;
                contj = contj+1;
            end

            T = table(j,categorical({type_stone}),{dir_name},percent_pixels_gt,wsize,per, ...
                nn_patch(1), nn_patch(2), nn_patch(3), nn_patch(4), nn_patch(5), nn_patch(6), nn_patch(7), nn_patch(8), nn_patch(9),...
                'VariableNames',{'Index','Folder','Name','Percent','Window','perStone','20','30','40','50','60','70','80','90','100'});

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


% Patch function!!!

function npatch = f_make_patch(I,gt,newStr,par,type_stone)
wsize = par(1);
per = par(2);
overlap = par(3);
w = wsize/2;
counter = 0;
[rows,cols] = size(gt);
for x = 1+w:overlap:rows-w
    for y = 1+w:overlap:cols-w
        patch_gt = gt(x-w:x+w-1,y-w:y+w-1);
        gtpixels_patch = sum(sum(logical(patch_gt)));
        totalpixels_patch = wsize*wsize;
        percent = 100*(gtpixels_patch/totalpixels_patch);
        if(percent>per)
            %disp(percent);
            patch_I = I(x-w:x+w-1,y-w:y+w-1,:);
            counter = counter + 1; 
            name_img = newStr(1:end-4);
            message1 = [type_stone, ' >> ', name_img, ' - ', num2str(counter),'.png' ];
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