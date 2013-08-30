function p = start_pk()

max = 100000;
heroStartP = 5/6;
sum = 0;
for i=3:max
    for j = 1:(i-1)
        temp = nchoosek(i,j)*5^j/(6^i)*(1 - heroProbability(1000/j))*heroProbability(500/(i-j));
        sum = sum + temp;
    end
end
p = sum;