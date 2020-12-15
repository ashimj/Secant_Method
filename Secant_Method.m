%% taking function
a=input('Enter function:','s');
f=inline(a);
%% taking initial guesses
x_o = input("First initial guess : " );
x_1 = input("Second initial guess : " );
%% taking maximum number of iteration and allowed error
n = input("How many iterations? : ");
err = input("Allowed error: ");
%% setting initial iteration 
i = 1;
%% start of iteration
while i<=n
x = (x_o*f(x_1) - x_1*f(x_o))/(f(x_1)-f(x_o)); 
if abs(x - x_1)<err
    disp(f);
    disp(['Root of given function is :', num2str(x)]); %% displaying root
    break;
else
     x_o = x_1; %% setting initial values for next iteration
     x_1 = x;
     i = i+1; %% incrementing iteration
end
end
