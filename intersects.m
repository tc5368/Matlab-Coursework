
function [LL, LC, CC] = intersects(lines, circles)


%lines matrix
%[x1,y1,x2,y2] 
%Where these coordinates are the start and end points of the line segmants

%circle matrix
%[xc,yc,r]
%Where xc,yc are the midpoint of the circle and r is the radius

%Output will be 3 matrices 
%LL is the coordinates of all line on line intercepts
%LC is Line and Circle Intercepts
%CC is Circle Circle

for i = 1:size(lines)
    l = lines(i,:);
    disp(["The two coordiantes",l(1),l(2),"And", l(3), l(4)]) %Just for debugging
    X = [l(1),l(3)];
    Y = [l(2),l(4)];
    plot(X,Y);
    
    xlim([0 10]) %Change this later 
    ylim([0 10]) %Just to be vissable
    
    hold on
    gradient_of_line = ((l(4)-l(2))/(l(3)-l(1)));
    
    if (l(2) == gradient_of_line * l(1))
        disp(["No y intercept y = mx with m = ", gradient_of_line])
    else
        y_intercept = l(2) - (gradient_of_line * l(1))
        disp(["Y = mx + c with m, c being ", gradient_of_line, y_intercept])
    end
    
end
hold off

disp(lines)
disp(circles)















