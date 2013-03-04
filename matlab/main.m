elements = 5;
largest = 0;
num_switches = 0;
num_producers=0;
num_consumers = 0;
while num_consumers == 0 
    num_consumers = poissrnd(elements);
end
if (num_consumers > largest)
    largest = num_consumers;
    
end
while num_producers == 0 
    num_producers = poissrnd(elements);
end
if (num_producers > largest)
    largest = num_producers ; 
end
while num_switches == 0 
    num_switches = poissrnd(elements);
end
if (num_switches > largest)
    largest = num_switches  ;
end
for j =1:num_consumers
    con(j)=consumer;
    con(j).ID = [1, j];
    plot(1, j,'s','markersize',20)
    hold on
end
for j =1:num_producers
    prod(j)=producer;
    prod(j).ID = [5, j];
    plot(5, j,'o','markersize',20)
    hold on
end
for j =1:num_switches
    i = randi([2, 4]);
    sw(j)=switchnode;
    sw(j).ID = [i, j];
    plot(i, j,'.','markersize',20)
    hold on
end
axis([0 6 0 (largest+1)])
xlabel('Consumer                              Switch                                 producer')
hold off
