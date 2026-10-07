# Float estimate (not rigorous): for each post-E inventory row, max of R(E) over the centre and 16 vertices.
import gzip, numpy as np, sys, collections
def R(th):
    a,b,c,d=[np.exp(1j*th[:,k]) for k in range(4)]
    s=-(a+b+1); t=-(c+d+1); r=-(c*np.conj(a)+d*np.conj(b)+1)
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2; p=X+Y+Z; J=2*(s*r*np.conj(t)).real; W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J; eta=9-p+J; chi=W-(p-9)*(p-18)+(p-15)*J; return 4*g*g*eta-chi*chi
V=np.array([[0,0,0,0]]+[[sa,sb,sc,sd] for sa in (-1,1) for sb in (-1,1) for sc in (-1,1) for sd in (-1,1)],float)
cnt=collections.Counter(); hist=collections.Counter(); N=0
buf=[]
def flush():
    global N
    A=np.array([[float(x) for x in l[1:5]]+[int(l[0])] for l in buf]); codes=[l[5] for l in buf]; cls=[l[7] for l in buf]
    th=A[:,:4]; h=np.pi/2**A[:,4]
    m=np.max(np.stack([R(th+h[:,None]*v) for v in V]),0)
    for mm,cd,cl in zip(m,codes,cls):
        b='<0' if mm<0 else '<1' if mm<1 else '<5' if mm<5 else '<20' if mm<20 else '>=20'
        cnt[b]+=1; hist[(cl,b)]+=1
    N+=len(buf); buf.clear()
for l in gzip.open(sys.argv[1],'rt'):
    if l.startswith('#') or not l.strip(): continue
    buf.append(l.split())
    if len(buf)>=2_000_000: flush()
flush()
print(N, dict(cnt))
for k,v in sorted(hist.items(), key=lambda x:-x[1])[:25]: print(k,v)
