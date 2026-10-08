"""Outward matrix multiplication accelerator; all other arithmetic stays libmp.

Each input endpoint is rounded outward to binary64. C++ widens every
product and addition by one nextafter step, including subnormal results.
Overflow/nonfinite arithmetic rejects, never accepts. Compilation explicitly
disables contraction and fast-math; exact rational tests check the backend.
"""
import ctypes,subprocess,hashlib,os,tempfile
from pathlib import Path
import numpy as np
from mpmath import iv
from mpmath.libmp import to_float,from_float,round_floor,round_ceiling
from fractions import Fraction
HERE=Path(__file__).resolve().parent
LIB=None

def lib():
    global LIB
    if LIB is None:
        src=HERE/'matmul.cpp'
        sha=hashlib.sha256(src.read_bytes()).hexdigest()[:16]
        path=Path(tempfile.gettempdir())/('fts_v2_mm_'+sha+'_'+str(os.getpid())+'.so')
        subprocess.run(['g++','-O2','-std=c++17','-shared','-fPIC','-fno-fast-math','-ffp-contract=off',str(src),'-o',str(path)],check=True,capture_output=True)
        LIB=ctypes.CDLL(str(path))
        arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=2,flags='C_CONTIGUOUS')
        LIB.interval_matmul.argtypes=[arr]*6+[ctypes.c_int]*3
        LIB.interval_matmul.restype=ctypes.c_int
    return LIB

def endpoints(A):
    A=np.asarray(A);lo=np.empty(A.shape);hi=np.empty(A.shape)
    for idx,x in np.ndenumerate(A):
        if isinstance(x,Fraction):x=iv.mpf(x.numerator)/x.denominator
        elif not hasattr(x,'_mpi_'):x=iv.mpf(x.item() if isinstance(x,np.generic) else x)
        lo[idx]=to_float(x._mpi_[0],round_floor);hi[idx]=to_float(x._mpi_[1],round_ceiling)
    return lo,hi

def mm(A,B):
    A=np.asarray(A);B=np.asarray(B)
    if A.dtype!=object and B.dtype!=object:return A@B
    if A.ndim!=2 or B.ndim!=2 or A.shape[1]!=B.shape[0]:raise ValueError('matrix shape')
    al,ah=endpoints(A);bl,bh=endpoints(B)
    cl=np.empty((A.shape[0],B.shape[1]));ch=np.empty_like(cl)
    status=lib().interval_matmul(al,ah,bl,bh,cl,ch,*[A.shape[0],A.shape[1],B.shape[1]])
    if status:raise ValueError('outward matrix arithmetic rejected '+str(status))
    C=np.empty(cl.shape,dtype=object)
    for idx,l in np.ndenumerate(cl):
        x=iv.mpf(0);x._mpi_=(from_float(float(l)),from_float(float(ch[idx])));C[idx]=x
    return C

def audit():
    from fractions import Fraction as Q
    import random,math
    rng=random.Random(2102026);count=0
    for n in (1,2,5,21,30):
        A=np.empty((3,n),dtype=object);B=np.empty((n,4),dtype=object)
        for M in (A,B):
            for idx in np.ndindex(M.shape):
                a=Q(rng.randrange(-100000,100000),2**rng.randrange(1,80));h=Q(rng.randrange(1,500),2**rng.randrange(20,95))
                M[idx]=iv.mpf([iv.mpf(a.numerator)/a.denominator-iv.mpf(h.numerator)/h.denominator,iv.mpf(a.numerator)/a.denominator+iv.mpf(h.numerator)/h.denominator])
        C=mm(A,B)
        # Rationalize the actual input endpoints, not a rounded proxy.
        def rat(t):
            s,m,e,b=t;return (-1 if s else 1)*Q(int(m))*Q(2)**int(e)
        for i,j in np.ndindex(C.shape):
            l=h=Q(0)
            for k in range(n):
                xs=[rat(t) for t in A[i,k]._mpi_];ys=[rat(t) for t in B[k,j]._mpi_]
                pro=[x*y for x in xs for y in ys];l+=min(pro);h+=max(pro)
            if not(rat(C[i,j]._mpi_[0])<=l<=h<=rat(C[i,j]._mpi_[1])):raise ValueError('matrix backend rational containment failed')
            count+=1
    return dict(exact_rational_output_checks=count,arithmetic='outward IEEE-754 products and sums; overflow rejects')
