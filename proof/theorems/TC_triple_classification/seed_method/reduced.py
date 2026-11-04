"""Four-seed-variable reduction and 2x2 normal tests for whole seed balls."""
import itertools
import numpy as np
import sympy as sp
from flint import acb,arb,arb_mat,fmpq,fmpq_mat

import column_models as CM
import known_family as KF
import wholeball as Z
from local import H_POS,norm_inf


def h_box_and_derivative(model):
    r=model['r'];q=[];dq=arb_mat(36,4)
    for a in range(36):
        un=sum((abs(model['U'][a,k]).upper()**2 for k in range(4)),arb(0)).sqrt()
        hn=Z.spectral(arb_mat([[model['H2'][a,4*k+l] for l in range(4)] for k in range(4)]))
        xn=sum((abs(model['X'][a,k]).upper()**2 for k in range(21)),arb(0)).sqrt()
        q.append(model['Q0'][a,0]+arb(0,(un*r+hn*r*r/2+xn*model['tau']).upper()))
        for k in range(4):
            lin=sum((abs(model['H2'][a,4*k+l]).upper()**2 for l in range(4)),arb(0)).sqrt()
            dq[a,k]=model['U'][a,k]+arb(0,(lin*r+xn*model['Z1']).upper())
    return q,dq


def derivative(prepared,hbox,dh):
    v=CM.phase_box(prepared,prepared['epsilon']);j=arb_mat(6,5);fw=arb_mat(6,4)
    for c in range(6):
        for a,b in CM.PAIRS:
            q=acb(0,v[a]-v[b]-hbox[6*a+c]+hbox[6*b+c]).exp()
            for k in range(5):j[c,k]+=-2*q.imag*(int(a==k+1)-int(b==k+1))
            for k in range(4):fw[c,k]+=2*q.imag*(dh[6*a+c,k]-dh[6*b+c,k])
    dv=-(prepared['pre']*j).solve(prepared['pre']*fw)
    return v,arb_mat([[arb(0)]*4]+[[dv[i,k] for k in range(4)] for i in range(5)])


def graph(prepared):
    """A necessary orthogonality graph, retaining correlations in the four w's."""
    adjacency=[0]*len(prepared);r=prepared[0]['model']['r']
    for b in range(len(prepared)):
        pb=prepared[b]
        for a in range(b):
            pa=prepared[a];s=acb(1);grad=[acb(0)]*4;err=arb(5).sqrt()*(pa['epsilon']+pb['epsilon'])
            for row in range(5):
                q=acb(0,pb['v0'][row]-pa['v0'][row]).exp();s+=q
                aa=[pb['T'][row,k]-pa['T'][row,k] for k in range(4)]
                bn=Z.spectral(arb_mat([[pb['V2'][row,4*k+l]-pa['V2'][row,4*k+l]
                                       for l in range(4)] for k in range(4)]))
                an=sum((x*x for x in aa),arb(0)).sqrt()
                for k in range(4):grad[k]+=acb(0,aa[k])*q
                err+=bn*r*r/2+(an*r+bn*r*r/2)**2/2
            gn=Z.spectral(arb_mat([[v.real for v in grad],[v.imag for v in grad]]))
            if not abs(s)>r*gn+err:
                adjacency[a]|=1<<b;adjacency[b]|=1<<a
    return adjacency


def rational_matrix(a):
    return fmpq_mat([[fmpq(*float(v).as_integer_ratio()) for v in row] for row in a])


def plane(template,ball):
    positions=[H_POS.index(p) for p in Z.SEEDS]
    s=sp.Matrix([KF.phase_coefficients(template)[i] for i in positions])
    if s.rank()!=2:raise ArithmeticError('this template needs a nonlinear seed surface')
    left=s.T.nullspace()
    ltheta=fmpq_mat([[fmpq(int(x.p),int(x.q)) for x in v] for v in left])
    lw=ltheta*rational_matrix(ball.Mth)
    n=lw.transpose()*(lw*lw.transpose()).inv()
    eye=fmpq_mat([[int(i==j) for j in range(4)] for i in range(4)])
    projection=eye-n*lw
    if projection!=projection.transpose() or projection*projection!=projection or lw*projection!=fmpq_mat(2,4):
        raise ArithmeticError('orthogonal projection identity failed')
    return arb_mat(n),s,[[str(lw[i,j]) for j in range(4)] for i in range(2)]


def match_template(clique,prepared,templates):
    model=prepared[0]['model'];baseh=model['H']
    for template in templates:
        h,k=KF.matrices([arb(0)]*4,template)
        if any(h[r][c]!=baseh[r,c] for r in range(6) for c in range(6)):continue
        assignment=[]
        for c in range(6):
            hits=[]
            for i in clique:
                root=prepared[i];ok=True
                for row in range(1,6):
                    shift=model['Q0'][6*row,0]-model['Q0'][0,0]
                    delta=(k[row][c]*acb(0,shift-root['v0'][row-1]).exp()).arg()
                    if not abs(delta)<root['cube']:ok=False;break
                if ok:hits.append(i)
            if len(hits)!=1:break
            assignment.append(hits[0])
        else:
            if len(set(assignment))==6:
                return template,assignment
    raise ArithmeticError('clique has no certified exact construction anchor')


def normal_taylor(clique,prepared,n):
    """Enclose Dg*N with a correlated linear polynomial in the same four w's."""
    r=prepared[0]['model']['r'];a0=[];a1=[];errors=[];names=[]
    for ia,ib in itertools.combinations(clique,2):
        pa,pb=prepared[ia],prepared[ib]
        grad=[acb(0)]*4;hess=[[acb(0)]*4 for _ in range(4)];error=arb(0)
        eps=pa['epsilon']+pb['epsilon'];z1=pa['normal_derivative']+pb['normal_derivative']
        for row in range(5):
            q=acb(0,pb['v0'][row]-pa['v0'][row]).exp()
            a=[pb['T'][row,k]-pa['T'][row,k] for k in range(4)]
            b=arb_mat([[pb['V2'][row,4*k+l]-pa['V2'][row,4*k+l] for l in range(4)] for k in range(4)])
            an=sum((v*v for v in a),arb(0)).sqrt();bn=Z.spectral(b)
            delta=an*r+bn*r*r/2+eps
            error+=an*(bn*r*r/2+eps+delta*delta/2)+bn*r*delta+z1
            for k in range(4):
                grad[k]+=acb(0,a[k])*q
                for l in range(4):hess[k][l]+=(acb(0,b[k,l])-a[k]*a[l])*q
        for part in ('real','imag'):
            a0.append([getattr(v,part) for v in grad])
            a1.append([getattr(hess[k][l],part) for k in range(4) for l in range(4)])
            errors.append(error);names.append((ia,ib,part))
    a0=arb_mat(a0);a1=arb_mat(a1);point=a0*n
    proposals=[]
    for i,j in itertools.combinations(range(30),2):
        aa=np.array([[float(point[k,l].mid()) for l in range(2)] for k in (i,j)])
        proposals.append((np.linalg.cond(aa),i,j))
    ncols=[sum((abs(n[l,j]).upper()**2 for l in range(4)),arb(0)).sqrt() for j in range(2)]
    for _,i,j in sorted(proposals):
        inds=[i,j];block=arb_mat([[point[k,l] for l in range(2)] for k in inds])
        try:b=block.mid().inv().mid()
        except ZeroDivisionError:continue
        zero=Z.eye(2)-b*block;rowbounds=[]
        for a in range(2):
            total=arb(0)
            for c in range(2):
                linear=[sum((b[a,t]*a1[inds[t],4*k+l]*n[l,c] for t in range(2) for l in range(4)),arb(0)) for k in range(4)]
                remainder=sum((abs(b[a,t])*errors[inds[t]] for t in range(2)),arb(0))*ncols[c]
                total+=abs(zero[a,c])+r*sum((abs(v).upper()**2 for v in linear),arb(0)).sqrt()+remainder
            rowbounds.append(total)
        q=arb(max(Z.upper(v) for v in rowbounds))
        if q<1:return q,[names[i],names[j]]
    raise ArithmeticError('correlated 2x2 normal test did not certify')


def classify_clique(clique,prepared,templates,derivatives=None):
    template,assignment=match_template(clique,prepared,templates)
    model=prepared[0]['model'];n,s,lw=plane(template,model['ball'])
    # Select two independent seed phase coordinates; existence is checked for
    # their full projected ball ranges. S has rank two, so this covers its plane.
    family=None;free=None
    positions=[H_POS.index(p) for p in Z.SEEDS]
    for pair in itertools.combinations(range(4),2):
        if s[list(pair),:].rank()!=2:continue
        target=[]
        for i in pair:
            rad=model['r']*sum((arb(float(v))**2 for v in model['ball'].Mth[i]),arb(0)).sqrt()
            target.append(arb(0,rad.upper()))
        try:
            free=[positions[i] for i in pair];family=KF.cover(template,free,target);break
        except (ArithmeticError,ZeroDivisionError):continue
    if family is None:raise ArithmeticError('known family does not cover the seed plane')
    if derivatives is None:
        q,names=normal_taylor(clique,prepared,n)
        return dict(status='CERTIFIED',clique=clique,template=template,anchor_assignment=assignment,
                    seed_plane_lw=lw,free_phase_coordinates=free,family_q=str(family['q']),
                    normal_equations=names,normal_q=str(q),method='correlated quadratic normal test')
    rows=[];names=[]
    for a,b in itertools.combinations(clique,2):
        va,da=derivatives[a];vb,db=derivatives[b]
        grad=[sum((acb(0,db[i,j]-da[i,j])*acb(0,vb[i]-va[i]).exp() for i in range(6)),acb(0)) for j in range(4)]
        rows.extend([[v.real for v in grad],[v.imag for v in grad]])
        names.extend([(a,b,'real'),(a,b,'imag')])
    a=arb_mat(rows)*n
    proposals=[]
    for i,j in itertools.combinations(range(30),2):
        point=np.array([[float(a[k,l].mid()) for l in range(2)] for k in (i,j)])
        proposals.append((np.linalg.cond(point),i,j))
    for _,i,j in sorted(proposals):
        block=arb_mat([[a[k,l] for l in range(2)] for k in (i,j)])
        try:b=block.mid().inv().mid()
        except ZeroDivisionError:continue
        q=norm_inf(Z.eye(2)-b*block)
        if q<1:
            return dict(status='CERTIFIED',clique=clique,template=template,anchor_assignment=assignment,
                        seed_plane_lw=lw,free_phase_coordinates=free,family_q=str(family['q']),
                        normal_equations=[names[i],names[j]],normal_q=str(q))
    raise ArithmeticError('2x2 normal test did not certify')
