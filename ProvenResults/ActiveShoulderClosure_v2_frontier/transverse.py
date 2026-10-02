"""Isolated adapter to the pinned FourierTransverseStability_v2 theorem.

Its statement is restricted to physical R>0; the campaign's maximal R=0
corners are handled separately by the adopted A1/F6 result.
"""
import importlib.util, sys, time
from functools import lru_cache
from mpmath import iv
from bootstrap import ROOT
DIRECTORY=ROOT/'ProvenResults/FourierTransverseStability_v2'
METHOD='FourierTransverseStability_v2'
STATEMENT='all_four_pairings_quartet_free_for_physical_R_positive'

@lru_cache(1)
def geometry():
    old={k:sys.modules.get(k) for k in ('interval','fastmm')}; prec=iv.prec
    try:
        for name in ('fastmm','interval','geometry'):
            spec=importlib.util.spec_from_file_location('_shoulder_fts_'+name,DIRECTORY/(name+'.py'))
            obj=importlib.util.module_from_spec(spec)
            sys.modules[spec.name]=obj; spec.loader.exec_module(obj)
            if name!='geometry': sys.modules[name]=obj
        return obj
    finally:
        iv.prec=prec
        for k,v in old.items():
            if v is None: sys.modules.pop(k,None)
            else: sys.modules[k]=v

def attempt(c,r):
    start=time.process_time(); prec=iv.prec
    try:
        g=geometry(); iv.prec=192
        result=g.contains_box(c,r)
        ok=(result is not None and result.get('status')=='ACCEPT'
            and result.get('all_four_pairings_covered') is True
            and result.get('R_zero_slice_excluded') is True)
        return dict(ok=ok,method=METHOD,statement=STATEMENT,
                    reason='accepted' if ok else 'no_certificate',
                    evidence=result,cpu_seconds=time.process_time()-start)
    except Exception as ex:
        return dict(ok=False,method=METHOD,reason='exception',detail=f'{type(ex).__name__}: {ex}',
                    cpu_seconds=time.process_time()-start)
    finally: iv.prec=prec

def replay(c,r,terminal):
    if terminal.get('statement')!=STATEMENT: raise ValueError('FT statement')
    fresh=attempt(c,r)
    if not fresh['ok']: raise ValueError('fresh FT whole-box test failed: '+str(fresh))
    return True
