import common
import critical_moment_core as core
import gen_nonzero as G
from common import frac_data
PA = core.Quad(G.m[(-4, 2)]) * G.m[(2, -4)]
PB = core.Quad(G.m[(-2, 4)]) * G.m[(4, -2)]
for nm, x in (('PA', PA), ('PB', PB)):
    Da, ea = frac_data(x.a, G.TABLE); Db, eb = frac_data(x.b, G.TABLE)
    print(nm, len(Da), ea, len(Db), eb)
