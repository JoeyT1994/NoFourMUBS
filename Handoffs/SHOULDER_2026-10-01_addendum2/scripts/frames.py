import itertools, math
TWO=2*math.pi
def wrap(x): return (x+math.pi)%TWO-math.pi
def frame_maps():
    """72 maps: row perm r, col perm c of the 3x3 corner (+ optional transpose); return list of (r,c,tr)."""
    return [(r,c,tr) for r in itertools.permutations(range(3)) for c in itertools.permutations(range(3)) for tr in (0,1)]
def apply(th, g, conj=False):
    r,c,tr=g
    P=[[0,0,0],[0,th[0],th[1]],[0,th[2],th[3]]]
    if tr: P=[list(x) for x in zip(*P)]
    Q=[[P[r[i]][c[j]] for j in range(3)] for i in range(3)]
    D=[[Q[i][j]-Q[i][0]-Q[0][j]+Q[0][0] for j in range(3)] for i in range(3)]
    t=[D[1][1],D[1][2],D[2][1],D[2][2]]
    if conj: t=[-x for x in t]
    return [wrap(x) for x in t]
