# Make patch

This subfolder/sub-repo describes the process of producing patches. 


### Review dataset
There are some mistakes with the [Jonathan El Beze dataset](https://drive.google.com/drive/folders/18oQhPkyURvkC7jFDzd3ySeEobI0c1hpL?usp=sharing). 
*We suppose that has a mistake in the handcrafted labels.*

Jonathan El Beze dataset details:

|       **Type**      | **Label** | **Section** | **Surface** | **Total (SEC+SUR)** |
|:-------------------:|:---------:|:-----------:|:-----------:|:---------:|
| **Acide Uric (AU)** |     0     |      50     |      58     |    108    |
|  **Brushite (BR)**  |     1     |      4      |      23     |     27    |
|  **Cystine (CYS)**  |     2     |      48     |      47     |     95    |
|  **Struvite (STR)** |     3     |      24     |      43     |     67    |
|  **Weddelite (WD)** |     4     |      12     |      13     |     25    |
|  **Whewelite (WW)** |     5     |      25     |      62     |     87    |
|      **Total**      |   **--**  |   **163**   |   **246**   |  **409**  |

---

**Review dataset**. The kidney stones (I) and ground truth (GT) were compared. The width and length of each pair (I and GT) most coincide. 
* A Matlab file `review_datasetv2.m` was used to compare two directories (I and GT directories of each class).

>>````
>>clc; clear; close all;
>>main_root = '/Volumes/.../Acide urique/';
>>dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
>>dir_folder = [main_root, 'section/'];
>>f_readfiles(dir_folder,dir_gt);
>>````


* Results were saved as individual images and as a gif ([here](https://drive.google.com/drive/folders/1BzraeKTXZiB9ZgbrkNjtpaeRQXR6tLI7?usp=sharing)). An example of the test is as following:

>> ![ ](/helper/review_dataset.gif) Type: Acide Uric (AU). View: Section. Total images 50.

* In this test, we found that the **labels are correct!** 
* We can see that the ground truth (in some of the cases) represents a small portion of the entire image. It could be because of problems in the patch extraction step.
* We need to determine the percentage of pixels of each sample of the dataset.

---

**Percent of pixels per image.** The percentage of pixels in the entire image is computed. To determine in which images is possible to extract more or less patches, acoording with the percetnaje of GT in the image. 

* A Matlab file `num_pixels.m` was used to determine the number of pixels in the image. 
* A modification of `review_dataset.m` was done. In the function `f_readfiles()` was added a sentence for generating a table and returning it.

>>````
>>type_stone = 'AU-SEC';
>>main_root = '/Volumes/.../Acide urique/';
>>dir_gt = [main_root, 'PixelLabelData/']; addpath(dir_gt);
>>dir_folder = [main_root, 'section/'];
>>t_au_sec = f_readfiles(dir_folder,dir_gt,type_stone);
>>````

* This code generate a `results_num_pixels.xlsx` that contains the following fields: 
  * Index (sorted number of the image in the type-view set)
  * Folder (folder that contains the images)
  * Image (name of the image in folder)
  * Percent (percentage of pixels in the image)

>>| **Index** | **Folder** |        **Name**       | **Percent** |
>>|:---------:|:----------:|:---------------------:|:-----------:|
>>|     37    |   STR-SUR  |  7041 - surface 5.jpg |    49.74    |
>>|     30    |   CYS-SEC  | 18853 - section 3.jpg |    45.88    |
>>|     .     |      .     |           .           |      .      |
>>|     .     |      .     |           .           |      .      |
>>|     .     |      .     |           .           |      .      |
>>|     4     |   WW-SEC   | 23099 - section 3.jpg |    3.80     |
>>|     14    |   STR-SUR  | 10570 - surface 1.jpg |    2.63     |

