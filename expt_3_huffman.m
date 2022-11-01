clc;
clear all;
close all;
pkg load communications;
symbols = 1:5;
p=[0.4 0.2 0.2 0.1 0.1];
disp(symbols);
disp(p);
dict = huffmandict(symbols,p);
disp(dict);
inputSig = randsrc(10,1,[symbols;p]);
disp(inputSig);
code = huffmanenco(inputSig,dict);
disp(code);
decode = huffmandeco(code,dict);
disp(decode);

