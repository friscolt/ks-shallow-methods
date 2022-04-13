%% Script 2: Numbert of pixels
% Produces the file results_num_pixels.xlsx 
% | Index | Folder | Image | Percent |
% The percent is of the entire image 
% Total of images: 409.

clc; clear; close all;

%% AU-SEC

type_stone = 'AU-SEC'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_au_sec = f_readfiles(dir_folder,dir_gt,type_stone);

%% AU-SUR
type_stone = 'AU-SUR'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_au_sur = f_readfiles(dir_folder,dir_gt,type_stone);

%% BRU-SEC
type_stone = 'BRU-SEC'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_bru_sec = f_readfiles(dir_folder,dir_gt,type_stone);

%% BRU-SUR
type_stone = 'BRU-SUR'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_bru_sur = f_readfiles(dir_folder,dir_gt,type_stone);
 
%% CYS-SEC
type_stone = 'CYS-SEC'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Cystine/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_cys_sec = f_readfiles(dir_folder,dir_gt,type_stone);

%% CYS-SUR
type_stone = 'CYS-SUR'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Cystine/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_cys_sur = f_readfiles(dir_folder,dir_gt,type_stone);

%% STR-SEC
type_stone = 'STR-SEC'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/PAM (phosphate ammoniacomagnesien - struvite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_str_sec = f_readfiles(dir_folder,dir_gt,type_stone);

%% STR-SUR
type_stone = 'STR-SUR'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/PAM (phosphate ammoniacomagnesien - struvite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_str_sur =  f_readfiles(dir_folder,dir_gt,type_stone);

%% WD/COD-SEC
type_stone = 'WD-SEC'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_wd_sec = f_readfiles(dir_folder,dir_gt,type_stone);

%% WD/COD-SUR
type_stone = 'WD-SUR'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];t_wd_sur = f_readfiles(dir_folder,dir_gt,type_stone);
 
%% WW/COM-SEC
type_stone = 'WW-SEC'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium monohydrate (C1)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_ww_sec = f_readfiles(dir_folder,dir_gt,type_stone);

%% WW/COM-SUR
type_stone = 'WW-SUR'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium monohydrate (C1)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_ww_sur = f_readfiles(dir_folder,dir_gt,type_stone);

%% Concatenate tables
t__results = vertcat(   t_au_sec, t_au_sur, ...
                        t_bru_sec, t_bru_sur, ... 
                        t_cys_sec, t_cys_sur, ...
                        t_str_sec, t_str_sur, ...
                        t_wd_sec, t_wd_sur, ...
                        t_ww_sec, t_ww_sur);

writetable(t__results,'results_num_pixels.xlsx')

%% Functions!
function t_folder = f_readfiles(dir_folder,dir_gt,type_stone)
addpath(dir_folder);
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
            %new_message = [num2str(cont),' - OK: ', dir_name, ' -> ', num2str(percent_pixels_gt), '%']; % Modificar
            %disp(new_message); 
            %% Make table
            T = table(j,categorical({type_stone}),{dir_name},percent_pixels_gt,'VariableNames',{'Index','Folder','Name','Percent'});
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