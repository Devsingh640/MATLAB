x = randi(1500, 40, 1);
y = randi(1500, 40 ,1);
% neighbour_list = [];
% distance_between_nodes = [];
plot(x, y,'o');

tranmission_range = 300;

for(i=1:40)
    for(j=1:40)
        neighbour_is_true = sqrt(((x(i)-x(j))^2) + ((x(i)-x(j))^2));
        
        if((neighbour_is_true >= tranmission_range)&&(neighbour_is_true == 0))
            neighbour_list(i,j) = j;
            distance_between_nodes(i,j) = neighbour_is_true;            
        else
            disp('NOT IN TRANSMISSION RANGE');
        end
    end
end
disp(neighbour_list)
disp(distance_between_nodes)