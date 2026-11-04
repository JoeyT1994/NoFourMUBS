"""Refine one color pattern to its original closed torus bins.

No H-domain subdivision occurs. Stage C's existing necessary pair tests
are reused in bounded batches. Pair results are cached across patterns
from the same immutable cover; only complete empty searches exclude.
"""
import itertools
import time
import numpy as np
from flint import arb
import native_columns as C
import native_cover as NC
import stagec


def arc_consistent(graph,colors,clique):
    valid=np.ones(len(colors),bool);rounds=0
    while valid.any():
        updated=valid.copy()
        for color in clique:
            ids=np.flatnonzero(valid & (colors!=color))
            references=np.flatnonzero(valid & (colors==color))
            updated[ids]&=np.any(graph[np.ix_(ids,references)],axis=1)
        if np.array_equal(valid,updated):break
        valid=updated;rounds+=1
    return valid,rounds


def refine(ball,model,cover,clique,bin_cap=6000,edge_cap=5000000,batch_size=20000):
    started=time.monotonic()
    counts=[len(cover['bin_indices'][c]) for c in clique]
    if sum(counts)>bin_cap:return None,dict(status='UNRESOLVED',reason='fine-bin cap',bins=sum(counts))
    if any(n==0 for n in counts):return None,dict(status='EXCLUDED',route='empty fine-bin color')
    # These are the original integer midpoints, not reconstructed from fits.
    centres=[np.asarray(cover['bin_indices'][c],dtype=np.int64)/stagec.DEN for c in clique]
    colors=np.concatenate([np.full(n,c,dtype=int) for c,n in zip(clique,counts)])
    offsets=np.r_[0,np.cumsum(counts)];n=int(offsets[-1])
    graph=np.zeros((n,n),bool);s=C.Z.upper(cover['bin_radius']/(2*arb.pi()))
    args,_=NC.model_stage_c_args(ball,model)
    opnorm=stagec.opnorm_bound(args['P']);exponentials=stagec.cis_centre(args['P'])
    cache=cover.setdefault('_fine_pair_cache',{});candidate_edges=0;cache_hits=0
    for a,b in itertools.combinations(range(6),2):
        key=(clique[a],clique[b])
        if key in cache:
            filtered,count=cache[key];cache_hits+=1
        else:
            pair=np.concatenate([centres[a],centres[b]])
            radii=np.full(len(pair),s);na=counts[a]
            orth,_=stagec.edges(pair,radii)
            orth[:na,:na]=False;orth[na:,na:]=False
            ii,jj=np.where(np.triu(orth,1));count=len(ii)
            if candidate_edges+count>edge_cap:
                return None,dict(status='UNRESOLVED',reason='fine-edge cap',bins=n)
            filtered=np.zeros((counts[a],counts[b]),bool)
            for start in range(0,count,batch_size):
                aa=ii[start:start+batch_size];bb=jj[start:start+batch_size]
                chunk=np.zeros_like(orth);chunk[aa,bb]=chunk[bb,aa]=True
                kept,_=stagec.joint_filter(pair,radii,chunk,np.zeros_like(chunk),
                    args['P'],args['rcol'],opnorm,exponentials,
                    args['rF'],args['T'],args['rH'],args['nN'])
                filtered[aa,bb-na]=kept[aa,bb]
            cache[key]=(filtered,count)
        candidate_edges+=count
        if candidate_edges>edge_cap:
            return None,dict(status='UNRESOLVED',reason='fine-edge cap',bins=n)
        graph[offsets[a]:offsets[a+1],offsets[b]:offsets[b+1]]=filtered
        graph[offsets[b]:offsets[b+1],offsets[a]:offsets[a+1]]=filtered.T
    valid,rounds=arc_consistent(graph,colors,clique)
    values=np.concatenate(centres)
    search_cover=dict(valid_labels=valid,label_colors=colors,label_graph=graph,label_centres=values)
    witness=NC.label_pattern(search_cover,clique)
    receipt=dict(status=witness['status'],route='complete fine-bin pattern search',bins=n,
        candidate_edges=candidate_edges,retained_edges=int(graph.sum())//2,
        retained_bins=int(valid.sum()),arc_rounds=rounds,search_steps=witness['steps'],
        pair_cache_hits=cache_hits,seconds=time.monotonic()-started)
    if witness['status']=='EXCLUDED':return None,receipt
    # A search cap is not an exclusion. Arc-consistency pruning remains valid.
    if any(not np.any(valid & (colors==c)) for c in clique):
        raise ArithmeticError('empty color was not excluded by complete search')
    refined={k:v for k,v in cover.items() if k!='_fine_pair_cache'}
    refined.update(search_cover)
    refined['cliques']=[clique]
    refined['adjacency']=[sum(1<<b for b in clique if b!=a) if a in clique else 0 for a in range(len(cover['roots']))]
    for field in ('bin_deltas','bin_indices','initial_radii'):refined[field]=list(cover[field])
    for a,c in enumerate(clique):
        keep=np.flatnonzero(valid[offsets[a]:offsets[a+1]])
        refined['bin_deltas'][c]=[cover['bin_deltas'][c][int(i)] for i in keep]
        refined['bin_indices'][c]=[cover['bin_indices'][c][int(i)] for i in keep]
        refined['initial_radii'][c]=arb(max(C.Z.upper(C.norm(d)+cover['bin_radius']) for d in refined['bin_deltas'][c]))
    receipt['status']='REFINED'
    return refined,receipt
