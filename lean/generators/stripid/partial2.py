import re, time
import common
from flint import fmpq
import exact_rational as er
import critical_moment_core as core
import gen_nonzero as G
from pathlib import Path
ROOT=Path('/Users/jtindall/Files/NoFourMUBS/lean')
src=(ROOT/'NoFourMUBs/PRM/CoverageStripMomentData.lean').read_text()
body=src[src.index('def momentPoly (M : ℤ × ℤ → ℂ) : ℂ :=')+len('def momentPoly (M : ℤ × ℤ → ℂ) : ℂ :='):src.index('/-- The sum over ordered')].strip()
lines=[l.strip().rstrip('+').strip() for l in body.split('\n') if l.strip()][1:]
def parse(line):
    cc=int(re.match(r'\(?(-?\d+)\)?',line).group(1))
    ms=[(int(a.strip('()')),int(b.strip('()'))) for a,b in re.findall(r'M \((\(?-?\d+\)?), (\(?-?\d+\)?)\)',line)]
    return cc,ms
T=[]
for l in lines:
    cc,ms=parse(l); v=core.Quad(fmpq(cc))
    for p in ms: v=v*G.m[p]
    T.append((ms,v))
Q4={(2,2),(-2,-2),(4,-2),(-4,2),(-2,4),(2,-4)}
def size(vs):
    a=er.common_sum([v.a for v in vs]); b=er.common_sum([v.b for v in vs])
    return (len(a.n),a.n.degrees(),len(b.n) if b.n else 0)
quart=[v for ms,v in T if any(p in Q4 for p in ms)]
rest=[core.Quad(1728)]+[v for ms,v in T if not any(p in Q4 for p in ms)]
print('quartic terms',len(quart),size(quart),flush=True)
print('rest terms',len(rest),size(rest),flush=True)
# individual quartic-moment groups
for q in Q4:
    vs=[v for ms,v in T if q in ms]
    print(q,len(vs),size(vs),flush=True)
