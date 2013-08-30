function p = heroProbability( value )
p = 0;

if value < 0 
    p = 0;
elseif value < 20
    p = value/80;
elseif value < 80
    p = 1 - (80-value)^2/2*80*60;
end