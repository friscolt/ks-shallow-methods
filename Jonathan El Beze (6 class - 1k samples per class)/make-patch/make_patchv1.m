%% Make patches v1 

%% AU-SEC
clc; clear; close all;
type_stone = 'AU-SEC'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_au_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);
save('AU_SEC.mat','t_au_sec')

%% AU-SUR
clc; clear; close all;
type_stone = 'AU-SUR'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_au_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);
save('AU_SUR.mat','t_au_sur')


%% BRU-SEC
clc; clear; close all;
type_stone = 'BRU-SEC'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_bru_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

% BRU-SEC-VE Complement!
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/IVd de brushite_Smash/brushite section/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
t_bru_sec_c = f_readfiles(dir_folder,dir_gt,type_stone,par);

t_bru_sec_cat = vertcat(t_bru_sec, t_bru_sec_c);
save('BRU_SEC.mat','t_bru_sec_cat')

%% BRU-SUR
clc; clear; close all;
type_stone = 'BRU-SUR';
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_bru_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);
save('BRU_SUR.mat','t_bru_sur')


%% CYS-SEC
clc; clear; close all;
type_stone = 'CYS-SEC';
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Cystine/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_cys_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);
save('CYS_SEC.mat','t_cys_sec')



%% CYS-SUR
clc; clear; close all;
type_stone = 'CYS-SUR'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Cystine/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_cys_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);
save('CYS_SUR.mat','t_cys_sur')


%% STR-SEC
clc; clear; close all;
type_stone = 'STR-SEC'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/PAM (phosphate ammoniacomagnesien - struvite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_str_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);
save('STR_SEC.mat','t_str_sec')


%% STR-SUR
clc; clear; close all;
type_stone = 'STR-SUR'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/PAM (phosphate ammoniacomagnesien - struvite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_str_sur =  f_readfiles(dir_folder,dir_gt,type_stone,par);
save('STR_SUR.mat','t_str_sur')


%% WD/COD-SEC
clc; clear; close all;
type_stone = 'WD-SEC'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_wd_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);

% WD-SEC-VE-Complement!
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/b-IIb_weddellite_Sections/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
t_wd_sec_c = f_readfiles(dir_folder,dir_gt,type_stone,par);

t_wd_sec_cat = vertcat(t_wd_sec, t_wd_sec_c);
save('WD_SEC.mat','t_wd_sec_cat')


%% WD/COD-SUR
clc; clear; close all;
type_stone = 'WD-SUR'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_wd_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);
 
% WD-SUR-VE-Complement!
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/a-IIb_weddellite_Surfaces/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
t_wd_sur_c = f_readfiles(dir_folder,dir_gt,type_stone,par);

t_wd_sur_cat = vertcat(t_wd_sur, t_wd_sur_c);
save('WD_SUR.mat','t_wd_sur_cat')

%% WW/COM-SEC
clc; clear; close all;
type_stone = 'WW-SEC'; 
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium monohydrate (C1)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_ww_sec = f_readfiles(dir_folder,dir_gt,type_stone,par);
save('WW_SEC.mat','t_ww_sec')


%% WW/COM-SUR
clc; clear; close all;
type_stone = 'WW-SUR';
wsize = 128; per = 95; par = [wsize, per];
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium monohydrate (C1)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
t_ww_sur = f_readfiles(dir_folder,dir_gt,type_stone,par);
save('WW_SUR.mat','t_ww_sur')

%% Load .mat

load("AU_SEC.mat")
load("AU_SUR.mat")
load("BRU_SEC.mat")
load("BRU_SUR.mat")
load("CYS_SEC.mat")
load("CYS_SUR.mat")
load("STR_SEC.mat")
load("STR_SUR.mat")
load("WD_SEC.mat")
load("WD_SUR.mat")
load("WW_SEC.mat")
load("WW_SUR.mat")



%% Concatenate tables
t__results = vertcat(   t_au_sec, t_au_sur, ...
                        t_bru_sec_cat, t_bru_sur, ... 
                        t_cys_sec, t_cys_sur, ...
                        t_str_sec, t_str_sur, ...                        
                        t_wd_sec_cat, t_wd_sur_cat, ...
                        t_ww_sec, t_ww_sur);

writetable(t__results,'results_patch.xlsx')


%% Functions!
% Read files function!
% Requires: f_makepatch()

function t_folder = f_readfiles(dir_folder,dir_gt,type_stone,par)
addpath(dir_folder);
wsize = par(1); per = par(2);
ext = 'jpg';
%cont = 0;
dir_file = dir(fullfile(dir_folder,['*.', ext]));
dir_numberimages = numel(dir_file);
num_images = ['Number of images: ', num2str(dir_numberimages)]; disp(num_images); 


save_folder = ['/Users/francisco/Desktop/', type_stone];
mkdir(save_folder)

for j = 1:1:dir_numberimages
    dir_name = dir_file(j).name; % Name of image
    I = imread(dir_name);
    [mI,nI,~] = size(I);

    load('overlap.mat'); % <- .mat file!
    index = find([files{:,2}] == dir_name);
    overlap = files{index,3};
    samples = files{index,4};

    newStr = strrep(dir_name,'jpg','png');
    gt_name = [dir_gt,newStr];
    if isfile(gt_name)
        gt = imread(gt_name);
        [mgt,ngt] = size(gt);
        if(mI == mgt && nI==ngt)
            par = [wsize, per, overlap, samples];
            if(overlap>=20)
                t_patch = f_make_patch(I,gt,newStr,par,type_stone,save_folder);  % Patch function!!!
                if(j==1)
                    t_folder = t_patch;
                else
                    t_folder = vertcat(t_folder,t_patch);
                end  
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

function t_patch = f_make_patch(I,gt,newStr,par,type_stone,save_folder)
wsize = par(1);
per = par(2);
overlap = par(3);
samples = par(4);
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
            patch_I = I(x-w:x+w-1,y-w:y+w-1,:);
            counter = counter + 1; 
            if(counter<=samples)
                name_img = [newStr(1:end-4),' - ', num2str(counter), '.png'];
                message1 = [type_stone, ' >> ', name_img];
                disp(message1) 

                % Write!
                filename = [save_folder,'/',name_img];
                imwrite(patch_I,filename);
    
                T = table(counter,categorical({type_stone}),{name_img},overlap,samples,percent,wsize,per,...
                    'VariableNames',{'Index','Folder','Patch','Overlap','Samples','Percent','Window','perStone'});
    
                if(counter==1)
                    t_patch = T;
                else
                    t_patch = vertcat(t_patch,T);
                end  
            end        
        end
    end 
end
end














