"""Exhaustive native-ball ray cover with arbitrary proposed root colors.

Stage C uses its published conservative binary64 error enclosures. New
distance, contraction and graph-removal decisions are Arb inequalities.
No completeness assumption is made about the root proposals.
"""
import itertools
import time
import numpy as np
from flint import arb,arb_mat,acb,ctx
import native_columns as C
from seed_cover import all_cliques
import seedcert as SC
import stagec


def propose_roots(h):
    """Numerical proposals only; no acceptance depends on Newton succeeding."""
    u,_=stagec.bins(np.angle(h)/(2*np.pi),0.0)
    if u is None:raise ArithmeticError('proposal bin cap')
    p=np.array(u)*2*np.pi
    for _ in range(50):
        x=np.exp(1j*np.c_[np.zeros(len(p)),p]);s=x@h.conj()
        f=np.abs(s[:,1:])**2-6
        j=2*np.real(np.conj(s[:,1:])[:,:,None]*h.conj()[1:,1:].T[None,:,:]*1j*x[:,None,1:])
        try:step=np.linalg.solve(j,f[...,None])[...,0]
        except np.linalg.LinAlgError:step=np.einsum('nij,nj->ni',np.linalg.pinv(j),f)
        p-=np.clip(step,-.3,.3)
    x=np.exp(1j*np.c_[np.zeros(len(p)),p]);good=np.max(np.abs(np.abs(x@h.conj())**2-6),axis=1)<1e-9
    found=[]
    for v in x[good]:
        if all(np.max(np.abs(v-q))>1e-7 for q in found):found.append(v)
    if not found:
        # Arbitrary finite proposals remain safe: coloring splits every
        # same-color graph edge, without assuming these points are roots.
        if not len(p):return np.zeros((1,6))
        found=list(x[np.linspace(0,len(x)-1,min(64,len(x))).astype(int)])
    result=np.angle(np.array(found))
    if not np.isfinite(result).all():raise ArithmeticError('nonfinite ray proposals')
    return result


def complete_cover(ball,model,roots,cluster_radius=.02):
    started=time.monotonic()
    args=SC.stage_c_args(ball)
    bins,m=stagec.bins(args['P'],args['rcol'],rF=args['rF'],
                      tang=(args['T'],args['rH'],args['nN']))
    if bins is None:raise ArithmeticError('complete cover reached bin cap')
    if not len(bins):
        return dict(cliques=[],adjacency=[],initial_radii=[],roots=np.zeros((0,6)),
            bin_deltas=[],bin_radius=arb(0),summary=dict(bins=0,labels=0,colors=0,initial_patterns=0,seconds=time.monotonic()-started))
    clusters=stagec.cluster(bins,m,radius=cluster_radius)
    if clusters is None:raise ArithmeticError('complete cover reached cluster cap')
    centers,radii=clusters
    if len(centers)>6000:raise ArithmeticError('label cap reached')
    orth,_=stagec.edges(centers,radii)
    if int(orth.sum())>600000:raise ArithmeticError('joint-edge cap reached')
    orth,_=stagec.joint_filter(centers,radii,orth,np.zeros_like(orth),
        args['P'],args['rcol'],stagec.opnorm_bound(args['P']),stagec.cis_centre(args['P']),
        args['rF'],args['T'],args['rH'],args['nN'])
    # The Stage C centre is the stored P, while models use the true centre
    # Q0 in the same horizontal row gauge. Both use absolute column phases.
    u=np.c_[np.zeros(len(centers)),centers]*2*np.pi
    numeric=(u[:,None,:]-roots[None,:,:]+np.pi)%(2*np.pi)-np.pi
    numeric-=numeric.mean(2,keepdims=True)
    colors=np.linalg.norm(numeric,axis=2).argmin(1)
    # Split a proposed color whenever the necessary label graph permits two
    # orthogonal vectors in it. This also handles incomplete root proposals.
    # A color is an independent set of the *complete-cover* graph.
    original=colors.copy();expanded=list(roots)
    for color in range(len(roots)):
        groups=[]
        for i in np.flatnonzero(original==color):
            for new,ids in groups:
                if not orth[i,ids].any():break
            else:
                new=color if not groups else len(expanded)
                if groups:expanded.append(roots[color])
                ids=[];groups.append((new,ids))
            colors[i]=new;ids.append(i)
    roots=np.array(expanded)
    assert not np.any(orth & (colors[:,None]==colors[None,:]))
    quotient=np.zeros((len(roots),len(roots)),bool)
    ii,jj=np.where(orth);quotient[colors[ii],colors[jj]]=True
    adj=[sum(1<<j for j in range(len(roots)) if quotient[i,j]) for i in range(len(roots))]
    cliques,steps=all_cliques(adj,step_cap=5000000,clique_cap=500000)
    # Arc consistency is only a necessary test. Every actual six-clique is
    # retained in at least its own color pattern on every pruning round.
    valid=np.isin(colors,list(itertools.chain.from_iterable(cliques)))
    rounds=0
    while valid.any():
        new=np.zeros(len(valid),bool)
        for pattern in cliques:
            ids=np.flatnonzero(valid & np.isin(colors,pattern));ok=np.ones(len(ids),bool)
            for color in pattern:
                group=np.flatnonzero(valid & (colors==color));other=colors[ids]!=color
                ok[other] &= np.any(orth[np.ix_(ids[other],group)],axis=1)
            new[ids[ok]]=True
        if np.array_equal(new,valid):break
        valid=new;rounds+=1
    initial_patterns=len(cliques)
    quotient[:]=False
    ii,jj=np.where(orth & valid[:,None] & valid[None,:]);quotient[colors[ii],colors[jj]]=True
    adj=[sum(1<<j for j in range(len(roots)) if quotient[i,j]) for i in range(len(roots))]
    cliques,steps=all_cliques(adj,step_cap=5000000,clique_cap=500000)
    # Reproduce the cluster assignment, then bound the actual fine bins.
    # Using a label's enclosing ball here loses up to twice its cluster
    # radius and can prevent otherwise strong column contractions.
    ki=stagec._toint(bins);left=np.ones(len(ki),bool);assignment=np.full(len(ki),-1)
    for label,center in enumerate(centers):
        ids=np.flatnonzero(left);first=ids[0]
        if not np.array_equal(bins[first],center):raise ArithmeticError('cluster replay mismatch')
        delta=(ki[ids]-ki[first]+stagec.DEN//2)%stagec.DEN-stagec.DEN//2
        df=np.c_[np.zeros(len(delta)),delta]/stagec.DEN;df-=df.mean(1,keepdims=True)
        take=ids[np.linalg.norm(df,axis=1)<=cluster_radius]
        left[take]=False;assignment[take]=label
    if left.any() or np.any(assignment<0):raise ArithmeticError('incomplete cluster assignment')
    bin_deltas=[[] for _ in roots]
    maximum=[arb(0) for _ in roots];bin_radius=arb(29).sqrt()/arb(6).sqrt()*arb.pi()/m
    for i in np.flatnonzero(valid[assignment]):
        color=int(colors[assignment[i]])
        ds=[]
        for j in range(6):
            a=2*arb.pi()*arb(int(0 if j==0 else ki[i,j-1]))/stagec.DEN-arb(float(roots[color,j]))
            winding=round(float(a/(2*arb.pi())))
            ds.append(a-2*winding*arb.pi())
        mean=sum(ds,arb(0))/6
        ds=[d-mean for d in ds];bin_deltas[color].append(ds)
        bound=C.norm(ds)+bin_radius
        maximum[color]=arb(max(C.Z.upper(maximum[color]),C.Z.upper(bound)))
    return dict(cliques=cliques,adjacency=adj,initial_radii=maximum,roots=roots,bin_deltas=bin_deltas,bin_radius=bin_radius,label_centres=centers,label_radii=radii,label_colors=colors,label_graph=orth,valid_labels=valid,
                summary=dict(bins=len(bins),labels=len(centers),colors=len(roots),
                    valid_labels=int(valid.sum()),pruning_rounds=rounds,
                    initial_patterns=initial_patterns,pruned_patterns=len(cliques),clique_steps=steps,seconds=time.monotonic()-started))


def contract_patterns(model,roots,cover):
    roots=cover['roots']
    used=sorted(set(itertools.chain.from_iterable(cover['cliques'])))
    prepared={};bounds={}
    for color in used:
        prepared[color]=C.build(model,roots[color])
        epsilon=C.localize_bins(prepared[color],cover['bin_deltas'][color],cover['bin_radius']) if 'bin_deltas' in cover else None
        bounds[color]=C.contract(prepared[color],cover['initial_radii'][color],initial_epsilon=epsilon)
    adjacency=list(cover['adjacency'])
    for a,b in itertools.combinations(used,2):
        if adjacency[a]&(1<<b) and not C.orthogonal_possible(
                prepared[a],bounds[a]['epsilon'],prepared[b],bounds[b]['epsilon']):
            adjacency[a]&=~(1<<b);adjacency[b]&=~(1<<a)
    # Edges outside every original six-clique cannot form a new clique.
    cliques,steps=all_cliques(adjacency,step_cap=5000000,clique_cap=500000)
    return prepared,bounds,cliques,steps


def restrict_pattern_bins(model,prepared,bounds,cover,clique,rounds=2):
    """Necessary bin/column orthogonality, conditional on one full pattern.

    Each retained bin still covers its entire closed box. Rejections use
    Arb support bounds against an already proved reference-column tube.
    """
    pp=dict(prepared);bb=dict(bounds)
    deltas={c:cover['bin_deltas'][c] for c in clique};rho=cover['bin_radius'];r=model['r']
    for _ in range(rounds):
        strong=[c for c in clique if bb[c]['phase_radius']<arb('0.18')]
        changed=False
        for c in clique:
            if c in strong:continue
            keep=[]
            for d in deltas[c]:
                v0=pp[c]['v0']+arb_mat([[v] for v in d]);possible=True
                for ref in strong:
                    other=pp[ref];bound=bb[ref];s=acb(0);grad=[acb(0)]*4
                    for j in range(6):
                        z=acb(0,other['v0'][j,0]-v0[j,0]).exp();s+=z
                        for k in range(4):grad[k]+=acb(0,other['T'][j,k])*z
                    first=C.Z.spectral(arb_mat([[v.real for v in grad],[v.imag for v in grad]]))*r
                    er=rho+bound['epsilon'];dr=other['Tnorm']*r+er
                    if abs(s)>first+arb(6).sqrt()*er+dr*dr/2:
                        possible=False;break
                if possible:keep.append(d)
            if not keep:return pp,bb,False
            changed |= len(keep)<len(deltas[c]);deltas[c]=keep
            radius=arb(max(C.Z.upper(C.norm(d)+rho) for d in keep))
            localized=C.localize_bins(pp[c],keep,rho)
            bound=C.contract(pp[c],radius,initial_epsilon=localized)
            # Same carrier, so intersect both certified error bounds.
            if bound['epsilon']<bb[c]['epsilon']:bb[c]=bound
        if not changed:break
    return pp,bb,True


def label_pattern(cover,clique,step_cap=1000000):
    """An exhaustive necessary label-clique test, or one numerical witness.

    Only a completed empty search is an exclusion. A first clique merely
    proposes six expansion points; reaching the cap has no proof meaning.
    """
    groups={c:set(map(int,np.flatnonzero(cover['valid_labels'] & (cover['label_colors']==c)))) for c in clique}
    adjacency={i:set(map(int,np.flatnonzero(cover['label_graph'][i]))) for ids in groups.values() for i in ids}
    steps=0
    def search(remaining,chosen):
        nonlocal steps
        if not remaining:return chosen
        color=min(remaining,key=lambda c:len(remaining[c]))
        if not remaining[color]:return None
        for label in sorted(remaining[color]):
            steps+=1
            if steps>step_cap:raise RuntimeError('label search cap')
            nxt={c:ids & adjacency[label] for c,ids in remaining.items() if c!=color}
            out=search(nxt,{**chosen,color:label})
            if out is not None:return out
        return None
    try:found=search(groups,{})
    except RuntimeError:return dict(status='UNRESOLVED',steps=steps)
    if found is None:return dict(status='EXCLUDED',route='complete label-pattern search',steps=steps)
    phases=np.array([np.r_[0,cover['label_centres'][found[c]]]*2*np.pi for c in clique])
    return dict(status='PROPOSAL',steps=steps,phases=phases)
