import sys
sys.argv = ['x', 'nonzero']
exec(open('sim_run.py').read().split('# sum check')[0].replace("for p in G.USED:", "for p in []:"))
tot = 0
for p in G.USED:
    for half, d in (('A', dA), ('B', dB)):
        v = (G.first if half == 'A' else G.second)[p]
        md = QQ(datafrac(v.a), datafrac(v.b))
        c = mom(d, p) - md
        for comp in (c.x0, c.x1):
            for ns in (0, 1):
                pass
            b, dg, w = width(comp.num, 1)
            b0, _, w0 = width(comp.num, 0)
            tot += w0
            if p in [(4, -2), (2, 2), (1, 1)]:
                print(p, half, 'bits', b, 'deg', dg, 'w1', w, 'w0', w0)
print('total dense', tot)
