#!/usr/bin/env python3
"""Additive, bounded static/exact review checks; NOT a Julia runtime replay."""
import argparse, ast, difflib, hashlib, importlib.util, json, math, sys
from fractions import Fraction as F
from pathlib import Path
sys.dont_write_bytecode = True

def load(path, name):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--project-root', type=Path, required=True)
    a=ap.parse_args(); root=a.project_root.resolve(); here=Path(__file__).resolve().parent
    if not __debug__: ap.error('Run without -O')
    replay=load(root/'ProvenResults/FastTMInvariant/guarded_replay.py','review_guarded_replay')
    production=(root/'NumericalCampaign/Certification/fasttm.jl').read_text()
    prior=replay.previous_from_production(production)
    assert hashlib.sha256(prior.encode()).hexdigest()==replay.GUARDED_SHA256
    print('PASS: production SHA256 '+hashlib.sha256(production.encode()).hexdigest())
    print('PASS: reverting precisely the rescaled block and header gives '+replay.GUARDED_SHA256)
    # Tail identities and coefficient monotonicity, exact rationals, all guarded orders.
    for q in range(13):
        b=[F(1)]
        for k in range(1,80): b.append(b[-1]*(F(1,2)-(k-1))/k)
        assert all(abs(b[k+1]) <= abs(b[k]) for k in range(79))
        for u in (F(-15,16),F(-1,4),F(0),F(1,3),F(15,16)):
            poly=sum((-u)**k for k in range(q+1)); x=abs(u)
            assert F(1,1)/(1+u)-poly==(-u)**(q+1)/(1+u)
            assert abs(F(1,1)/(1+u)-poly)<=x**(q+1)/(1-x)
            assert sum(abs(b[k])*x**k for k in range(q+1,80))<=abs(b[q+1])*x**(q+1)/(1-x)
    print('PASS: exact finite controls for reciprocal identity and binomial-tail domination, Q=0..12')
    K=181*26*76**26
    assert K==37480495363891384344122334580448617578688715115462656
    assert 2*K==74960990727782768688244669160897235157377430230925312
    assert 30+50+800+2+1==883 and 2*26+2*883==1818<2**34
    assert 2**25*38**26<2**181 and 26*2**26*38**26==26*76**26
    print('PASS: exact JPT parameter substitution and printed K,N integers')
    original=root/'ProvenResults/SideChartCover/verify.py'
    fixed=here/'SideChartCover/verify.py'
    def funs(p):
        return {f.name:ast.dump(f,include_attributes=False) for f in ast.parse(p.read_text()).body if isinstance(f,ast.FunctionDef)}
    old,new=funs(original),funs(fixed)
    for name in ['replay_side','replay_completion','replay_one','source_checks','audit_sample']:
        assert old[name]==new[name],name
    print('PASS: all five original verification/source-audit functions are AST-identical in the patch')
    v=load(fixed,'review_sidechart_verifier'); v.load_backend(root)
    rows=[json.loads(l) for l in (root/'ProvenResults/SideChartCover/data/pilot_00000.jsonl').read_text().splitlines()]
    row=next(r for r in rows if r['result']['ok']); assert v.replay_one(row)==1
    bad=json.loads(json.dumps(row)); bad['result']['charts'][0][1]=bad['result']['charts'][0][0]
    try: v.replay_one(bad)
    except AssertionError: pass
    else: raise AssertionError('duplicate side orbit was accepted')
    bad=json.loads(json.dumps(row)); bad['result']['completions'][0]['D_column_errors']=[0.0]*3
    try: v.replay_one(bad)
    except AssertionError: pass
    else: raise AssertionError('zero completion errors were accepted')
    print('PASS: duplicate-orbit and zero-completion-error negative controls reject')
    orig=(root/'ProvenResults/SideChartCover/test_regular.jl').read_text()
    known=(root/'Verification/branch_helper_2026-09-30/test_regular_with_global_fix.jl').read_text()
    assert orig.replace('    accepted+=Int(old.ok && new.ok)','    global accepted+=Int(old.ok && new.ok)')==known
    patched=(here/'SideChartCover/test_regular.jl').read_text()
    # Path bootstrapping is the only change to the archived fixed test body.
    assert patched[patched.index('using Test'):]==known[known.index('using Test'):]
    print('PASS: Julia test body exactly matches the archived global-counter fix; NOT executed in Julia')
    print(json.dumps(dict(status='PASS',julia_executed=False,production_cover_tests_run=0)))

if __name__=='__main__': main()
