"""Complete outward proof of R_v>128 on one explicit four-phase box.

This is a single reusable auxiliary regional certificate, not a lift or
subdivision of any frontier box. Every binary child is visited; failure,
resource exhaustion, nonfinite arithmetic or an uncovered child rejects.
"""
from interval import *
from fastmm import lib,to_float,round_floor,round_ceiling
import ctypes,json,time

def audit(limit=20000000):
 fn=lib().monotone_cover;arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=1,flags='C_CONTIGUOUS');au=np.ctypeslib.ndpointer(dtype=np.uint64,ndim=1,flags='C_CONTIGUOUS')
 fn.argtypes=[ctypes.c_double,ctypes.c_double,ctypes.c_ulonglong,au,arr];fn.restype=ctypes.c_int
 rt=iv.sqrt(v(3));lo=np.nextafter(to_float(rt._mpi_[0],round_floor),-np.inf);hi=np.nextafter(to_float(rt._mpi_[1],round_ceiling),np.inf)
 counts=np.zeros(3,dtype=np.uint64);result=np.empty(1);start=time.process_time();st=fn(lo,hi,limit,counts,result)
 require(st==0,'incomplete monotonicity cover: '+str(st));nodes,leaves,depth=map(int,counts)
 require(nodes==2*leaves-1 and depth<=40 and result[0]>128,'complete strict monotonicity cover')
 return dict(status='PASS',nodes=nodes,leaves=leaves,max_depth=depth,closed_box_radians=[['-13/128','13/128'],['-1/16','1/16'],['-3/8','9/16'],['-5/32','7/64']],seed_offsets_about_pi=['2/3','4/3','1/3','2/3'],R_v_lower=str(Q(float(result[0]))),claimed_bound='R_v > 128',cpu_s=time.process_time()-start)
if __name__=='__main__':print(json.dumps(audit(),indent=2))
