#!/usr/bin/env python3
"""Exhaustive triple classification with the ORIGINAL seed ball as input.

The parameter ball is never replaced by a smaller ball.  A complete Stage C
cover supplies every possible K.  Each resulting 55-phase box is excluded,
identified with an explicit known family, or subdivided.  Resource limits
produce NOT ESTABLISHED, with every unfinished box retained.

Floating arithmetic proposes preconditioners and column permutations only.
All exclusions, contractions, inclusions and final acceptance use Arb/exact
arithmetic.  See WHOLE_BALL.md for the quantifiers and the proof.
"""
import argparse
import gzip
import hashlib
import itertools
import json
import time
from pathlib import Path
import sys

import numpy as np
from flint import acb, arb, arb_mat, ctx, fmpq_mat

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
sys.path[:0] = [str(HERE), str(HERE.parent), str(ROOT/'proof/seed_atlas/cert')]
import known_family as KF
import patches as P
import seedcert as SC
import seed_cover as C
import wholeball as Z
from local import H_POS, K_POS, residual_jacobian, norm_inf


def hull(a, b):
    return a.union(b)


def exact_preconditioner(j, columns):
    """All 96 equations participate; a binary64 pseudoinverse is only a proposal."""
    a = np.array([[float(j[r][c].mid()) for c in columns] for r in range(96)])
    with np.errstate(all='ignore'):
        b = np.linalg.pinv(a)
    if not np.all(np.isfinite(b)):
        raise ArithmeticError('nonfinite preconditioner proposal')
    return Z.mat(b)


def matrices(x):
    if len(x) != 55 or any(not v.is_finite() for v in x):
        raise ValueError('55 finite phase intervals required')
    h = [[acb(1) for _ in range(6)] for _ in range(6)]
    k = [[acb(1) for _ in range(6)] for _ in range(6)]
    for p, v in zip(H_POS, x[:25]): h[p[0]][p[1]] = acb(0, v).exp()
    for p, v in zip(K_POS, x[25:]): k[p[0]][p[1]] = acb(0, v).exp()
    return h, k


def equations(x):
    return residual_jacobian(*matrices(x))


def phase_lift(z):
    """Certified local angle, including negative-real entries with interval noise."""
    if not abs(z)>0: raise ArithmeticError('phase at zero is undefined')
    ref=arb(float(np.arctan2(float(z.imag.mid()),float(z.real.mid()))))
    delta=(z*acb(0,-ref).exp()).arg()
    if not abs(delta)<arb.pi()/2: raise ArithmeticError('ambiguous phase lift')
    return ref+delta


def local_family(template, free, targets):
    """Uniform known-family existence on any requested two-coordinate box.

    Recenter the two normal variables before bounding; the normal error tends
    to zero as the free-coordinate box shrinks, even far from the base anchor.
    The identities C*T=I and C*N=0 hold exactly by rational construction.
    """
    if len(free) != 2 or len(set(free)) != 2 or any(i not in range(25) for i in free):
        raise ValueError('two distinct H coordinates required')
    coeff = KF.phase_coefficients(template)
    a = fmpq_mat([[-1,-1,0,0],[-1,1,2,0],coeff[free[0]],coeff[free[1]]])
    inv = a.inv()
    n0 = arb_mat([[arb(inv[i,j]) for j in range(2)] for i in range(4)])
    t0 = arb_mat([[arb(inv[i,j+2]) for j in range(2)] for i in range(4)])
    sm = arb_mat([[v.mid()] for v in targets])
    ds = arb_mat([[v-v.mid()] for v in targets])
    z = arb_mat(2,1)
    for _ in range(12):
        pc = t0*sm+n0*z
        f,j = KF.g_jac([pc[i,0] for i in range(4)])
        z = (z-(j*n0).solve(f)).mid()
    pc = t0*sm+n0*z
    f,j = KF.g_jac([pc[i,0] for i in range(4)])
    b = (j*n0).inv().mid()
    n = n0*b
    t = t0-n0*((j*n0).solve(j*t0)).mid()
    drift = t*ds
    error = max(abs(v).upper() for v in (f+j*drift).entries())
    error += sum((abs(sum((nu[i]*drift[i,0] for i in range(4)),arb(0))).upper()**2/2
                  for nu in KF.FREQUENCIES),arb(0))
    def evaluate(e):
        box = pc+drift+n*arb_mat([[arb(0,e)],[arb(0,e)]])
        _,dj = KF.g_jac([box[i,0] for i in range(4)])
        return box,norm_inf(Z.eye(2)-dj*n)
    _,q = evaluate(arb(0))
    if not q<1: raise ArithmeticError('known-family initial contraction')
    e = (2*error/(1-q)).upper()
    if e == 0: e = arb(2)**-100
    for _ in range(30):
        box,q = evaluate(e)
        if not q<1: raise ArithmeticError('known-family tube contraction')
        if error+q*e<e: break
        e = (arb(11)/10*error/(1-q)).upper()
    else: raise ArithmeticError('known-family self-map')
    hp = arb_mat(coeff)*box
    kp = KF.k_phase_box([box[i,0] for i in range(4)],template)
    h0,k0 = KF.matrices([arb(0)]*4,template)
    phases = [phase_lift(h0[r][c])+hp[i,0] for i,(r,c) in enumerate(H_POS)]
    phases += [phase_lift(k0[r][c])+kp[i] for i,(r,c) in enumerate(K_POS)]
    return dict(phases=phases,q=q,epsilon=e,free=free,template=template)


def lift_near(a, reference):
    """Shift by one exact integer multiple of 2*pi; no exclusion is made."""
    turns = int(round(float((reference.mid()-a.mid())/(2*arb.pi()))))
    return a+2*turns*arb.pi()


def align_template(template, x):
    """Propose a permutation of the known K columns for this ordered clique."""
    _,k = KF.matrices([arb(0)]*4,template)
    a = np.array([[float(phase_lift(k[r][c])) for c in range(6)] for r in range(1,6)])
    v = np.array([float(z.mid()) for z in x[25:]]).reshape(5,6)
    cost = np.sum(((v[:,:,None]-a[:,None,:]+np.pi)%(2*np.pi)-np.pi)**2,axis=0)
    perm = min(itertools.permutations(range(6)), key=lambda p:sum(cost[c,p[c]] for c in range(6)))
    out = dict(template)
    old = template.get('k_columns',list(range(6)))
    out['k_columns'] = [old[i] for i in perm]
    return out, sum(cost[c,perm[c]] for c in range(6))


def family_test(x, template, free):
    """If this passes, EVERY triple in x is explicitly of the known type."""
    h0,_ = KF.matrices([arb(0)]*4,template)
    targets = [x[i]-lift_near(phase_lift(h0[H_POS[i][0]][H_POS[i][1]]),x[i]) for i in free]
    family = local_family(template,free,targets)
    known = [lift_near(v,x[i]) for i,v in enumerate(family['phases'])]
    # Exact free-coordinate identities, not interval equality, justify fixing
    # these two coordinates on the segment between the two triples.
    domain = [x[i] if i in free else hull(x[i],known[i]) for i in range(55)]
    columns = [i for i in range(55) if i not in free]
    _,jm = equations([v.mid() for v in domain])
    b = exact_preconditioner(jm,columns)
    _,j = equations(domain)
    q = norm_inf(Z.eye(53)-b*arb_mat([[j[r][c] for c in columns] for r in range(96)]))
    if not q<1: raise ArithmeticError('transverse injectivity q='+str(q))
    return dict(status='CERTIFIED',kind='known family',free=free,template=template,
                normal_q=str(q),family_q=str(family['q']))


def contract(x, free, rounds=3):
    """Parametric interval Newton; retain EVERY zero, even when q >= 1.

    Each iterate follows the mean-value identity with the free variables held
    fixed. Empty intersections exclude; otherwise the narrowed box is a cover.
    """
    x = list(x)
    columns = [i for i in range(55) if i not in free]
    for _ in range(rounds):
        f,j = equations(x)
        if any(not v.contains(0) for v in f): return None
        centre = [v if i in free else v.mid() for i,v in enumerate(x)]
        fc,_ = equations(centre)
        _,jm = equations([v.mid() for v in x])
        b = exact_preconditioner(jm,columns)
        a = arb_mat([[j[r][c] for c in columns] for r in range(96)])
        error = Z.eye(len(columns))-b*a
        delta = arb_mat([[x[c]-x[c].mid()] for c in columns])
        image = arb_mat([[x[c].mid()] for c in columns])-b*arb_mat([[v] for v in fc])+error*delta
        new = list(x)
        for i,c in enumerate(columns):
            if not x[c].overlaps(image[i,0]): return None
            new[c] = x[c].intersection(image[i,0])
        x = new
    return x


def native_data(model):
    """Compute once, with the unmodified original centre/frame/radius."""
    r = model['r'];g = Z.mat(np.array(SC.gauge_matrix(),dtype=float))
    q0,u,h2,x = (g*model[key] for key in ('Q0','U','H2','X'))
    def radius(a, linear, quadratic, normal):
        return (sum((abs(linear[a,j]).upper()**2 for j in range(4)),arb(0)).sqrt()*r
                +P.matrix_norm(arb_mat([[quadratic[a,4*i+j] for j in range(4)] for i in range(4)]))*r*r/2
                +sum((abs(normal[a,j]).upper()**2 for j in range(21)),arb(0)).sqrt()*model['tau'])
    hp = [q0[6*a+b,0]+arb(0,radius(6*a+b,u,h2,x).upper()) for a,b in H_POS]
    # Fixed row gauge in the torus cover -> parameter-dependent dephased H gauge.
    rowmap = arb_mat([[int(j==0)-int(j==6*a) for j in range(36)] for a in range(1,6)])
    ru,rh,rx = (rowmap*model[key] for key in ('U','H2','X'))
    rowrad = [radius(a,ru,rh,rx) for a in range(5)]
    return dict(hp=hp,rowrad=rowrad,q0=q0,u=u,h2=h2,x=x,tau=model['tau'],r=r,
                mi=Z.mat(model['ball'].Mth).inv(),theta=P.col(model['ball'].theta0))


def native_phase_box(model, labels, clique, level, data=None):
    """A 55-phase enclosure of ALL triples represented by a native clique."""
    data=native_data(model) if data is None else data
    out=list(data['hp'])
    for a,c in K_POS:
        label = labels[clique[c]]
        angle = arb(2*label['bin'][a-1]+1)*arb.pi()/level
        # Labels use the Euclidean metric AFTER removing common phase. With
        # the first entry fixed, delta_i=<e_i-e_0,P delta>, so |delta_i|<=sqrt(2)*rho.
        lr = arb(2).sqrt()*arb(float.fromhex(label['radius_cycles_upper_hex']))*2*arb.pi()
        out.append(angle+arb(0,(lr+data['rowrad'][a-1]).upper()))
    return out


def native_filter(box, data):
    """Intersect with the ORIGINAL ball and its certified H model.

    The inverse seed map is exact. This is a necessary-condition contractor,
    not a claim that every interval point is a matrix on the native branch.
    """
    seeds=[H_POS.index(p) for p in Z.SEEDS]
    w=data['mi']*(arb_mat([[box[i]] for i in seeds])-data['theta'])
    bound=arb(0,data['r'].upper())
    for i in range(4):
        if not w[i,0].overlaps(bound): return None
        w[i,0]=w[i,0].intersection(bound)
    # abs(interval).lower() can be NEGATIVE when the interval meets zero;
    # squaring that value is not a valid lower bound for the squared norm.
    if sum((w[i,0].abs_lower()**2 for i in range(4)),arb(0))>data['r']**2:
        return None
    qp=data['q0']+data['u']*w+P.tensor_at(data['h2'],w)*w/2
    out=list(box)
    for i,(a,b) in enumerate(H_POS):
        e=6*a+b
        rho=sum((abs(data['x'][e,j]).upper()**2 for j in range(21)),arb(0)).sqrt()*data['tau']
        value=qp[e,0]+arb(0,rho.upper())
        if not out[i].overlaps(value): return None
        out[i]=out[i].intersection(value)
    return out


def split_box(x, coordinate):
    """Two closed children; outward rounding can overlap but can never leave a gap."""
    a,b = list(x),list(x)
    lo,hi,mid = x[coordinate].lower(),x[coordinate].upper(),x[coordinate].mid()
    a[coordinate] = hull(lo,mid)
    b[coordinate] = hull(mid,hi)
    return a,b


def encode_box(x): return [str(v) for v in x]


def verify_cover(cover, atlas, index):
    """Receipts are not trusted inputs: replay their producer before use."""
    fresh = C.run(atlas,index,cover['levels'][-1]['level'])
    if fresh['enumeration']!='COMPLETE' or fresh['cliques'] is None:
        raise ArithmeticError('incomplete input clique enumeration')
    for key in ('atlas_sha256','seed_index','radius_hex','labels','adjacency_hex','cliques'):
        if fresh[key] != cover[key]: raise ArithmeticError('cover replay differs: '+key)
    return fresh


def solve_boxes(boxes, templates, max_nodes=1000, max_depth=80, native=None):
    """Exhaustive DFS. The returned unresolved list is part of the result."""
    if max_nodes<0 or max_depth<0: raise ValueError('nonnegative resource limits required')
    stack = [(tag,0,x) for tag,x in reversed(boxes)]
    closed=[];pending=[];nodes=0;started=time.monotonic()
    free_candidates=[(0,1),(0,5),(0,6),(1,5),(1,6),(5,6)]
    while stack and nodes<max_nodes:
        tag,depth,x = stack.pop();nodes+=1
        if native is not None:
            x=native_filter(x,native)
            if x is None:
                closed.append(dict(path=tag,kind='outside native image'));continue
        ranked=sorted((align_template(t,x) for t in templates),key=lambda p:p[1])
        # Choice affects speed only. A passing contraction is checked in Arb.
        template=ranked[0][0]
        candidates=[]
        for free in free_candidates:
            try:
                coeff=KF.phase_coefficients(template)
                fmpq_mat([[-1,-1,0,0],[-1,1,2,0],coeff[free[0]],coeff[free[1]]]).inv()
                candidates.append(free)
            except ZeroDivisionError: pass
        free=candidates[0] if candidates else (0,1)
        try: reduced=contract(x,free)
        except (ArithmeticError,ZeroDivisionError,np.linalg.LinAlgError): reduced=x
        if reduced is None:
            closed.append(dict(path=tag,kind='excluded'));continue
        x=reduced;proof=None
        for template,_ in ranked[:2]:
            for free in candidates:
                try: proof=family_test(x,template,free);break
                except (ArithmeticError,ZeroDivisionError,np.linalg.LinAlgError):pass
            if proof:break
        if proof:
            closed.append(dict(path=tag,**proof));continue
        if depth>=max_depth:
            pending.append(dict(path=tag,depth=depth,box=encode_box(x)));continue
        # Widest coordinate is a proposal only; every child covers its half.
        seeds=[H_POS.index(p) for p in Z.SEEDS]
        seed=max(seeds,key=lambda i:float(x[i].rad()))
        if native is not None and not x[seed].rad()<native['r']/16:
            coordinate=seed
        else:
            coordinate=max(range(55),key=lambda i:float(x[i].rad()))
        left,right=split_box(x,coordinate)
        stack.append((tag+'/1',depth+1,right));stack.append((tag+'/0',depth+1,left))
        if nodes%25==0:
            print(json.dumps(dict(nodes=nodes,closed=len(closed),pending=len(pending)+len(stack),
                                  seconds=round(time.monotonic()-started,2))),flush=True)
    pending.extend(dict(path=tag,depth=d,box=encode_box(x)) for tag,d,x in stack)
    return dict(status='CERTIFIED' if not pending else 'NOT ESTABLISHED',nodes=nodes,
                closed=closed,unresolved=pending,seconds=time.monotonic()-started)


def run(atlas,index,cover_path,max_nodes,max_depth):
    ctx.prec=160
    cover=json.loads(gzip.decompress(cover_path.read_bytes()))
    cover=verify_cover(cover,atlas,index)
    document=json.loads(gzip.decompress(atlas.read_bytes()));ball=SC.Ball(document['seeds'][index])
    if cover['radius_hex'] != float(ball.r).hex(): raise ArithmeticError('original radius mismatch')
    model=P.normal_form(ball,prec=160)
    proposals=json.loads((HERE/'anchor_proposals.json').read_text())
    level=cover['levels'][-1]['level']
    native=native_data(model)
    boxes=[('clique/'+str(i),native_phase_box(model,cover['labels'],c,level,native)) for i,c in enumerate(cover['cliques'])]
    result=solve_boxes(boxes,proposals['templates'],max_nodes,max_depth,native)
    # Unvisited roots are reproduced exactly from the bound, replayed cover.
    # Avoid duplicating the same 25 H intervals tens of thousands of times.
    for leaf in result['unresolved']:
        if leaf['depth']==0:
            leaf['initial_clique']=int(leaf['path'].split('/')[1])
            del leaf['box']
    result.update(target_claim='every MUB triple over the entire original seed ball is of Conjecture 1 type',
                  original_seed_index=index,radius_hex=float(ball.r).hex(),coordinates='original w, unchanged',
                  complete_input_cliques=len(boxes),atlas_sha256=hashlib.sha256(atlas.read_bytes()).hexdigest(),
                  cover_replayed=True,cover_sha256=hashlib.sha256(cover_path.read_bytes()).hexdigest(),
                  precision_bits=ctx.prec,max_nodes=max_nodes,max_depth=max_depth)
    paths=[HERE/n for n in ('whole_ball.py','known_family.py','seed_cover.py','anchor_proposals.json')]
    paths.extend(HERE.parent/n for n in ('local.py','tao.py'))
    paths.extend(ROOT/'proof/seed_atlas/cert'/n for n in ('patches.py','wholeball.py','seedcert.py','wholeball_basis.json'))
    result['source_sha256']={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths}
    return result


if __name__=='__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--atlas',type=Path,default=ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz')
    parser.add_argument('--index',type=int,default=1879)
    parser.add_argument('--cover',type=Path,default=HERE/'results/seed1879_native_cover.json.gz')
    parser.add_argument('--max-nodes',type=int,default=1000)
    parser.add_argument('--max-depth',type=int,default=80)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    out=run(args.atlas,args.index,args.cover,args.max_nodes,args.max_depth)
    args.output.write_bytes(gzip.compress((json.dumps(out,separators=(',',':'))+'\n').encode()))
    print(json.dumps({k:out[k] for k in ('status','nodes','complete_input_cliques','radius_hex')}),flush=True)
