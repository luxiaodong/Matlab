function w = tileConvert()

    picW = 2500;
    %picH = 950;
    %sita = atan(2)/2;
    sita = 0.463647609000806;
    sqr5 = 2.236067977499790;
    
    %--∫·œÚ¡ø
    
    m5 = [1,-0.6,0;0,1,0;0,0,1];
    m4 = [1,0,0;0,0.8,0;0,0,1];
    m3 = [cos(sita), -sin(sita), 0; sin(sita), cos(sita), 0; 0,0,1]; 
    m2 = [20*sqr5, 0,0; 0,20*sqr5,0; 0,0,1];
    m1 = [1,0,picW/2; 0,1,-picW/4; 0,0,1];
    
    %w = m4*[x, y, 1]';
    %m = m1*m2*m3*m4;
    mat = m2*m3*m4*m5
    m = m1*m2*m3*m4*m5;
    
    %w = m*[x, y, 1]';
%     p1 = m*[0,0,1]'
%     p2 = m*[1,1,1]'
%     p3 = m*[1,0,1]'
%     p4 = m*[0,1,1]'
%    
%     plot(p1(1), p1(2), '*');
%     hold on;
%     plot(p2(1), p2(2), '*');
%     hold on;
%     plot(p3(1), p3(2), '+');
%     hold on;
%     plot(p4(1), p4(2), '+');
%     hold on;
    
%     d1 = (p1(1) - p2(1))^2 + (p1(2) - p2(2))^2;
%     d2 = (p3(1) - p4(1))^2 + (p3(2) - p4(2))^2;
%     w = sqrt(d1)/sqrt(d2);
     w = m;
    
    
%      for i=1:50
%          for j=1:50
%              w = m*[i,j,1]';
%              plot(w(1), w(2), '*');
%              hold on;
%          end
%      end
%      
end
