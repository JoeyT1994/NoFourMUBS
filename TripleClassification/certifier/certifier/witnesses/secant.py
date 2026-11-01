"""The moving-frame secant witness: one column of a pattern is excluded against two narrow anchor columns.

The witness {'colours', 'columns', 'secant'} names a column and two anchors of the pattern (by position) and a stored
numerical proposal (t, P, lam: a centre offset, a 5x10 preconditioner and a transverse row, as binary64 hex). The
anchors' tubes are rebuilt from their phase balls in the rebuilt cover (native_columns.build, contract), and the check
proves in Arb, over the whole phase ball of the selected column and the whole H cell, a positive secant gap of the
preconditioned system (so its solution is unique in a ball of certified radius) and a strictly positive transverse
margin lam . F on that ball (so no solution is unbiased): the pattern contains no MUB triple. Floats only propose
(t, P, lam); every acceptance is an Arb inequality.

The functions below are the acceptance half of TripleClassification/code/projector/moving_secant_certificate.py
(approved for the one-tree checker), unchanged: linear_parameter_map, moving_parameters, secant_gap, decode and
check_columns. That file's handoff-cell loader and command line are not needed here, and its proposal half is in
search/plane.py.
"""
import numpy as np
from flint import arb, arb_mat, ctx
from .. import pinned

A = pinned.anchored            # anchored-column algebra (PR #4)
C = pinned.native_columns      # native column tubes (frozen native certifier)


def check(model, columns, clique, witness):
    """Raises unless the secant witness excludes the pattern; returns its transverse margin."""
    cols = [dict(v0=list(columns[c]['v0']), radius=arb(columns[c]['phase_radius']), colour=c) for c in clique]
    return check_columns(model, cols, witness['secant'])['transverse_margin']


def valid(clique, witness):
    """The witness's shape: exactly these keys, a column and two anchors (distinct positions 0-5), and columns naming
    the pattern's colours at those positions."""
    x = witness['secant']; idx = [x.get('column'), *(x.get('anchors') or [])]
    return (set(witness) == {'colours', 'columns', 'secant'} and len(idx) == 3 and all(type(i) is int and 0 <= i < 6 for i in idx)
            and len(set(idx)) == 3 and witness['columns'] == [clique[i] for i in idx])


def linear_parameter_map(L,terms):
    D=arb_mat(L.nrows(),4)
    for z,ell,g,error,width in terms:
        y=A.dot(L,z)
        for i in range(L.nrows()):
            for k in range(4):D[i,k]-=2*y[i].imag*g[k]
    return D


def moving_parameters(terms,B,r):
    out=[]
    for z,ell,g,error,width in terms:
        moving=[g[k]+sum((ell[j]*B[j,k] for j in range(5)),arb(0)) for k in range(4)]
        out.append((z,ell,moving,error,(A.norm(moving)*r+error).upper()))
    return out


def secant_gap(P,terms,radius,offset,carrier,r,drift):
    """Average derivative along the entire segment, not its pointwise minimum."""
    S=arb_mat(5,5);tail=arb_mat(5,5);L=[arb_mat(5,5) for _ in range(5)]
    for z,ell in terms:
        y=A.dot(P,z)
        AA,DA=A.symmetric_majorant([-2*v.imag for v in y],ell)
        BB,DB=A.symmetric_majorant([-2*v.real for v in y],ell)
        delta=sum((ell[j]*offset[j,0] for j in range(5)),arb(0))
        motion=[sum((ell[j]*carrier[j,k] for j in range(5)),arb(0)) for k in range(4)]
        alpha=(A.norm(ell)*radius+abs(delta)+A.norm(motion)*r).upper()
        if not 0<alpha<arb.pi():raise ArithmeticError('secant phase range not verified')
        S+=AA
        for j in range(5):L[j]+=ell[j]*BB
        tail+=(1-alpha.sin()/alpha)*(DA+AA)/2+(alpha/2-(1-alpha.cos())/alpha)*DB
    square=sum((x*x for x in L),arb_mat(5,5))
    linear=radius*A.eigen_upper(square).sqrt()/2
    motion=[sum((L[j]*carrier[j,k] for j in range(5)),arb_mat(5,5)) for k in range(4)]
    if any(x!=0 for x in carrier.entries()):
        linear+=r*A.eigen_upper(sum((x*x for x in motion),arb_mat(5,5))).sqrt()/2
    shift=sum((L[j]*offset[j,0]/2 for j in range(5)),arb_mat(5,5))
    return A.eigen_lower(S-shift-tail-(linear+drift)*A.identity(5))


def decode(values,shape):
    x=np.asarray(values,dtype=object)
    if x.shape!=shape:raise ValueError('proposal dimensions')
    vals=[float.fromhex(v) for v in x.flat]
    if not np.isfinite(vals).all():raise ValueError('nonfinite proposal')
    return arb_mat(np.array(vals).reshape(shape).tolist())


def check_columns(model,cols,proposal,moving=True):
    """The Arb check for six phase balls cols (dicts v0, radius, colour) and an H model (vendored split of check);
    raises unless the selected pattern is excluded."""
    cols=[dict(x) for x in cols]
    c=proposal['column'];anchors=proposal['anchors']
    if len(anchors)!=2 or len({c,*anchors})!=3 or any(type(i) is not int or not 0<=i<6 for i in [c,*anchors]):
        raise ValueError('invalid column selection')
    tube_records=[]
    for j in anchors:
        old=cols[j];pp=C.build(model,[A.mid(x) for x in old['v0']])
        offset=A.norm([pp['v0'][a,0]-old['v0'][a] for a in range(6)])
        bd=C.contract(pp,(old['radius']+offset).upper())
        cols[j]=dict(old,v0=A.vec(pp['v0']),T=pp['T'],epsilon=bd['epsilon'])
        tube_records.append(dict(column=j,colour=old['colour'],radius=str(old['radius']),
                                 center_adjustment=str(offset),epsilon=str(bd['epsilon'])))
    t=decode([[v] for v in proposal['t']],(5,1));P=decode(proposal['P'],(5,10));lam=decode([proposal['lam']],(1,10))
    E=A.basis();et=E*t;center=[cols[c]['v0'][a]+et[a,0] for a in range(6)]
    ref=A.reference_terms(model,cols,anchors,center,E)
    params=A.parameter_terms(model,cols,anchors,center,E)
    pv,M=A.value_and_jacobian(P,ref);D=linear_parameter_map(P,params)
    if not A.positive_definite((M+M.transpose())/2):raise ArithmeticError('predictor matrix invertibility not certified')
    B=-(M.inv()*D) if moving else arb_mat(5,4)
    terms=moving_parameters(params,B,model['r']);force=A.forcing(P,terms,model['r'])
    # For B=-(P J)^(-1) P D, the first-order selected w term vanishes
    # identically. B is an exact algebraically defined matrix enclosed by Arb.
    linear=arb(0) if moving else force['linear']
    N=(A.norm(pv.entries())+linear+force['remainder']).upper()
    residual=D+M*B
    initial_gap=secant_gap(P,ref,cols[c]['radius'].upper(),t,B,model['r'],force['drift'])
    if not initial_gap>0:raise ArithmeticError('whole original phase-ball secant gap not positive')
    cap=(N/initial_gap).upper();steps=[dict(gap=str(initial_gap),radius=str(cap))]
    for _ in range(3):
        try:g=secant_gap(P,ref,cap,arb_mat(5,1),arb_mat(5,4),arb(0),force['drift'])
        except ArithmeticError:break
        if not g>0:break
        new=(N/g).upper()
        if not new<cap:break
        cap=new;steps.append(dict(gap=str(g),radius=str(cap)))
    lv,lj=A.value_and_jacobian(lam,ref);lf=A.forcing(lam,terms,model['r'])
    curvature=sum((2*abs(A.dot(lam,z)[0]).upper()*A.norm(ell)*A.norm(ell) for z,ell in ref),arb(0))
    loss=lf['linear']+lf['remainder']+(A.norm(lj.entries())+lf['drift'])*cap+curvature*cap*cap/2
    margin=lv[0,0]-loss
    if not margin>0:raise ArithmeticError('transverse margin not positive')
    return dict(column=c,colour=cols[c]['colour'],anchors=anchors,source_H_radius=str(model['r']),
                source_column_radius=str(cols[c]['radius']),anchor_tubes=tube_records,
                moving_frame=moving,predictor=[str(x) for x in B.entries()],
                predictor_identity_residual_bound=str(A.norm(residual.entries())),
                first_order_selected_w_term='IDENTICALLY ZERO' if moving else str(linear),
                selected_numerator=str(N),selected_remainder=str(force['remainder']),steps=steps,
                transverse_value=str(lv[0,0]),transverse_parameter_linear=str(lf['linear']),
                transverse_parameter_remainder=str(lf['remainder']),transverse_margin=str(margin),precision_bits=ctx.prec)

