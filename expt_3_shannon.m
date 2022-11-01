clear all;
clc;
list_symb = [1 2 3 4 ];
list_proba = [0.5 0.25 0.125 0.125];
dict = shannonfanodict(list_symb,list_proba);
disp(dict);
%dict = shannonfanodict(list_symb,list_proba,0,true);
%disp(dict);
inputSig =[3 3 1 1 1 2 3 3 4];
code = shannonfanoenco(inputSig,dict); disp(code);

