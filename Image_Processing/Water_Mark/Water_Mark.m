a = imread('C:\Users\user\Desktop\MATLAB\Image_Processing\Images\xyz.jpg');   
b = imread('C:\Users\user\Desktop\MATLAB\Image_Processing\Images\abc.jpg');
n = a;

disp(' ');
disp('##########################################################');
disp(' ');

[rp1 cp1 pp1] = size(a);
[rp2 cp2 pp2] = size(b);


if((rp1 + cp1 + pp1 > 0) && (rp2 + cp2 + pp2 > 0))
    disp('OM YOUR IMAGES WERE LOADED WITHOUT ERROR.');
    disp(' ');
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    disp(' ');
    disp('PROCESSING IMAGE PLEASE WAIT THIS MAY TAKE FEW MINUTES.');
    disp(' ');
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    disp(' ');
    
    for(i=1:1:rp2)
        for(j=1:1:cp2)
            for(k=1:1:pp2)
                if((b(i,j,k)== 0) || ((b(i,j,k)>0) && (b(i,j,k)<=30)))
                    n(i,j,k) = a(i,j,k)*2;
                else
                    continue;
                end
            end
        end
    end 
    
    imshow(n);
    figure;
    
    subplot(1,3,1)
    imshow(a);
    subplot(1,3,2)
    imshow(b);
    subplot(1,3,3)
    imshow(n);
    
    disp('##########################################################');
else
    disp(' ');
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    disp('IMAGES LOADING ERROR.');
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    disp(' ');
    disp('##########################################################');
end
