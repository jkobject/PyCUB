fd := fopen("nonlinfit.txt", APPEND):
with(plots): 
with(Statistics): 
with(LinearAlgebra):


dta := ImportMatrix("/tmp/dta.csv"):
len := RowDimension(dta):
x := dta[1 .. len, 1]; y := dta[1 .. len, 2]: 
#pointplot([x, y]); 
N:=15; 
tmp := NonlinearFit(c*exp(a*ln(binomial(N, v))-(b-a)*ln(factorial(v))), x, y, v, output = [parametervalues, residualmeansquare], initialvalues = [a = 1, b = 1, c = 0.1e-5]):
print(tmp);
fprintf(fd,"%f , %f, %f,%f\n", eval(a, tmp[1]), eval(b, tmp[1]), eval(c, tmp[1]), tmp[2]):
fclose(fd):
