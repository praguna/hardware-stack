s = "Or(a=f{j},b=in[{i}],out=f{i});"
for i in range(8,16):
    print(s.format(i=i,j=i-1))