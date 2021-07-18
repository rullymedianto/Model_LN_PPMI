 %profile on 
tic
numb = 5  ;

compl1 = cell(numb,10);
compl2 = cell(numb,7);
compl3 = cell(numb,6);
compl4 = cell(numb,6);
compl5 = cell(numb,1);

n=0;
for ii=1:numb
    schedules_ok
    Simulation_LN %Simulation
% for iii=1:10    
%     Vector_Complexity
%     No_conflict_plot% Calculate Complexity
   
%% Lower Wast
    compl1{ii,1}= max_complexity;
    compl1{ii,2}= mean_complexity;
    compl1{ii,3}= max_aircraftinsector;%aircraftinsector1;
    compl1{ii,4}= mean_aircraftinsector;
    compl1{ii,5}= max_conflictinsector;%conflictinsector1;
    compl1{ii,6}= mean_conflictinsector;
    compl1{ii,7}= max_communication;%Communication
    compl1{ii,8}= mean_communication;
    compl1{ii,9}= timeElapsed_Simulation_schedule;
 
 %% Elapsed Time
    compl2{ii,1}= AA1;
    compl2{ii,2}= AA2;
    compl2{ii,3}= AA3;
    compl2{ii,4}= AA4;
    compl2{ii,5}= AA5;
    compl2{ii,6}= AA6;

    compl3{ii,1}= CL1;
    compl3{ii,2}= CL2;
    compl3{ii,3}= CL3;
    compl3{ii,4}= CL4;
    compl3{ii,5}= CL5;
  
    compl4{ii,1}= type_A320;
    compl4{ii,2}= type_B737;
    compl4{ii,3}= type_A330;
    compl4{ii,4}= type_B777;
    compl4{ii,5}= type_B787;
    
    compl5{ii,1}=correlat;
    
compl_total=[compl1 compl2 compl3 compl4 compl5];

%save('Complexity_Total.mat','compl_total','-v7.3')
writecell(compl_total,'7200-4min_00-100-00_no1.xls')

% end   
% end
n=n+1;
disp(n)
end
time_running = toc;
time_running = time_running/60;
%profsave