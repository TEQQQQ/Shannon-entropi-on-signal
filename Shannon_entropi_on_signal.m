clc,clear all ,close all
sinyal = rand(1,100)*10;

sinyaln = (sinyal-min(sinyal))/(max(sinyal)-min(sinyal)+eps);
tam_sayi = round(sinyaln*249);

histo = zeros(1,250);
for i = 1 : length(tam_sayi)
    histo(tam_sayi(i)+1)=histo(tam_sayi(i)+1)+1;
end

for i=1:length(histo)
    p(i)=histo(i)/sum(histo);
end

se = 0;
for i = 1: length(p)
    if p(i)==0
        se = se;
    else
        se = se+p(i)*log(p(i));
    end
end
se = -1*se;

