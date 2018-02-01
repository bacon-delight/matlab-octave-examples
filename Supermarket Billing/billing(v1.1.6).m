fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\dipanjan.txt','r');
if fid==-1
    mkdir('C:\Users\Public\Dipanjan De\MATLAB\supermarket');
    fname='C:\Users\Public\Dipanjan De\MATLAB\supermarket\products.txt';
    fid1=fopen(fname,'w');
    fprintf(fid1,'1. Godrej Safelock                                Rs.  250/-');
    fprintf(fid1,'\n2. Sony MDR-100 Headphone                         Rs. 1500/-');
    fprintf(fid1,'\n3. Samsung Guru Music                             Rs. 2200/-');
    fprintf(fid1,'\n4. Sunfeast Pasta Noodles                         Rs.   30/-');
    fprintf(fid1,'\n5. JBL Tempo Earphones                            Rs.  480/-');
    fprintf(fid1,'\n6. Nescafe Classic                                Rs.  120/-');
    fprintf(fid1,'\n7. Classmate Notebook                             Rs.   20/-');
    fprintf(fid1,'\n8. Axe Twist                                      Rs.  150/-');
    fprintf(fid1,'\n9. Kingston 8GB Pendrive                          Rs.  550/-');
    fprintf(fid1,'\n10. Norton Internet Security (Single User)        Rs. 1200/-');
    fclose(fid1);
    fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\dipanjan.txt','w');
    fprintf(fid,'This demo is provided to you by Dipanjan De');
    fprintf(fid,'\nPlease follow my blog if you like it (curiosityisthekeytocreativity.blogspot.in)');
    fclose(fid);
end;
c='y';
item=0;
while c=='y'||c=='Y'
clc;
fprintf('\t**************************\n');
fprintf(2,'\tWelcome to SRM Supermarket\n');
fprintf('\t**************************');
fprintf('\n\n Please Select an option:');
fprintf('\n1. Generate New Bill');
fprintf('\n2. View Products');
fprintf('\n3. Terminate Program');
ch=input('\nYour Choice: ','s');
switch ch
    case '1'
        sum=0;
        cnt='y';
        fid1=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\current.txt','w');
        fclose(fid1);
        while cnt=='y' || cnt=='Y'
          clc;
          fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\products.txt','r');
          fname='C:\Users\Public\Dipanjan De\MATLAB\supermarket\products.txt';
          fid1=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\current.txt','a');
          fid2=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\price.txt','r');
          fprintf('\nNet Amount: %d',sum);
          fprintf('\n\nPlease Select an item to add to cart:');
          for i=0:1:10
              pname=fgetl(fid);
              fprintf('\n');
              fprintf('%s',pname);
          end;
          c1=input('\n\nYour Choice: ','s');
            q=input('Enter Quantity: ');
          switch c1
              case '1'
                  sum=sum+(250*q);
                  fprintf(fid1,'\nGodrej Safelock                                Rs.  250/-  *  %d',q);
              case '2'
                  sum=sum+(1500*q);
                  fprintf(fid1,'\nSony MDR-100 Headphone                         Rs. 1500/-  *  %d',q);
              case '3'
                  sum=sum+(2200*q);
                  fprintf(fid1,'\nSamsung Guru Music                             Rs. 2200/-  *  %d',q);
              case '4'
                  sum=sum+(30*q);
                  fprintf(fid1,'\nSunfeast Pasta Noodles                         Rs.   30/-  *  %d',q);
              case '5'
                  sum=sum+(480*q);
                  fprintf(fid1,'\nJBL Tempo Earphones                            Rs.  480/-  *  %d',q);
              case '6'
                  sum=sum+(120*q);
                  fprintf(fid1,'\nNescafe Classic                                Rs.  120/-  *  %d',q);
              case '7'
                  sum=sum+(20*q);
                  fprintf(fid1,'\nClassmate Notebook                             Rs.   20/-  *  %d',q);
              case '8'
                  sum=sum+(150*q);
                  fprintf(fid1,'\nAxe Twist                                      Rs.  150/-  *  %d',q);
              case '9'
                  sum=sum+(550*q);
                  fprintf(fid1,'\nKingston 8GB Pendrive                          Rs.  550/-  *  %d',q);
              case '10'
                  sum=sum+(1200*q);
                  fprintf(fid1,'\nNorton Internet Security (Single User)         Rs. 1200/-  *  %d',q);
              otherwise
                  fprintf('\n\nYou have entered an invalid input!');
                  fprintf('\n\nPlease try again!');
          end;
          fclose(fid);
          fclose(fid1);
          item=item+1;
          cnt=input('\n\nAdd More Items? : ','s');
        end;
        clc;
        fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\current.txt','r');
        for i=0:1:item
              pname=fgetl(fid);
              fprintf('\n');
              fprintf('%s',pname);
        end;
        fclose(fid);
        fprintf('\n');
        fprintf('\nTotal Amount: Rs. %d/-',sum);
        if sum>=1000 && sum<5000
            dis=(3/100)*sum;
        elseif sum>=5000 && sum<10000
            dis=(10/100)*sum;
        elseif sum>=10000
            dis=(20/100)*sum;
        end;
        net=sum-dis;
        fprintf('\nDiscount: Rs. %d/-\n',dis);
        fprintf(2,'\n\n\n\n\nNet Amount Payable: Rs. %d/-',net);
        fprintf('\n\nThanks for shopping with us!');
    case '2' 
        fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\products.txt','r');
          fprintf('\nCurrent Products:');
          for i=0:1:10
              pname=fgetl(fid);
              fprintf('\n%s',pname);
          end;
          fclose(fid);
    case '3'
        clc;
        fprintf(2,'\n\nThanks for using this program!\n\n');
        fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\dipanjan.txt','r');
        fgetl(fid)
        fprintf('\n\nPlease follow my blog if you like this program:');
        fprintf(2,'\ncuriosityisthekeytocreativity.blogspot.in');
        fclose(fid);
        in=input('\n\nPress Enter to Terminate...');
        exit;
    otherwise
        fprintf('\n\nYou have entered an invalid input!');
        fprintf('\n\nPlease try again!');
end;
c=input('\n\nDo you want to go back to Main Menu? (y=yes): ','s');
end;
clc;
fprintf(2,'\n\nThanks for using this program!\n\n');
fid=fopen('C:\Users\Public\Dipanjan De\MATLAB\supermarket\dipanjan.txt','r');
fgetl(fid)
fprintf('\n\nPlease follow my blog if you like this program:');
fprintf(2,'\ncuriosityisthekeytocreativity.blogspot.in');
fclose(fid);
in=input('\n\nPress Enter to Terminate...');
exit;