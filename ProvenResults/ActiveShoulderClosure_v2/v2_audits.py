"""Controls for v2-only interval reductions, adaptive trees and exact geometry."""
from fractions import Fraction as F
from itertools import product
from copy import deepcopy
from flint import arb,acb,ctx
from models import TM,IJ,N,set_tau_constraint
from geometry import build_region,initial_box
from tree import audit_root,query_tree
from production import build,isometry
from production_cover import contains_box
from references import certificate,images,regions
from transfer import matrix_radius,controls as transfer_controls
from audits import require,raises,eval_model

def run():
    ctx.prec=160;set_tau_constraint()
    d=[acb(0)]*5;d[0]=acb(1);a=TM(2,d);R=a*a
    d=[acb(0)]*5;d[4]=acb(1);tau=TM(2,d);identity=tau*tau-R
    ordinary=identity.range();set_tau_constraint(R,acb(2),acb(1))
    require(abs(identity.range()).upper()<arb(2)**-100,'tau squared relation cancels exactly')
    m=(tau+acb(0,1))/(a+3)
    for vals in product((-1,0,1),repeat=4):
        v=list(vals)+[vals[0]]
        exact=(acb(2+vals[0],1))/(5+vals[0])
        require(m.range().contains(exact),'restricted interval contains every physical control')
    set_tau_constraint();require(identity.range().contains(ordinary) and ordinary.contains(identity.range()),'constraint epoch prevents stale restricted caches')
    boxes=[dict(centers=['0','1/3','-2','3'],radius='1/256'),dict(centers=[0,0,0,0],radii=['0','1/512','0','0'])]
    reg=build_region(boxes);require(reg['source_count']==2,'generic exact region builder')
    require(build_region(iter(boxes))==reg,'stream/list region identical')
    empty=build_region([])
    require(empty['roots']==[] and empty['source_count']==0,'empty exact list has empty region')
    require(raises(lambda:build_region([dict(centers=[0]*4,radius='-1')])),'negative custom radius')
    synthetic=dict(format=2,roots=[dict(centers=['0']*4,radii=['1']*4)])
    record=dict(root=0,closed=False,leaves=2,accepted_leaves=1,tree=[dict(path='',kind='split',axis=0),dict(path='0',kind='leaf',ok=True,report=dict(closed=['00','01','10','11'],reason='synthetic')),dict(path='1',kind='leaf',ok=False,reason='synthetic')])
    audit_root(synthetic,record)
    require(query_tree(synthetic,record,[F(-1,2),0,0,0],[F(1,8)]*4),'exact contained child')
    require(not query_tree(synthetic,record,[F(0)]*4,[F(1,4)]*4),'unresolved sibling cannot be skipped')
    for mutate in ('missing','duplicate','false_ok','axis'):
        r=deepcopy(record)
        if mutate=='missing':r['tree'].pop()
        if mutate=='duplicate':r['tree'].append(r['tree'][-1])
        if mutate=='false_ok':r['tree'][-1]['ok']=True
        if mutate=='axis':r['tree'][0]['axis']=5
        require(raises(lambda:audit_root(synthetic,r)),'tree negative control '+mutate)
    from kernel import tau_bounds,invariants,seed_models
    cc,hh=initial_box(synthetic,0);lo,hi=tau_bounds(invariants(seed_models(cc,hh))[-1])
    tau_record=dict(root=0,closed=False,leaves=2,accepted_leaves=0,tree=[dict(path='',kind='split',axis=4,tau_domain=[str(lo),str(hi)]),dict(path='0',kind='leaf',ok=False),dict(path='1',kind='leaf',ok=False)])
    audit_root(synthetic,tau_record)
    bad=deepcopy(tau_record);bad['tree'][0]['tau_domain'][1]=str(hi/2)
    require(raises(lambda:audit_root(synthetic,bad)),'tau domain cannot omit physical upper enclosure')
    bad=deepcopy(record)
    plan=dict(horizontal=[0,1,2],vertical=[0,1,2],pairings={})
    bad['tree'][0]['report']=dict(closed=['00'],plan=plan)
    bad['tree'][1]['report']=dict(closed=['01','10','11'],plan=dict(plan,horizontal=[1,0,2]))
    require(raises(lambda:audit_root(synthetic,bad)),'inherited pairing cannot change charts')
    # The exact grid lookup must agree with the slow original membership scan.
    tested=0
    for cell in regions()[::7]:
        n=cell['grid']
        for a,b in [(F(cell['a'],n),F(cell['b'],n)),(F(cell['a']+1,n),F(cell['b']+1,n)),(F(2*cell['a']+1,2*n),F(2*cell['b']+1,2*n))]:
            best=F(1,16384)
            for x,y in images(a,b):
                if x==y==0:best=max(best,F(1,30))
                for c in regions():
                    g=c['grid']
                    if F(c['a'],g)<=x<=F(c['a']+1,g) and F(c['b'],g)<=y<=F(c['b']+1,g):best=max(best,matrix_radius(c))
            require(F(certificate(str(a),str(b))['radius'])==best,'indexed closed-cell membership');tested+=1
    prod=build();require(len(prod['seeds'])==90 and len(prod['roots'])==9,'production census')
    require(all(isometry(s['frame']['matrix']) for s in prod['seeds']),'only exact cube isometries')
    accepted=[i for i in range(9) if contains_box(*initial_box(prod,i))['ok']]
    require(accepted==[0],'guarded theorem fits exactly one representative')
    from rootfree_cubes import data as cube_data, contains_box as primitive_contains
    primitive_ids=[]
    for cert in cube_data()['certificates']:
        rid=cert['representative_id'];cc,hh=initial_box(prod,rid)
        require(primitive_contains(cc,hh)['ok'],'complete guarded primitive cube containment')
        require(not primitive_contains(cc,[F(1)]*4)['ok'],'primitive lookup rejects enlarged cube')
        primitive_ids.append(rid)
    from side_cover_driver import process_root as cover_search
    resume_record=dict(root=0,closed=True,leaves=1,accepted_leaves=1,tree=[dict(path='',kind='leaf',ok=True,report=dict(closed=['00','01','10','11'],reason='guarded_production_cover'))])
    options=dict(precision=160,cpu_per_root=1,min_depth=8,max_depth=14,max_nodes=1,cover_options={})
    resumed=cover_search((0,prod,options,resume_record))
    require(resumed['closed'] and resumed['nodes']==0,'completed root-free resume retained after replay')
    exhausted=cover_search((2,prod,dict(options,max_nodes=0),None))
    require(not exhausted['closed'] and exhausted['nodes']==0,'root-free node budget is inconclusive')
    audit_root(prod,exhausted)
    from fallback import prune
    import json,gzip
    from geometry import HERE
    from kernel import evaluate
    minimax_points=0
    with gzip.open(HERE/'data/diagnostics/v2_transfer_point_probe.log.gz','rt') as source:
        for line in source:
            point=json.loads(line)
            if point['root']!=7 or point['ok']:continue
            cc=list(map(F,point['centers']));rr=[F(0)]*4
            q=evaluate(cc,rr,minimax=True)
            require(q['ok'],'minimax gauge point outward validation')
            require(evaluate(cc,rr,plan=q['plan'],reference_search=False)['ok'],'frozen minimax reference replay')
            minimax_points+=1
    require(minimax_points==2,'two exact minimax point controls')
    pilot=json.loads((HERE/'data/region.json').read_text());cc,hh=initial_box(pilot,0)
    require(prune(cc,hh)['ok'],'root-free singular-patch positive control')
    require(not prune(cc,hh,dict(depth=16,budget=0,maxlabels=800,pair_budget=400000))['ok'],'exhausted side cover is inconclusive')
    return dict(status='PASS',transfer=transfer_controls(),root_free_patch_control=True,tau_relation_controls=81,tree_negative_controls=6,exact_region=True,index_membership_controls=tested,production_seeds=90,representatives=9,guarded_representatives=accepted,primitive_representatives=primitive_ids,rootfree_resume_controls=2,minimax_point_controls=minimax_points)
if __name__=='__main__':
    import json
    print(json.dumps(run(),indent=2))
