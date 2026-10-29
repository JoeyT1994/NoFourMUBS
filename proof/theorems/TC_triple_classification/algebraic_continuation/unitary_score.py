"""Rigorous Fourier-score upper bounds retaining unitary matrix identities.

These are bounds for completing triples. A Fourier-neighbourhood theorem
is a separate dependency; an upper bound is not itself a classification.
"""
import itertools,math
import numpy as np
from flint import arb,arb_mat,acb,acb_mat
from load_native import C

PAIRS=list(itertools.combinations(range(6),2))
LABELS=[(0,)+p for p in itertools.permutations(range(1,6))]
DIFFERENCES=np.array([[a[i]-a[j] for i,j in PAIRS] for a in LABELS])


def up(x):
    if not x.is_finite():raise ArithmeticError('nonfinite upper bound')
    v=float(x.upper())
    while arb(v)<x.upper():v=math.nextafter(v,math.inf)
    if not math.isfinite(v):raise ArithmeticError('unrepresentable upper bound')
    return arb(v)


def down(x):
    if not x.is_finite():raise ArithmeticError('nonfinite lower bound')
    v=float(x.lower())
    while arb(v)>x.lower():v=math.nextafter(v,-math.inf)
    if not math.isfinite(v):raise ArithmeticError('unrepresentable lower bound')
    return arb(v)


def norm(values):return sum((abs(x).upper()**2 for x in values),arb(0)).sqrt()


def alignment(phases):
    p=np.array([[float(x.mid()) for x in row] for row in phases])
    rq=np.array([[p[i,j]+p[k,l]-p[i,l]-p[k,j] for j,l in PAIRS] for i,k in PAIRS])
    best=None
    for ai,a in enumerate(DIFFERENCES):
        d=rq[None,:,:]-(math.pi/3)*a[None,:,None]*DIFFERENCES[:,None,:]
        d-=2*math.pi*np.round(d/(2*math.pi))
        values=np.sum(d*d,axis=(1,2));bi=int(np.argmin(values))
        candidate=(float(values[bi]),ai,bi)
        if best is None or candidate<best:best=candidate
    return LABELS[best[1]],LABELS[best[2]]


def score_upper(phases,labels=None):
    a,b=alignment(phases) if labels is None else labels
    if sorted(a)!=list(range(6)) or sorted(b)!=list(range(6)):
        raise ValueError('Fourier labels must be permutations')
    values=[]
    for i,k in PAIRS:
        for j,l in PAIRS:
            x=phases[i][j]+phases[k][l]-phases[i][l]-phases[k][j]
            x-=arb.pi()*(a[i]-a[k])*(b[j]-b[l])/3
            winding=round(float(x.mid())/(2*math.pi))
            values.append(abs(x-2*winding*arb.pi()).upper())
    return up(norm(values)/15)


def column_projection():
    return arb_mat([[(arb(int(i//6==j//6))-arb(1)/6) if i%6==j%6 else arb(0)
                     for j in range(36)] for i in range(36)])


def horizontal_projection():
    return arb_mat([[(arb(int(i//6==j//6))-arb(1)/6)*(arb(int(i%6==j%6))-arb(1)/6)
                     for j in range(36)] for i in range(36)])


def block(m,rows):return arb_mat([[m[i,j] for j in range(m.ncols())] for i in rows])


def centre_operator(h):
    defect=h.conjugate().transpose()*h
    for i in range(6):defect[i,i]-=6
    return up((arb(6)+norm([abs(x) for x in defect.entries()])).sqrt()/arb(6).sqrt())


def prepare_h(model):
    for name in ('r','tau'):
        if not model[name].is_finite() or not model[name]>=0:
            raise ValueError('nonnegative finite model radii required')
    for name,cols in (('Q0',1),('U',4),('H2',16)):
        if model[name].nrows()!=36 or model[name].ncols()!=cols:
            raise ValueError('invalid model dimensions: '+name)
    if model['X'].nrows()!=36:raise ValueError('invalid X dimension')
    p=column_projection()
    q,u,h2,x=(p*model[k] for k in ('Q0','U','H2','X'))
    r,tau=model['r'],model['tau']
    radius=[arb(v.rad()) for v in q.entries()]
    dh=up(C.Z.spectral(u)*r+C.Z.spectral(h2)*r*r/2+C.Z.spectral(x)*tau+norm(radius))
    columns=[]
    for c in range(6):
        ids=list(range(c,36,6))
        columns.append(up(C.Z.spectral(block(u,ids))*r+C.Z.spectral(block(h2,ids))*r*r/2+
                          C.Z.spectral(block(x,ids))*tau+norm([radius[i] for i in ids])))
    dh=min(dh,up(norm(columns)))
    phases=[[q[6*a+c,0].mid() for c in range(6)] for a in range(6)]
    hc=acb_mat([[acb(0,v).exp() for v in row] for row in phases])
    return dict(Hc=hc,dH=dh,h_columns=columns,sH=centre_operator(hc),model=model)


def phase_error(lc,chord_bound,entry_cap):
    """Use |t-c|^2=(|c|-1)^2+4|c| sin^2(theta/2), for |t|=1."""
    lower=[down(abs(z)) for z in lc.entries()]
    upper=[up(abs(z)) for z in lc.entries()]
    radial=[max(arb(0),lo-1,1-hi) for lo,hi in zip(lower,upper)]
    radial_squared=down(sum((v*v for v in radial),arb(0)))
    available=up(chord_bound*chord_bound-radial_squared)
    result=dict(radial_squared=radial_squared,available_squared=available)
    if available<0:return dict(result,incompatible=True)
    m=min(lower)
    if not m>0:return dict(result,incompatible=False,phase_error=None,reason='centre contains zero')
    x=up(entry_cap/(2*m.sqrt()))
    if not x<1:return dict(result,incompatible=False,phase_error=None,reason='entry chord exceeds phase bound')
    ratio=up(x.asin()/x) if x>0 else arb(1)
    error=up(ratio*max(arb(0),available).sqrt()/m.sqrt())
    return dict(result,incompatible=False,phase_error=error,m=m,angle_ratio=ratio)


def pattern(context,prepared,bounds,clique):
    if len(clique)!=6 or len(set(clique))!=6:raise ValueError('six distinct colors required')
    model=context['model'];r=model['r'];dh=context['dH'];hc=context['Hc'];sh=context['sH']
    v=arb_mat([[prepared[clique[c]]['v0'][a,0]] for a in range(6) for c in range(6)])
    t=arb_mat([[prepared[clique[c]]['T'][a,j] for j in range(4)] for a in range(6) for c in range(6)])
    rad=[arb(x.rad()) for x in v.entries()]
    pr=[up(bounds[color]['phase_radius']+norm(rad[c::6])) for c,color in enumerate(clique)]
    eps=[bounds[color]['epsilon'] for color in clique]
    if any(not x>=0 for x in pr+eps):raise ArithmeticError('negative or uncertain tube radius')
    absolute=up(norm(pr));errors=norm(eps)+norm(rad)
    dk=min(absolute,up(C.Z.spectral(t)*r+errors))
    horizontal=min(absolute,up(C.Z.spectral(horizontal_projection()*t)*r+errors))
    phases=[[v[6*a+c,0].mid() for c in range(6)] for a in range(6)]
    kc=acb_mat([[acb(0,x).exp() for x in row] for row in phases]);sk=centre_operator(kc)
    lc=hc.conjugate().transpose()*kc/arb(6).sqrt()
    # Both decompositions use an actual unitary factor on one side.
    chord=min(up(sh*dk+dh),up(dk+sk*dh))
    entry=min(chord,max(up(p+h) for p in pr for h in context['h_columns']))
    angle=phase_error(lc,chord,entry)
    gk=up(score_upper(phases)+arb(2)*horizontal/5)
    result=dict(g_up_K=gk,g_up_L=None,dH=dh,dK=dk,horizontal_K=horizontal,
                transition_chord=chord,entry_chord=entry,**angle)
    if angle['incompatible']:return result
    if angle['phase_error'] is not None:
        pl=[[lc[a,c].arg() for c in range(6)] for a in range(6)]
        result['g_up_L']=up(score_upper(pl)+arb(2)*angle['phase_error']/5)
    candidates=[gk]+([] if result['g_up_L'] is None else [result['g_up_L']])
    result['fourier_threshold_met']=min(candidates)<=arb(19)/50
    return result
