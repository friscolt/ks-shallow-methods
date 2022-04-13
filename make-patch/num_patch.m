%% Script 3: Number of patches 
% Produces the file results_num_patch.xlsx 
% | Index | Folder | Image | Percent | nPatch |
% The percent is of the entire image
% Number of patches  per image
% Total of patches: 


clc; clear; close all;

%% AU-SEC
type_stone = 'AU-SEC'; disp(type_stone);
main_root = '/Volumes/GoogleDrive/.shortcut-targets-by-id/1ff-9VbvOKoB6_0PaJ_71I8gayZMHkkTe/Proyecto_CalculosRenales/Imagenes/Dataset/Jonathan Elbeze/Labeled/Acide urique/';
dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
dir_folder = [main_root, 'section/'];
t_au_sec = f_readfiles(dir_folder,dir_gt,type_stone);

%% Functions!

%% Read files function!
% Requires: f_makepatch()
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
    [mI,nI,nnI] = size(I);
    newStr = strrep(dir_name,'jpg','png');
    gt_name = [dir_gt,newStr];

    if isfile(gt_name)
        gt = imread(gt_name);
        [mgt,ngt] = size(gt);
        
        if(mI == mgt && nI==ngt)
            cont = cont + 1;
            %percent_pixels_gt = (100*sum(sum(gt)))/(mgt*ngt);
            %new_message = [num2str(cont),' - OK: ', dir_name, ' -> ', num2str(percent_pixels_gt), '%']; % Modificar
            %disp(new_message); 
            
            %% Patch function!!!
             
            npatch = f_make_patch(I,gt,newStr);  % Patch function!!!

%             %% Make table
%             T = table([j],categorical({type_stone}),{dir_name},[percent_pixels_gt],'VariableNames',{'Index','Folder','Name','Percent'});
%             if(j==1)
%                t_folder = T;
%             else
%                 t_folder = vertcat(t_folder,T);
%             end 
            %% 
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
function npatch = f_make_patch(I,gt,newStr)
disp("Patch function")

overleap = 20;
wsize = 256;
per = 95;

w = wsize/2;
counter = 0;

[rows,cols] = size(gt);

for x = 1+w:overleap:rows-w
    for y = 1+w:overleap:cols-w
        %disp(x); disp(y);
        patch_gt = gt(x-w:x+w-1,y-w:y+w-1);

        gtpixels_patch = sum(sum(logical(patch_gt)));
        totalpixels_patch = wsize*wsize;
        percent = 100*(gtpixels_patch/totalpixels_patch);

        if(percent>per)
            
            disp(percent);
            patch_I = I(x-w:x+w-1,y-w:y+w-1,:);

            counter = counter + 1; 
            name_img = newStr(1:end-4);

            message1 = [name_img, ' - ', num2str(counter),'.png' ];
            disp(message1)

            figure; 
            %title(newStr); 
            %hold on;
            subplot(1,2,1); imshow(patch_I);title(message1); 
            subplot(1,2,2); imshow(logical(patch_gt));title(message1); 
            pause(0.5);
            close all;

            %% Make table
            T = table(categorical({type_stone}),{dir_name},[percent_pixels_gt],'VariableNames',{'Folder','Name','Percent'});
            if(j==1)
               t_folder = T;
            else
                t_folder = vertcat(t_folder,T);
            end  
        end
    end 
end
end
