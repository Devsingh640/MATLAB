a = imread('C:\Users\user\Desktop\MATLAB\Water_Mark\IMAGES\xyz.jpg');   
b = imread('C:\Users\user\Desktop\MATLAB\Water_Mark\IMAGES\abc.jpg');

disp(' ');
disp('##########################################################');
disp(' ');
disp('CALCULATING IMAGE PARAMETERS PLEASE WAIT.');
[rp1 cp1 pp1] = size(a);
[rp2 cp2 pp2] = size(b);
disp(' ');
disp('IMAGE PARAMETERS CALCULATED.');
disp(' ');

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
                if(b(i,j,k)== 0)
                    a(i,j,k) = a(i,j,k)*4;
                else
                    continue;
                end
            end
        end
    end 
    imshow(a);
    disp('##########################################################');
else
    disp(' ');
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    disp('IMAGES LOADING ERROR.');
    disp('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
    disp(' ');
    disp('##########################################################');
end



   