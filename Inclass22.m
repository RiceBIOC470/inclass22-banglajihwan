%Inclass 22

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 
figure; hold on; 
ku = 0; 
for kb = 0:0.05:5
    polycoeff = [1, 1-kb, ku] 
    rts = roots(polycoeff); 
    rts = rts(imag(rts)==0); 
    plot(kb*ones(length(rts),1),rts,'r.');
end 
title('n =1')

figure; hold on;  
ku = 0; 
for kb = 0:0.05:5
    polycoeff = [1, -kb,0,0,1, ku] 
    rts = roots(polycoeff); 
    rts = rts(imag(rts)==0); 
    plot(kb*ones(length(rts),1),rts,'r.');
end 
title('n =4')
hold off 

figure; hold on;  
ku = 0; 
for kb = 0:0.05:5
    polycoeff = [1, -kb,0,0,0,0,0,0,1, ku] 
    rts = roots(polycoeff); 
    rts = rts(imag(rts)==0); 
    plot(kb*ones(length(rts),1),rts,'r.');
end 
title('n =8')
hold off 

% n = 1 cannot produce two steady states. higher can. 

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 
figure; hold on; 
kb = 0; 
for ku = 0:0.05:5
    polycoeff = [1, -ku, +1, -kb] 
    rts = roots(polycoeff); 
    rts = rts(imag(rts)==0); 
    plot(ku*ones(length(rts),1),rts,'r.');
end 
title('n =2')