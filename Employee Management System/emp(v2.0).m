fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\eng','r');
if fid==-1
    mkdir('C:\Users\Public\Dipanjan De\MATLAB\emp');
    mkdir('C:\Users\Public\Dipanjan De\MATLAB\emp\eng');
    mkdir('C:\Users\Public\Dipanjan De\MATLAB\emp\acc');
    mkdir('C:\Users\Public\Dipanjan De\MATLAB\emp\ret');
    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\dipanjan.txt','w');
    fprintf(fid,'This demo is provided to you by Dipanjan De');
    fclose(fid);
    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\eng.txt','w');
    fprintf(fid,'50000');
    fclose(fid);
    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\acc.txt','w');
    fprintf(fid,'30000');
    fclose(fid);
    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\ret.txt','w');
    fprintf(fid,'15000');
    fclose(fid);
end;
ch='y'
while ch=='y'||ch=='Y'
clc;
fprintf('\n\tEmployee Management System');
fprintf('\n\n1. Add Employee');
fprintf('\n2. Modify Employee Details');
fprintf('\n3. Update Resignation');
fprintf('\n4. Show Employee Details');
fprintf('\n5. Terminate Program');
ch=input('\nYour Choice: ','s');
switch(ch)
    case '1'
        clc;
        fprintf('\nSelect Post: ');
        fprintf('\n1. Engineer');
        fprintf('\n2. Account Manager');
        fprintf('\n3. Retailer');
        c1=input('\nYour Choice: ','s');
        switch c1
            case '1'
                clc;
                name=input('\n\nEnter your Name: ','s');
                r1=floor(abs(randn)*10000);
                r2=int2str(r1);
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\eng\',r3);
                fid=fopen(fname,'w');
                fprintf(fid,name);
                fclose(fid);
                fprintf('\n\nEmployee Added Succesfully!');
                fprintf('\n\nEmployee ID: %d',r1);
            case '2'
                clc;
                name=input('\n\nEnter your Name: ','s');
                r1=floor(abs(randn)*10000);
                r2=int2str(r1);
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\acc\',r3);
                fid=fopen(fname,'w');
                fprintf(fid,name);
                fclose(fid);
                fprintf('\n\nEmployee Added Succesfully!');
                fprintf('\n\nEmployee ID: %d',r1);
            case '3'
                clc;
                name=input('\n\nEnter your Name: ','s');
                r1=floor(abs(randn)*10000);
                r2=int2str(r1);
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\ret\',r3);
                fid=fopen(fname,'w');
                fprintf(fid,name);
                fclose(fid);
                fprintf('\n\nEmployee Added Succesfully!');
                fprintf('\n\nEmployee ID: %d',r1);
            otherwise
                fprintf('\n\nYou have entered a wrong input! Please try again!');
        end;
    case '2'
        clc;
        fprintf('\nSelect an Option: ');
        fprintf('\n1. Modify Salary');
        fprintf('\n2. Edit Employee Name');
        fprintf('\n3. Employee Count');
        c2=input('\nYour Choice: ','s');
        switch c2
            case '1'
                clc;
                fprintf('\n\nSelect an Option:');
                fprintf('\n1. Engineer');
                fprintf('\n2. Account Manager');
                fprintf('\n3. Retail');
                c0=input('\nYour Choice: ','s');
                switch c0
                    case '1'
                        sal=input('\n\nEnter Salary: ','s');
                        fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\eng.txt','w');
                        fprintf(fid,sal);
                        fclose(fid);
                    case '2'
                        sal=input('\n\nEnter Salary: ','s');
                        fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\acc.txt','w');
                        fprintf(fid,sal);
                        fclose(fid);
                    case '3'
                        sal=input('\n\nEnter Salary: ','s');
                        fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\ret.txt','w');
                        fprintf(fid,sal);
                        fclose(fid);
                    otherwise
                        fprintf('\n\nYou have entered a wrong input! Please try again!');
                end;
            case '2'
                clc;
                fprintf('\n\nSelect an Option:');
                fprintf('\n1. Engineer');
                fprintf('\n2. Account Manager');
                fprintf('\n3. Retail');
                c0=input('\nYour Choice: ','s');
                switch c0
                    case '1'
                        r2=input('\n\nEnter Employee ID: ','s');
                        r3=strcat(r2,'.txt');
                        fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\eng\',r3);
                        fid=fopen(fname,'r');
                        if fid==-1
                            fprintf('\n\nNo Record Found!')
                        else
                            fclose(fid);
                            fid=fopen(fname,'w');
                            name=input('\n\nEnter Employee Name: ','s');
                            fprintf(fid,name);
                            fclose(fid);
                        end;
                    case '2'
                        r2=input('\n\nEnter Employee ID: ','s');
                        r3=strcat(r2,'.txt');
                        fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\acc\',r3);
                        fid=fopen(fname,'r');
                        if fid==-1
                            fprintf('\n\nNo Record Found!')
                        else
                            fclose(fid);
                            fid=fopen(fname,'w');
                            name=input('\n\nEnter Employee Name: ','s');
                            fprintf(fid,name);
                            fclose(fid);
                        end;
                    case '3'
                        r2=input('\n\nEnter Employee ID: ','s');
                        r3=strcat(r2,'.txt');
                        fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\ret\',r3);
                        fid=fopen(fname,'r');
                        if fid==-1
                            fprintf('\n\nNo Record Found!')
                        else
                            fclose(fid);
                            fid=fopen(fname,'w');
                            name=input('\n\nEnter Employee Name: ','s');
                            fprintf(fid,name);
                            fclose(fid);
                        end;
                    otherwise
                        fprintf('\n\nYou have entered a wrong input! Please try again!');
                end;
            case '3'
                fprintf('\n\nWill be activated in next version!');
            otherwise
                fprintf('\n\nYou have entered a wrong input! Please try again!');
        end;
    case '3'
        clc;
        fprintf('\nSelect Post: ');
        fprintf('\n1. Engineer');
        fprintf('\n2. Account Manager');
        fprintf('\n3. Retailer');
        c1=input('\nYour Choice: ','s');
        switch c1
            case '1'
                clc;
                r2=input('\n\nEnter Employee ID: ','s');
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\eng\',r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nNo Record Found!');
                else
                    fprintf('\nName: ');
                    fgetl(fid)
                    fclose(fid);
                    c0=input('\n\nSure you want to resign? (y/n)','s');
                    if c0=='y'||c0=='Y'
                        delete(fname);
                    end;
                end;
            case '2'
                clc;
                r2=input('\n\nEnter Employee ID: ','s');
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\acc\',r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nNo Record Found!');
                else
                    fprintf('\nName: ');
                    fgetl(fid)
                    fclose(fid);
                    c0=input('\n\nSure you want to resign? (y/n)','s');
                    if c0=='y'||c0=='Y'
                        delete(fname);
                    end;
                end;
            case '3'
                clc;
                r2=input('\n\nEnter Employee ID: ','s');
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\ret\',r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nNo Record Found!');
                else
                    fprintf('\nName: ');
                    fgetl(fid)
                    fclose(fid);
                    c0=input('\n\nSure you want to resign? (y/n)','s');
                    if c0=='y'||c0=='Y'
                        delete(fname);
                    end;
                end;
            otherwise
                fprintf('\n\nYou have entered a wrong input! Please try again!');
        end;
    case '4'
        clc;
        fprintf('\n\nSelect an Option:');
        fprintf('\n1. Engineer');
        fprintf('\n2. Account Manager');
        fprintf('\n3. Retail');
        c0=input('\nYour Choice: ','s');
        switch c0
            case '1'
                r2=input('\n\nEnter Employee ID: ','s');
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\eng\',r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nNo Record Found!')
                else
                    fprintf('\nEmployee Name: ');
                    fscanf(fid,'%s')
                    fclose(fid);
                    fprintf('\nCurrent Salary: ');
                    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\eng.txt','r');
                    fgetl(fid)
                    fclose(fid);
                end;
            case '2'
                r2=input('\n\nEnter Employee ID: ','s');
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\acc\',r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nNo Record Found!')
                else
                    fprintf('\nEmployee Name: ');
                    fscanf(fid,'%s')
                    fclose(fid);
                    fprintf('\nCurrent Salary: ');
                    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\acc.txt','r');
                    fgetl(fid)
                    fclose(fid);
                end;
            case '3'
                r2=input('\n\nEnter Employee ID: ','s');
                r3=strcat(r2,'.txt');
                fname=strcat('C:\Users\Public\Dipanjan De\MATLAB\emp\ret\',r3);
                fid=fopen(fname,'r');
                if fid==-1
                    fprintf('\n\nNo Record Found!')
                else
                    fprintf('\nEmployee Name: ');
                    fscanf(fid,'%s')
                    fclose(fid);
                    fprintf('\nCurrent Salary: ');
                    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\emp\ret.txt','r');
                    fgetl(fid)
                    fclose(fid);
                end;
            otherwise
                fprintf('\n\nYou have entered a wrong input! Please try again!');
        end;
    case '5'
        clc;
        fprintf(2,'\n\nThanks for using this program!\n\n');
        fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\dipanjan.txt','r');
        fgetl(fid)
        fclose(fid);
        fprintf('\n\nPlease Join my blog:\n');
        fprintf(2,'\n\ncuriosityisthekeytocreativity.blogspot.in');
        c5=input('\n\nPress Enter to Terminate...');
        exit;
    otherwise
        fprintf('\n\nYou have entered a wrong input! Please try again!');
end;
ch=input('\n\nWant to go back to Main Menu? (y=yes): ','s');
end;
clc;
fprintf(2,'\n\nThanks for using this program!\n\n');
fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\dipanjan.txt','r');
fgetl(fid)
fclose(fid);
fprintf('\n\nPlease Join my blog:\n');
fprintf(2,'\n\ncuriosityisthekeytocreativity.blogspot.in');