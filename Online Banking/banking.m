fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\dipanjan.txt','r');
if fid==-1
    mkdir('C:\Users\Public\Dipanjan De\MATLAB\bank');
    mkdir('C:\Users\Public\Dipanjan De\MATLAB\bank\savings');
    mkdir('C:\Users\Public\Dipanjan De\MATLAB\bank\current');
    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\dipanjan.txt','w');
    fprintf(fid,'This demo is provided to you by Dipanjan De');
    fprintf(fid,'\nPlease follow my blog if you like it (curiosityisthekeytocreativity.blogspot.in)');
    fclose(fid);
end;
in='y';
while in=='y'||in=='Y'
clc;
fprintf('\n\tONLINE BANKING');
fprintf('\nPlease Select an Option:');
fprintf('\n1. Add Account');
fprintf('\n2. Cash Deposit');
fprintf('\n3. Cash Withdrawl');
fprintf('\n4. Balance Check');
fprintf('\n5. Terminate Program');
ch=input('\nYour Choice: ','s');
switch ch
    case '1'
        clc;
        fprintf('\nChoose Type:');
        fprintf('\n1. Savings');
        fprintf('\n2. Current');
        c1=input('\nYour Choice: ','s');
        switch c1
            case '1'
                clc;
                fprintf(2,'\n\tNEW SAVINGS ACCOUNT');
                name=input('\nFirst Name: ','s');
                last=input('Last Name: ','s');
                r1=floor(abs(randn)*10000);
                r2=int2str(r1);
                dir=strcat('C:\Users\Public\Dipanjan De\MATLAB\bank\savings\',r2);
                mkdir(dir);
                r3=strcat(r2,'.txt');
                dir1=strcat(dir,'\');
                fname=strcat(dir1,r3);
                fid=fopen(fname,'w');
                fprintf(fid,'1000');
                fclose(fid);
                fname=strcat(dir1,'name.txt');
                fid=fopen(fname,'w');
                fprintf(fid,name);
                fclose(fid);
                fprintf(2,'\n\nAccount Created Succesfully!\n');
                fprintf('Account Balance: Rs. 1,000/-');
                fprintf(2,'\n\nAccount Number: %d',r1);
            case '2'
                clc;
                fprintf(2,'\n\tNEW CURRENT ACCOUNT');
                name=input('\nFirst Name: ','s');
                last=input('Last Name: ','s');
                r1=floor(abs(randn)*10000);
                r2=int2str(r1);
                dir=strcat('C:\Users\Public\Dipanjan De\MATLAB\bank\current\',r2);
                mkdir(dir);
                r3=strcat(r2,'.txt');
                dir1=strcat(dir,'\');
                fname=strcat(dir1,r3);
                fid=fopen(fname,'w');
                fprintf(fid,'20000');
                fclose(fid);
                fname=strcat(dir1,'name.txt');
                fid=fopen(fname,'w');
                fprintf(fid,name);
                fclose(fid);
                fprintf(2,'\n\nCurrent Account Created Succesfully!\n');
                fprintf('Account Balance: Rs. 20,000/-');
                fprintf(2,'\n\nAccount Number: %d',r1);
            otherwise
                fprintf('\n\nYou have entered and invalid input!');
                fprintf('\n\nPlease try again!');
        end;
    case '2'
        clc;
        fprintf(2,'\n\tCASH DEPOSIT');
        fprintf('\n\nPlease Select Account Type:');
        fprintf('\n1. Savings');
        fprintf('\n2. Current');
        c1=input('\nYour Option: ','s');
        switch c1
            case '1'
                clc;
                acc=input('\nEnter Account Number: ','s');
                dir=strcat('C:\Users\Public\Dipanjan De\MATLAB\bank\savings\',r2);
                r3=strcat(acc,'.txt');
                dir1=strcat(dir,'\');
                fname=strcat(dir1,r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nAccount Number does not exist!')
                else
                    bal=fscanf(fid,'%d');
                    fprintf('\n\nYour Current Balance is Rs. %d',bal);
                    fclose(fid);
                    bal1=input('\n\nDeposit Amount: Rs. ');
                    bal2=bal+bal1;
                    bal=int2str(bal2);
                    fid=fopen(fname,'w');
                    fprintf(fid,bal);
                    fclose(fid);
                    fprintf(2,'\n\n\tTransaction Succesful!');
                    fprintf('\n\nCurrent Balance is Rs. %s',bal);
                end;
            case '2'
                clc;
                acc=input('\nEnter Account Number: ','s');
                dir=strcat('C:\Users\Public\Dipanjan De\MATLAB\bank\current\',r2);
                r3=strcat(acc,'.txt');
                dir1=strcat(dir,'\');
                fname=strcat(dir1,r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nAccount Number does not exist!')
                else
                    bal=fscanf(fid,'%d');
                    fprintf('\n\nYour Current Balance is Rs. %d',bal);
                    fclose(fid);
                    bal1=input('\n\nDeposit Amount: Rs. ');
                    bal2=bal+bal1;
                    bal=int2str(bal2);
                    fid=fopen(fname,'w');
                    fprintf(fid,bal);
                    fclose(fid);
                    fprintf(2,'\n\n\tTransaction Succesful!');
                    fprintf('\n\nCurrent Balance is Rs. %s',bal);
                end;
            otherwise
                fprintf('\n\nYou have entered and invalid input!');
                fprintf('\n\nPlease try again!');
        end;
    case '3'
        clc;
        fprintf(2,'\n\tCASH WITHDRAW');
        fprintf('\n\nPlease Select Account Type:');
        fprintf('\n1. Savings');
        fprintf('\n2. Current');
        c1=input('\nYour Option: ','s');
        switch c1
            case '1'
                clc;
                acc=input('\nEnter Account Number: ','s');
                dir=strcat('C:\Users\Public\Dipanjan De\MATLAB\bank\savings\',r2);
                r3=strcat(acc,'.txt');
                dir1=strcat(dir,'\');
                fname=strcat(dir1,r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nAccount Number does not exist!')
                else
                    bal=fscanf(fid,'%d');
                    fprintf('\n\nYour Current Balance is Rs. %d',bal);
                    fclose(fid);
                    bal1=input('\n\nWithdraw Amount: Rs. ');
                    bal2=bal-bal1;
                    if bal2>=1000
                        bal=int2str(bal2);
                        fid=fopen(fname,'w');
                        fprintf(fid,bal);
                        fclose(fid);
                        fprintf(2,'\n\n\tTransaction Succesful!');
                        fprintf('\n\nCurrent Balance is Rs. %s',bal);
                    else
                        fprintf('\n\nYou must keep Rs. 1000 in your Account!');
                        fprintf(2,'\n\n\tTransaction Failed!');
                    end;
                end;
            case '2'
                clc;
                acc=input('\nEnter Account Number: ','s');
                dir=strcat('C:\Users\Public\Dipanjan De\MATLAB\bank\current\',r2);
                r3=strcat(acc,'.txt');
                dir1=strcat(dir,'\');
                fname=strcat(dir1,r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nAccount Number does not exist!')
                else
                    bal=fscanf(fid,'%d');
                    fprintf('\n\nYour Current Balance is Rs. %d',bal);
                    fclose(fid);
                    bal1=input('\n\nWithdraw Amount: Rs. ');
                    bal2=bal-bal1;
                    if bal2>=15000
                        bal=int2str(bal2);
                        fid=fopen(fname,'w');
                        fprintf(fid,bal);
                        fclose(fid);
                        fprintf(2,'\n\n\tTransaction Succesful!');
                        fprintf('\n\nCurrent Balance is Rs. %s',bal);
                    else
                        fprintf('\n\nYou must keep Rs. 15,000 in your Account!');
                        fprintf(2,'\n\n\tTransaction Failed!');
                    end;
                end;
            otherwise
                fprintf('\n\nYou have entered and invalid input!');
                fprintf('\n\nPlease try again!');
        end;
    case '4'
        clc;
        fprintf('\n\tBALANCE CHECK');
        fprintf('\n\nPlease Select Account Type:');
        fprintf('\n1. Savings');
        fprintf('\n2. Current');
        c1=input('\nYour Option: ','s');
        switch c1
            case '1'
                clc;
                acc=input('\nEnter Account Number: ','s');
                dir=strcat('C:\Users\Public\Dipanjan De\MATLAB\bank\savings\',r2);
                r3=strcat(acc,'.txt');
                dir1=strcat(dir,'\');
                fname=strcat(dir1,r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nAccount Number does not exist!')
                else
                    bal=fscanf(fid,'%d');
                    fprintf(2,'\n\nYour Current Balance is Rs. %d',bal);
                    fclose(fid);
                end;
            case '2'
                clc;
                acc=input('\nEnter Account Number: ','s');
                dir=strcat('C:\Users\Public\Dipanjan De\MATLAB\bank\current\',r2);
                r3=strcat(acc,'.txt');
                dir1=strcat(dir,'\');
                fname=strcat(dir1,r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nAccount Number does not exist!')
                else
                    bal=fscanf(fid,'%d');
                    fprintf(2,'\n\nYour Current Balance is Rs. %d',bal);
                    fclose(fid);
                end;
            otherwise
                fprintf('\n\nYou have entered and invalid input!');
                fprintf('\n\nPlease try again!');
        end;
    case '5'
        clc;
        fprintf(2,'\n\nThanks for using this program!\n\n');
        fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\dipanjan.txt','r');
        fgetl(fid)
        fprintf('\n\nPlease follow my blog if you like this program:');
        fprintf(2,'\ncuriosityisthekeytocreativity.blogspot.in\n');
        fclose(fid);
        in=input('\n\nPress Enter to Terminate...');
        exit;
    otherwise
        fprintf('\n\nYou have entered and invalid input!');
        fprintf('\n\nPlease try again!');
end;
in=input('\n\nDo you wish to go back to the Main Menu? (y=yes): ','s');
end;
clc;
fprintf(2,'\n\nThanks for using this program!\n\n');
fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\dipanjan.txt','r');
fgetl(fid)
fprintf('\n\nPlease follow my blog if you like this program:');
fprintf(2,'\ncuriosityisthekeytocreativity.blogspot.in');
fclose(fid);
in=input('\n\nPress Enter to Terminate...');
exit;