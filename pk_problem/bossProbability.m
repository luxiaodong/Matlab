function p = bossProbability( value )

p = 0;

if value < 0 
    p = 0;
elseif value < 50
    p = value/100;
elseif value < 100
    p = 1 - (100-value)^2/2*100*50;
end