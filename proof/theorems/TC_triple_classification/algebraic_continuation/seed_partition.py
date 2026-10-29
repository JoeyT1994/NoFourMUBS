"""Reuse an exhaustive K-bin cover on a complete partition of the seed ball.

Local charts are conditional restrictions of the original normal form.
Their containing balls need not be new atlas charts. Every segment used
in Taylor's theorem lies in the original convex ball.
"""
import hashlib
import itertools
import json
import time
import numpy as np
from flint import arb,arb_mat,ctx
from load_native import C,MS,NC,R,S,norm_upper
import patches as P
import stagec
import optimized_support as OS

BITS=list(itertools.product((0,1),repeat=4))


def validate_box(box):
    if (not isinstance(box,(list,tuple)) or len(box)!=5 or
        any(type(x) is not int for x in box)):
        raise ValueError('dyadic box must contain five integers')
    m,*ids=box
    if not 0<=m<=20 or any(not 0<=i<2**m for i in ids):
        raise ValueError('invalid dyadic box')


def outside(box):
    validate_box(box)
    m,*ids=box;den=2**m
    # Exact nearest-point distance, in units r/2^m. Equality is retained.
    return sum(max(abs(2*i+1-den)-1,0)**2 for i in ids)>den*den


def children(box):
    validate_box(box);m,*ids=box
    return [(m+1,*(2*i+b for i,b in zip(ids,bits))) for bits in BITS]


def check_partition(leaves):
    table={tuple(x['box']):x for x in leaves}
    if len(table)!=len(leaves):raise ValueError('duplicate leaf')
    for box in table:validate_box(box)
    seen=set()
    def visit(box):
        if box in table:
            seen.add(box)
            if table[box]['status']=='OUTSIDE' and not outside(box):
                raise ArithmeticError('false outside-ball leaf')
            return
        if not any(b[0]>box[0] and all(b[j]//2**(b[0]-box[0])==box[j] for j in range(1,5)) for b in table):
            raise ArithmeticError('missing partition branch')
        for child in children(box):visit(child)
    visit((0,0,0,0,0))
    if seen!=set(table):raise ArithmeticError('overlapping or unreachable leaves')
    return True


def local_model(original,box):
    c=P.anchor_for_box(box,original['r'])
    _,_,vertices=P.box_geometry(box,original['r'])
    rho=arb(max(C.Z.upper(norm_upper((v-c).entries())) for v in vertices))
    qc,dc,eta=P.centre_jet(original,c)
    model=dict(Q0=qc,U=dc,H2=original['H2'],X=original['X'],r=rho,
               tau=(original['Z2']*rho*rho/2).upper())
    args,enclosure=NC.model_stage_c_args(original['ball'],model)
    return model,c,args,dict(local_radius=str(rho),centre_root_error=str(eta),
                             chart_extension_assumed=False,enclosure=enclosure)


def restrict_cover(original,model,c,args,cover,clique,prepared,bin_cap=12000):
    op=stagec.opnorm_bound(args['P']);ep=stagec.cis_centre(args['P'])
    arrays={};centers=[];radii=[];colors=[]
    count=0
    for color in clique:
        mids=np.asarray(cover['bin_indices'][color],dtype=np.int64)/stagec.DEN
        if len(mids):
            mids=mids[stagec.single_tests(mids,args['P'],args['rcol'],96,op,ep,args['rF'])]
        if len(mids):
            mids=mids[stagec.tangent_tests(mids,args['P'],args['rcol'],96,op,ep,args['rF'],
                                          args['T'],args['rH'],args['nN'])]
        if not len(mids):return None,dict(status='EXCLUDED',route='local necessary ray-bin test',empty_color=color)
        count+=len(mids)
        if count>bin_cap:return None,dict(status='NOT ESTABLISHED',reason='local bin cap')
        arrays[color]=mids
        clustered=stagec.cluster(mids,96,radius=.02)
        if clustered is None:return None,dict(status='NOT ESTABLISHED',reason='local cluster cap')
        cc,rr=clustered;centers.extend(cc);radii.extend(rr);colors.extend([color]*len(cc))
    centers=np.array(centers);radii=np.array(radii);colors=np.array(colors)
    if len(centers)>2000:return None,dict(status='NOT ESTABLISHED',reason='local label cap')
    orth,_=stagec.edges(centers,radii)
    # An actual pattern contains exactly one ray in each original color.
    orth[colors[:,None]==colors[None,:]]=False
    if orth.sum()>600000:return None,dict(status='NOT ESTABLISHED',reason='local pair cap')
    orth,_=stagec.joint_filter(centers,radii,orth,np.zeros_like(orth),
        args['P'],args['rcol'],op,ep,args['rF'],args['T'],args['rH'],args['nN'])
    local=dict(valid_labels=np.ones(len(colors),bool),label_colors=colors,
               label_graph=orth,label_centres=centers,label_radii=radii)
    witness=NC.label_pattern(local,clique)
    if witness['status']=='EXCLUDED':
        return None,dict(status='EXCLUDED',route='complete local label-pattern search',
                         bins=count,labels=len(colors),steps=witness['steps'])
    pp={};bb={};deltas=list(cover['bin_deltas']);indices=list(cover['bin_indices']);initial=list(cover['initial_radii'])
    for color in clique:
        v=prepared[color]['v0']+prepared[color]['T']*c
        pp[color]=C.build(model,MS.numeric(v)[:,0])
        kk=stagec._toint(arrays[color]);ds=[]
        for row in kk:
            delta=[]
            for j in range(6):
                x=2*arb.pi()*int(0 if j==0 else row[j-1])/stagec.DEN-pp[color]['v0'][j,0]
                delta.append(x-2*round(float(x/(2*arb.pi())))*arb.pi())
            mean=sum(delta,arb(0))/6;ds.append([x-mean for x in delta])
        deltas[color]=ds;indices[color]=kk.tolist()
        initial[color]=arb(max(C.Z.upper(norm_upper(d)+cover['bin_radius']) for d in ds))
        bb[color]=C.contract(pp[color],initial[color],initial_epsilon=C.localize_bins(pp[color],ds,cover['bin_radius']))
    local.update(bin_deltas=deltas,bin_indices=indices,initial_radii=initial,bin_radius=cover['bin_radius'],
                 roots=cover['roots'],cliques=[clique],adjacency=cover['adjacency'])
    return (pp,bb,local),dict(status='REFINED',bins=count,labels=len(colors))


def cell_test(original,prepared,bounds,cover,clique,box,cache):
    if outside(box):return dict(status='OUTSIDE')
    key=tuple(box)
    if key not in cache:cache[key]=local_model(original,box)
    model,c,args,geometry=cache[key]
    result,filter_info=restrict_cover(original,model,c,args,cover,clique,prepared)
    if result is None:return dict(**filter_info,geometry=geometry)
    pp,bb,local=result
    # This is the previous whole-pattern verifier applied to a conditional
    # restriction. Fine-bin resampling on a new H-ball is explicitly off.
    outcome=R.final_pattern(model,pp,bb,local,clique,allow_fine=False)
    if outcome['status']=='NOT ESTABLISHED':
        # The initial local tube is enough for an additional scalar test;
        # a failed search cannot discard the cell.
        try:
            proof,info=OS.exclude(model,pp,bb,clique)
            if proof is not None:outcome=proof
            else:outcome['optimized_local_search']=info
        except (ArithmeticError,ValueError,ZeroDivisionError) as exc:
            outcome['optimized_local_failure']=str(exc)
    return dict(**outcome,geometry=geometry,local_filter=filter_info)


def certify(original,prepared,bounds,cover,clique,max_level=4,cell_cap=1500):
    started=time.monotonic();todo=[(0,0,0,0,0)];leaves=[];cache={};tested=0
    while todo:
        box=todo.pop();level=box[0]
        if outside(box):leaves.append(dict(box=list(box),status='OUTSIDE'));continue
        if level<2:
            todo.extend(reversed(children(box)));continue
        if tested>=cell_cap:
            leaves.append(dict(box=list(box),status='NOT ESTABLISHED',reason='cell cap'));continue
        tested+=1
        try:result=cell_test(original,prepared,bounds,cover,clique,box,cache)
        except (ArithmeticError,ValueError,RuntimeError,ZeroDivisionError) as exc:
            result=dict(status='NOT ESTABLISHED',reason=type(exc).__name__+': '+str(exc))
        if result['status']=='NOT ESTABLISHED' and level<max_level:
            todo.extend(reversed(children(box)))
        else:leaves.append(dict(box=list(box),**result))
    check_partition(leaves)
    statuses={x['status'] for x in leaves}
    status=('NOT ESTABLISHED' if 'NOT ESTABLISHED' in statuses else
            'CERTIFIED' if 'CERTIFIED' in statuses else 'EXCLUDED')
    return dict(status=status,route='complete partition of original seed ball',
                target_radius_hex=float(original['r']).hex(),original_radius_preserved=True,
                leaves=leaves,tested_cells=tested,max_level=max_level,cell_cap=cell_cap,
                seconds=time.monotonic()-started)
