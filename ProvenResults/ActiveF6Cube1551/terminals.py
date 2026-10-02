"""Only outward certificates accept. A whole-region transpose lemma supplies H-."""
from cube import F
from transverse import attempt,geometry
from campaign_terminals import try_cover,try_psd
from mpmath import iv

def test(c,r,cover=False,seconds=20,nodes=1000000,psd=False):
 old=iv.prec
 try:
  iv.prec=192;R=geometry().r_enclosure(c,r)
  if R.b<=0:return dict(ok=True,method='R_nonpositive',statement='outside_strict_D0',upper=str(geometry().as_rational(R.b)))
 finally:iv.prec=old
 ft=attempt(c,r)
 if ft['ok']:return ft
 if R.b<20:
  from fourier_slabs import certify
  q=certify(c,r)
  if q is not None:
   q.pop('proof',None);return q
 if float(max(r))<=.002:
  from flint import ctx
  from kernel import evaluate
  ctx.prec=128;q=evaluate(c,r)
  if q['ok']:
   return dict(ok=True,method='side_lift',statement='all_four_pairings_quartet_free',plan=q.get('plan'),reason=q['reason'])
 if psd:
  q=try_psd(c,r)
  if q['ok']:return q
 if not cover and R.a>20:return dict(ok=False,reason='pending_direct_cover',defer_cover=True)
 if cover and (R.a>20 or float(max(r))<=.0002):return try_cover(c,r,both=False,nodes=nodes,seconds=seconds)
 return dict(ok=False,reason='no_certificate')

def replay(c,r,t):
 if t.get('ok') is not True:raise ValueError('nonaccepting terminal')
 expected={'R_nonpositive':'outside_strict_D0','Fourier_R_slabs':'all_four_pairings_for_physical_R_positive','side_lift':'all_four_pairings_quartet_free'}
 if t.get('method') in expected and t.get('statement')!=expected[t['method']]:raise ValueError('terminal statement mismatch')
 if t['method']=='R_nonpositive':
  old=iv.prec
  try:
   iv.prec=192
   if geometry().r_enclosure(c,r).b>0:raise ValueError('R upper is positive')
  finally:iv.prec=old
 elif t['method']=='Fourier_R_slabs':
  from fourier_slabs import certify
  if certify(c,r,t['slabs']) is None:raise ValueError('Fourier slabs failed')
 elif t['method']=='side_lift':
  from flint import ctx
  from kernel import evaluate
  ctx.prec=160;q=evaluate(c,r,plan=t['plan'],reference_search=False)
  if not q['ok'] or set(q['closed'])!={'00','01','10','11'}:raise ValueError('lift replay failed')
 elif t['method'] in ('accelerated_cover','signed_corner_PSD','FourierTransverseStability_v2'):
  from campaign_terminals import replay as fresh
  fresh(c,r,t,require_both=False)
 else:raise ValueError('unknown terminal')
 return True
