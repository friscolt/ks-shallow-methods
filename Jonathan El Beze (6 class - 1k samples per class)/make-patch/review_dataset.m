%% Script 1:    Review dataset
% Makes a twice figure to validate that GT and I are the same kidney stone.
% Results are saved at a subfolder

%% AU-SEC
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
f_readfiles(dir_folder,dir_gt);

%% AU-SUR
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
f_readfiles(dir_folder,dir_gt);

%% BRU-SEC
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
f_readfiles(dir_folder,dir_gt);

%% BRU-SUR
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Phosphate de calcium (brushite - carbapatite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'Phosphate de calcium (brushite - carbapatite)/surface/'];
f_readfiles(dir_folder,dir_gt);

%% CYS-SEC
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Cystine/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
f_readfiles(dir_folder,dir_gt);

%% CYS-SUR
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Cystine/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
f_readfiles(dir_folder,dir_gt);

%% STR-SEC
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/PAM (phosphate ammoniacomagnesien - struvite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
f_readfiles(dir_folder,dir_gt);

%% STR-SUR
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/PAM (phosphate ammoniacomagnesien - struvite)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
f_readfiles(dir_folder,dir_gt);

%% WD/COD-SEC
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
f_readfiles(dir_folder,dir_gt);

%% WD/COD-SUR
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium dihydrate (C2)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
f_readfiles(dir_folder,dir_gt);

 
%% WW/COM-SEC
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium monohydrate (C1)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
f_readfiles(dir_folder,dir_gt);

%% WW/COM-SUR
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Oxalate de calcium monohydrate (C1)/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'surface/'];
f_readfiles(dir_folder,dir_gt);


%% BRU-SEC-VE-Complement!
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/IVd de brushite_Smash/brushite section/'
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
f_readfiles(dir_folder,dir_gt);

%% WD-SEC-VE-Complement!
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/b-IIb_weddellite_Sections/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
f_readfiles(dir_folder,dir_gt);

%% WD-SUR-VE-Complement!
clc; clear; close all;
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Vincent Estrade/a-IIb_weddellite_Surfaces/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = main_root;
f_readfiles(dir_folder,dir_gt);




%% 
disp('Done!')

%% Functions!
function f_readfiles(dir_folder,dir_gt)
addpath(dir_folder);
ext = 'jpg';
cont = 0;
dir_file = dir(fullfile(dir_folder,['*.', ext]));
dir_numberimages = numel(dir_file);
num_images = ['Number of images: ', num2str(dir_numberimages)]; disp(num_images); disp(" "); 

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
            new_message = [num2str(cont),' - OK: ', dir_name]; disp(new_message);
            figure;
            subplot(1,2,1); imshow(I); axis off; title(dir_name);
            subplot(1,2,2); imshow(logical(gt)); axis off; title(dir_name);
            saveas(gcf,dir_name); close all;      
        else
            new_message = ['Dimension error: ', dir_name];
            disp(new_message);
        end
    else
        message = ['Error in: ', newStr];
        disp(message);
    end
end
num_images = ['Number of images: ', num2str(dir_numberimages)]; disp(num_images); disp(" "); 
end