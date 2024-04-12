money = 0;
h_money = [];
numbers = [];

for i = 1 : 100
    new = randi([1 6],1,1);
    if (new == 5)
        money = money + 10;
    else
        money = money - 1;
    end
    numbers(i) = new;
    h_money(i) = money;
end
figure(1)
plot(h_money)
grid

figure(2)
histogram(numbers)
grid