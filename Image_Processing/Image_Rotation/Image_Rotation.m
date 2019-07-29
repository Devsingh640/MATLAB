base_image = imread('C:\Users\user\Desktop\MATLAB\Image_Processing\Images\xyz.jpg'); 

disp(' '); 
disp('##########################################################'); 
disp(' '); 

[rp1 cp1 pp1] = size(base_image); 

if ((rp1 + cp1 + pp1 > 0))
    disp('OM YOUR IMAGE WAS LOADED WITHOUT ERROR.'); 
    disp(' '); 
    
    rotate_by_angle_for_base_image = input('Rotate Image By Angle For Base Image  : '); 
    
    nearest = imrotate(base_image, rotate_by_angle_for_base_image, 'nearest');
    bilinear = imrotate(base_image, rotate_by_angle_for_base_image, 'bilinear'); 
    bicubic = imrotate(base_image, rotate_by_angle_for_base_image, 'bicubic');
    
    nearest_crop = imrotate(base_image, rotate_by_angle_for_base_image, 'nearest', 'crop');
    bilinear_crop = imrotate(base_image, rotate_by_angle_for_base_image, 'bilinear', 'crop'); 
    bicubic_crop = imrotate(base_image, rotate_by_angle_for_base_image, 'bicubic', 'crop');
    
    nearest_loose = imrotate(base_image, rotate_by_angle_for_base_image, 'nearest', 'loose');
    bilinear_loose = imrotate(base_image, rotate_by_angle_for_base_image, 'bilinear', 'loose'); 
    bicubic_loose = imrotate(base_image, rotate_by_angle_for_base_image, 'bicubic', 'loose');
    
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'); 
    disp(' '); 
    disp('PROCESSING IMAGE PLEASE WAIT THIS MAY TAKE FEW MINUTES.'); 
    disp(' '); 
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'); 
    disp(' '); 
    
    subplot(3,3,1)
    imshow(nearest);
    subplot(3,3,2)
    imshow(nearest_crop);
    subplot(3,3,3)
    imshow(nearest_loose);
    
    subplot(3,3,4)
    imshow(bilinear);
    subplot(3,3,5)
    imshow(bilinear_crop);
    subplot(3,3,6)
    imshow(bilinear_loose);
    
    subplot(3,3,7)
    imshow(bicubic);
    subplot(3,3,8)
    imshow(bicubic_crop);
    subplot(3,3,9)
    imshow(bicubic_loose);
    
    disp('##########################################################'); 
else
    disp(' '); 
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'); 
    disp('IMAGES LOADING ERROR.'); 
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'); 
    disp(' '); 
    disp('##########################################################'); 
end
