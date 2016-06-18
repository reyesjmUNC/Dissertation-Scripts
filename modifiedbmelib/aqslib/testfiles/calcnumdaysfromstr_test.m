function calcnumdaysfromstr_test()

numericdate = [20001231;20120229];
serialdate = calcnumdaysfromstr(numericdate);

disp(['input date:',num2str(numericdate(1)),' output year:',...
      num2str(year(serialdate(1)))]);
disp(['input date:',num2str(numericdate(1)),' output month:',...
      num2str(month(serialdate(1)))]);
disp(['input date:',num2str(numericdate(1)),' output day:',...
      num2str(day(serialdate(1)))]);

disp(['input date:',num2str(numericdate(2)),' output year:',...
      num2str(year(serialdate(2)))]);
disp(['input date:',num2str(numericdate(2)),' output month:',...
      num2str(month(serialdate(2)))]);
disp(['input date:',num2str(numericdate(2)),' output day:',...
      num2str(day(serialdate(2)))]);