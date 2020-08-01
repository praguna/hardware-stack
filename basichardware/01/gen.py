s = """
    And(a=a[{i}],b=f1,out=m{i}0);
    And(a=b[{i}],b=f2,out=m{i}1);
    And(a=c[{i}],b=f3,out=m{i}2);
    And(a=d[{i}],b=f4,out=m{i}3);
    And(a=e[{i}],b=f5,out=m{i}4);
    And(a=f[{i}],b=f6,out=m{i}5);
    And(a=g[{i}],b=f7,out=m{i}6);
    And(a=h[{i}],b=f8,out=m{i}7);
    Or(a=m{i}0,b=m{i}1,out=o{i}1);
    Or(a=o{i}1,b=m{i}2,out=o{i}2);
    Or(a=o{i}2,b=m{i}3,out=o{i}3);
    Or(a=o{i}3,b=m{i}4,out=o{i}4);
    Or(a=o{i}4,b=m{i}5,out=o{i}5);
    Or(a=o{i}5,b=m{i}6,out=o{i}6);
    Or(a=o{i}6,b=m{i}7,out=out[{i}]);
"""
for i in range(0, 16):
    print(s.format(i=i))