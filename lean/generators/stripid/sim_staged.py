import sys
sys.argv = ['x', 'nonzero']
exec(open('sim_run.py').read().split('# sum check')[0].replace("for p in G.USED:", "for p in []:"))
import staged
import critical_moment_core as core
from exact_rational import F
Xf, Yf = G.X, G.Y
lamA, fA, mA = staged.half(G.vals, G.gp, G.zp, Xf, Yf)
lamB, fB, mB = staged.half([-v for v in G.vals], G.gm, G.zm, Xf, Yf)
def dq(x):
    x = core.Quad(x)
    return QQ(datafrac(x.a), datafrac(x.b))
def sz(x):
    x = core.Quad(x)
    return (len(x.a.n), x.a.n.degrees() if x.a.n else None, len(x.b.n), x.b.n.degrees() if x.b.n else None)
for nm, v in lamA.items(): print('lam', nm, sz(v))
for nm, v in fA.items(): print('field', nm, sz(v))
# stage checks widths
tot = 0
def chk(name, c):
    global tot
    for comp in (c.x0, c.x1):
        b, dg, w = width(comp.num, 1); b0, _, w0 = width(comp.num, 0)
        tot += w0
        print(name, 'deg', dg, 'bits', b, 'w0', w0)
# moments from field data (per half A)
dAdata = [one, qX, one, qY, zeta, qR] + [dq(fA[k]) for k in ['u', 'v', 'w', 'U', 'V', 'W', 'pi', 'PI', 'up', 'vp', 'UP', 'VP']]
for p in [(1, 1), (2, 2), (4, -2), (3, -3), (-2, -2)]:
    chk(('momA', p), mom(dAdata, p) - dq(mA[p]))
print('tot', tot)
