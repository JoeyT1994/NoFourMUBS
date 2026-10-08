"""Independent exact tree geometry and retained-witness replay."""
from fractions import Fraction as F
from collections import Counter
import time
from flint import ctx
from geometry import initial_box,split_box
from kernel import evaluate,seed_models,invariants,tau_bounds
ALL={'00','01','10','11'}

def audit_root(region,record,replay=False,precision=160,replay_prefix=None):
    from campaign_terminals import external_cpu_total
    ctx.prec=precision;beg=time.process_time();external_start=external_cpu_total();nodes={}
    for n in record['tree']:
        p=n['path']
        if not isinstance(p,str) or any(b not in '01' for b in p) or p in nodes:raise ValueError('duplicate/invalid path')
        nodes[p]=n
    if '' not in nodes:raise ValueError('missing root')
    if replay_prefix is not None and replay_prefix not in nodes:raise ValueError('missing replay prefix')
    c,r=initial_box(region,record['root']);todo=[('',c,r,None,set(),None)];visited=set();accepted=leaves=witnesses=0;failures=[];acceptance=Counter();terminal_statements=Counter();tau_precisions=Counter()
    while todo:
        path,c,r,slab,closed,charts=todo.pop()
        if path not in nodes:raise ValueError('missing child')
        n=nodes[path];visited.add(path);report=n.get('report',{});new=set(report.get('closed',[]));plan=report.get('plan')
        replay_here=replay and (replay_prefix is None or path.startswith(replay_prefix) or replay_prefix.startswith(path))
        if not new<=ALL-closed or len(new)!=len(report.get('closed',[])):raise ValueError('invalid pairing claim')
        if plan:
            current=(tuple(plan['horizontal']),tuple(plan['vertical']))
            if charts is not None and closed and current!=charts:raise ValueError('changed chart with inherited pairing')
        else:current=charts
        if new:
            witnesses+=1
            if replay_here:
                if report.get('reason')=='paired_side_prune':
                    from fallback import prune
                    pp=prune(c,r,report['prune']['options']);rr=dict(closed=sorted(new) if pp['ok'] else [],reason=pp.get('reason','paired_prune'))
                elif report.get('reason')=='root_free_side_cover':
                    from fallback import certify
                    fb=report['fallback'];rr0=certify(c,r,fb['reference'],fb['options'])
                    rr=dict(closed=sorted(new) if rr0['ok'] else [],reason=rr0['reason'])
                else:rr=evaluate(c,r,plan=plan,needed=sorted(new),tau_slab=slab,reference_search=False,direct_models=report.get('direct_models',False))
                if not new<=set(rr['closed']):failures.append(dict(path=path,claimed=sorted(new),replayed=rr['closed'],reason=rr['reason']))
                if rr.get('pairings'):
                    acceptance.update(p['reason'] for p in rr['pairings'] if p['ok'] and p['key'] in new)
                else:acceptance[rr.get('reason','unknown')]+=len(new)
        terminal=report.get('terminal')
        if terminal is not None:
            if n['kind']!='leaf' or report.get('reason')!='campaign_terminal':raise ValueError('terminal must close a leaf')
            if terminal.get('ok') is not True or terminal.get('method') not in ('signed_corner_PSD','accelerated_cover'):raise ValueError('invalid terminal')
            if replay_here:
                from campaign_terminals import replay as replay_terminal
                replay_terminal(c,r,terminal,require_both=region.get('kind')=='production_cubes')
            witnesses+=1
            if replay_here:terminal_statements[terminal['statement']]+=1
        closed=closed|new
        if n['kind']=='leaf':
            if type(n['ok'])!=bool or n['ok']!=(closed==ALL or terminal is not None):raise ValueError('invalid leaf acceptance')
            leaves+=1;accepted+=int(n['ok'])
        elif n['kind']=='split':
            if closed==ALL:raise ValueError('unnecessary split after full proof')
            a=n['axis']
            if type(a)!=int or not 0<=a<=4:raise ValueError('invalid split axis')
            if a==4:
                lo,hi=map(F,n['tau_domain'])
                if not 0<=lo<hi:raise ValueError('invalid tau split')
                if slab is not None:
                    if [lo,hi]!=list(map(F,slab)):raise ValueError('tau children omit parent')
                else:
                    # Arb enclosures need not be nested across precisions.
                    # Reproduce a fresh outward calculation; never enlarge
                    # the stored tau partition or permit a tolerance.
                    witness_precision=n.get('tau_precision',128)
                    if type(witness_precision)!=int or not 64<=witness_precision<=4096:raise ValueError('invalid tau witness precision')
                    saved=ctx.prec;valid=False
                    try:
                        for bits in dict.fromkeys((saved,witness_precision,96)):
                            ctx.prec=bits
                            if n.get('direct_models'):
                                from direct_models import Context
                                physical=tau_bounds(Context(c,r).R())
                            else:physical=tau_bounds(invariants(seed_models(c,r))[-1])
                            if lo<=physical[0] and hi>=physical[1]:valid=True;tau_precisions[str(bits)]+=1;break
                    finally:ctx.prec=saved
                    if not valid:raise ValueError(f'tau interval lacks an outward coverage witness at root={record["root"]}, path={path}')
                mid=(lo+hi)/2
                for b,ss in enumerate(([str(lo),str(mid)],[str(mid),str(hi)])):
                    todo.append((path+str(b),c,r,ss,closed,current))
            else:
                for b in (0,1):todo.append((path+str(b),*split_box(c,r,a,b),slab,closed,current))
        else:raise ValueError('invalid node kind')
    if visited!=set(nodes):raise ValueError('unreachable extra nodes')
    if record['closed']!=(accepted==leaves) or record['leaves']!=leaves or record['accepted_leaves']!=accepted:raise ValueError('wrong root summary')
    if failures:raise ValueError(f'interval replay failures: {failures[:3]}')
    return dict(root=record['root'],status='PASS' if replay_prefix is None else 'SCOPED_REPLAY',replay_prefix=replay_prefix,closed=record['closed'],leaves=leaves,accepted_leaves=accepted,witness_nodes=witnesses,cpu_seconds=time.process_time()-beg+external_cpu_total()-external_start,replayed_pairing_reasons=dict(acceptance),replayed_terminal_statements=dict(terminal_statements),tau_enclosure_precisions=dict(tau_precisions))

def query_tree(region,record,c,r):
    if record['closed']:return True
    nodes=record.get('_node_index')
    if nodes is None:
        nodes={n['path']:n for n in record['tree']};record['_node_index']=nodes
    todo=[('',*initial_box(region,record['root']),c,r)]
    while todo:
        path,bc,br,qc,qr=todo.pop();n=nodes[path]
        if n['kind']=='leaf':
            if not n['ok']:return False
            continue
        a=n['axis']
        if a==4:
            todo.extend((path+b,bc,br,qc,qr) for b in '01');continue
        mid=bc[a]
        for b in (0,1):
            cc,rr=split_box(bc,br,a,b);lo=max(qc[a]-qr[a],cc[a]-rr[a]);hi=min(qc[a]+qr[a],cc[a]+rr[a])
            if lo>hi:continue
            pc=list(qc);pr=list(qr);pc[a]=(lo+hi)/2;pr[a]=(hi-lo)/2
            todo.append((path+str(b),cc,rr,pc,pr))
    return True

def frontier(region,record):
    """Retain completed proof nodes; return exact states for every open leaf."""
    nodes={n['path']:n for n in record['tree']};keep=[];pending=[]
    c,r=initial_box(region,record['root']);todo=[('',c,r,None,[],None,0)]
    while todo:
        path,c,r,slab,closed,plan,td=todo.pop();n=nodes[path];rep=n.get('report',{});closed=sorted(set(closed+rep.get('closed',[])));plan=rep.get('plan',plan)
        if n['kind']=='leaf' and not n['ok']:
            # Revalidate this node's own partial claims on the next visit.
            inherited=sorted(set(closed)-set(rep.get('closed',[])))
            pending.append((path,c,r,slab,inherited,plan,td));continue
        keep.append(n)
        if n['kind']=='leaf':continue
        a=n['axis']
        if a==4:
            lo,hi=map(F,n['tau_domain']);mid=(lo+hi)/2
            children=[(c,r,[str(lo),str(mid)]),(c,r,[str(mid),str(hi)])]
        else:children=[(*split_box(c,r,a,b),slab) for b in (0,1)]
        for b,(cc,rr,ss) in enumerate(children):todo.append((path+str(b),cc,rr,ss,closed,plan,td+(a==4)))
    return keep,sorted(pending,key=lambda v:(len(v[0]),v[0]))


def compact(record):
    """Keep proof proposals, exact tree and counts; drop disposable numeric traces."""
    from copy import deepcopy
    out={k:v for k,v in record.items() if k!='tree'};out['tree']=[]
    for node in record['tree']:
        n={k:v for k,v in node.items() if k!='report'};r=node.get('report')
        if r is not None:
            keep={k:r[k] for k in ('closed','reason','fallback','prune','direct_models','terminal') if k in r}
            if r.get('closed') or (node['kind']=='leaf' and not node.get('ok')):
                if r.get('plan'):
                    plan=deepcopy(r['plan'])
                    if r.get('closed'):
                        details={p.get('key'):p for p in r.get('pairings',[])};pairs={}
                        for k in r['closed']:
                            pp=plan.get('pairings',{}).get(k,{})
                            why=details.get(k,{})
                            if why.get('reason')=='nonunimodular':pp={}
                            elif why.get('reason')=='larger_corner':pp=dict(corners=[[why['rows'],why['cols']]])
                            elif why.get('reason')=='matrix_tube':pp=dict(corners=[],references=[t['reference'] for t in why['tubes'] if t['ok']][:1])
                            for ref in pp.get('references',[]):
                                ref.pop('certificate',None);ref.pop('proposal_distance',None)
                            pairs[k]=pp
                        plan['pairings']=pairs
                    keep['plan']=plan
            n['report']=keep
        if n['kind']=='leaf' and n.get('ok'):
            n['certified_statement']=n.get('report',{}).get('terminal',{}).get('statement','all_four_pairings_quartet_free_on_maximal_corner_domain')
        out['tree'].append(n)
    return out
