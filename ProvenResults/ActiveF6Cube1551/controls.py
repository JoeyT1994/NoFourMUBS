"""Rejection controls for the new partition and slab protocol."""
from cube import box,path_audit,F
from fourier_slabs import certify
from terminals import replay

def run():
 count=0
 def reject(fn):
  nonlocal count
  try:fn()
  except (ValueError,KeyError,TypeError):count+=1;return
  raise ValueError('negative control accepted')
 c,r=box()
 for n in (0,-1,True,1.5,129):reject(lambda n=n:certify(c,r,n))
 for paths in ([],['0'],['0','0','1'],['','0'],['2']):reject(lambda paths=paths:path_audit(paths))
 for p in ('2','0'*41,1):reject(lambda p=p:box(p))
 reject(lambda:replay(c,r,dict(ok=False,method='R_nonpositive')))
 reject(lambda:replay(c,r,dict(ok=True,method='unknown')))
 reject(lambda:replay(c,r,dict(ok=True,method='R_nonpositive',statement='all_four_pairings_quartet_free')))
 reject(lambda:replay(c,r,dict(ok=True,method='accelerated_cover',statement='all_four_pairings_quartet_free',conjugate_checked=False,covers=[{}])))
 # Both children include their common face and cover their closed parent exactly.
 for axis in range(4):
  prefix='0'*axis;pc,pr=box(prefix);lc,lr=box(prefix+'0');rc,rr=box(prefix+'1')
  for j in range(4):
   if j==axis:
    if not(lc[j]-lr[j]==pc[j]-pr[j] and lc[j]+lr[j]==rc[j]-rr[j] and rc[j]+rr[j]==pc[j]+pr[j]):raise ValueError('closed split')
   elif (lc[j],lr[j],rc[j],rr[j])!=(pc[j],pr[j],pc[j],pr[j]):raise ValueError('unsplit coordinate')
 path_audit(['00','01','1'])
 from transfer import controls
 return dict(status='PASS',rejection_controls=count,closed_face_splits=4,transfer=controls())
