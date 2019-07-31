%##########################################################################################################
%# CLEAN UP RULE
%##########################################################################################################

clc;
clear all;

%##########################################################################################################
%# LIBRARIES
%##########################################################################################################



%##########################################################################################################
%# GLOBAL VARIABLES
%##########################################################################################################

hide_behind_this = imread('C:\Users\user\Desktop\MATLAB\Image_Processing\Images\xyz.jpg');
hide_this = input('Enter Your Secret Here So That I Can Hide It : ');

previous_value = '';
length_of_secret_string = length(hide_this);
hide_behind_this_copy = hide_behind_this; %size(hide_behind_this_copy)
pixel_counter = 1;

%##########################################################################################################
%# FUNCTIONS
%##########################################################################################################



%##########################################################################################################
%# MAIN PROGRAM
%##########################################################################################################

for(pointer=1 : 1 : length_of_secret_string)
    individual_secret_element = hide_this(pointer);
    ascii_value = uint8(hide_this(pointer));
    ascii_binary_format = dec2bin(ascii_value);
    fprintf('%d %c %d %s \n', pointer, hide_this(pointer), ascii_value, ascii_binary_format);
    previous_value = strcat(previous_value, ascii_binary_format);
    bibary_incoded_secret = previous_value;
end


length_of_bibary_incoded_secret = length(bibary_incoded_secret);


[rows_of_image, columns_of_image, pages_of_image] =  size(hide_behind_this_copy);

for(i=1 : 1 : rows_of_image)
    for(j=1 : 1 : columns_of_image)
        for(k=1 : 1 : pages_of_image)
            if(pixel_counter <= length_of_bibary_incoded_secret)
                pixel_value = hide_behind_this_copy(i,j,k);
                disp(pixel_value);
                disp(pixel_counter);
                pixel_value_binary_format = dec2bin(pixel_value);
                check_pixel_value_binary_format_element = pixel_value_binary_format(1);
                check_bibary_incoded_secret_element = bibary_incoded_secret(pixel_counter);
                if((check_pixel_value_binary_format_element ~= check_bibary_incoded_secret_element) && (check_bibary_incoded_secret_element == 1))
                    pixel_value_binary_format(1) = 1;
                    new_pixel_value = bin2dec(pixel_value_binary_format);
                    hide_behind_this_copy(i,j,k) = new_pixel_value;
                else
                    pixel_value_binary_format(1) = 0;
                    new_pixel_value = bin2dec(pixel_value_binary_format);
                    hide_behind_this_copy(i,j,k) = new_pixel_value;
                end
            else
                break;
            end
            pixel_counter = (pixel_counter + 1);
        end
    end
end

disp('');
disp('++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
disp(bibary_incoded_secret);
disp(length_of_bibary_incoded_secret);
disp(pixel_counter);
disp('++++++++++++++++++++++++++++++++++++++++++++++++++++++++');

subplot(1,2,1)
imshow(hide_behind_this);
title('Orignal');
subplot(1,2,2)
imshow(hide_behind_this_copy);
title('Steganography Done');

%##########################################################################################################
%# END OF PROGRAM
%##########################################################################################################

