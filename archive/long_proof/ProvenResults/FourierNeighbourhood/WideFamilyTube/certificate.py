"""Replay a larger matrix tube on explicitly supplied closed parameter boxes.

Centre discovery is not trusted. Complete integer covers prove ray
confinement; exact graphs exclude all pairs of orthonormal six-ray bases.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations
import hashlib,importlib.util,json,math,os,re,subprocess
from flint import arb,acb,ctx
ctx.prec=128
HERE=Path(__file__).resolve().parent
Q=1<<26


def module(name,path):
    spec=importlib.util.spec_from_file_location(name,path)
    out=importlib.util.module_from_spec(spec);spec.loader.exec_module(out);return out


def load_centers(path):
    raw=[[(F(x),F(y)) for x,y in c] for c in json.loads(path.read_text())]
    assert 0<len(raw)<=1000
    for c in raw:
        assert len(c)==6 and c[0]==(1,0)
        assert all(x*x+y*y==1 for x,y in c)
    return raw


def graph(raw,denominator):
    assert 6<=denominator<=128
    rho=F(1,denominator);N=len(raw);orth=[0]*N;ub=[0]*N
    for i in range(N):
        for j in range(i,N):
            re=sum(x*u+y*v for (x,y),(u,v) in zip(raw[i],raw[j]))
            im=sum(x*v-y*u for (x,y),(u,v) in zip(raw[i],raw[j]))
            p=(re*re+im*im)/36;assert 0<=p<=1
            if p<=4*rho*rho*(1-rho*rho):orth[i]|=1<<j;orth[j]|=1<<i
            A=3*(1-2*rho*rho)**2-F(5,2)+2*p
            if A<=0 or A*A<=5*p*(1-p):ub[i]|=1<<j;ub[j]|=1<<i
    assert all(not (orth[i]&(1<<i)) and not (ub[i]&(1<<i)) for i in range(N))
    def cliques(pool,need):
        if need==0:yield ();return
        while pool.bit_count()>=need:
            bit=pool&-pool;i=bit.bit_length()-1;pool^=bit
            for tail in cliques(pool&orth[i],need-1):yield(i,*tail)
    cases=[]
    for C in cliques((1<<N)-1,6):
        pool=(1<<N)-1
        for i in C:pool&=ub[i]
        candidates=[i for i in range(N) if pool&(1<<i)]
        # Independent literal enumeration of each restricted D pool.
        assert not any(all(orth[i]&(1<<j) for i,j in combinations(D,2))
                       for D in combinations(candidates,6)),(C,candidates)
        assert next(cliques(pool,6),None) is None
        cases.append(dict(C=C,D_pool=candidates))
    return dict(rho=str(rho),C_cliques=len(cases),max_D_pool=max((len(x['D_pool']) for x in cases),default=0),
                orth_edges=sum(x.bit_count() for x in orth)//2,ub_edges=sum(x.bit_count() for x in ub)//2,cases=cases)


def to_arb(q):return arb(q.numerator)/q.denominator


def inputs(raw,grid,a,b,tau_den,work):
    assert grid>=180 and 218880%(2*grid)==0
    centres=work/'centers.txt'
    centres.write_text(str(len(raw))+'\n'+'\n'.join(f'{round(x*Q)} {round(y*Q)}' for c in raw for x,y in c[1:])+'\n')
    assert all(abs(x*Q-round(x*Q))<1 and abs(y*Q-round(y*Q))<1 for c in raw for x,y in c[1:])
    matrix=[[acb(0,arb.pi()*j*i/3+(arb.pi()*(2*a+1)/grid if i%3==1 else
                   arb.pi()*(2*b+1)/grid if i%3==2 else 0)*(j%2)).exp()
             for i in range(6)] for j in range(6)]
    controls=[];special={(F(1),F(0)):F(0),(F(0),F(1)):F(1,4),(-F(1),F(0)):F(1,2),(F(0),-F(1)):F(3,4)}
    for ray in raw:
        z=[acb(to_arb(x),to_arb(y)) for x,y in ray]
        # These exact rational unit rays are genuine relaxed rays at the
        # midpoint. No statement that they are exact common rays is needed.
        assert all(abs(abs(sum(u*v.conjugate() for u,v in zip(z,row)))-arb(6).sqrt())<arb(1)/tau_den for row in matrix)
        for level in range(8):
            n=19*2**level;indices=[]
            for x,y in ray[1:]:
                if (x,y) in special:
                    indices.append(math.floor(special[x,y]*n));continue
                angle=acb(to_arb(x),to_arb(y)).arg()
                if y<0:angle+=2*arb.pi()
                k=math.floor(float(angle*n/(2*arb.pi())))
                assert 0<=k<n and angle>2*arb.pi()*k/n and angle<2*arb.pi()*(k+1)/n
                indices.append(k)
            controls.append([n,*indices])
    controls_path=work/'controls.txt'
    controls_path.write_text(str(len(controls))+'\n'+'\n'.join(' '.join(map(str,row)) for row in controls)+'\n')
    return centres,controls_path,len(controls)


def prepare(work):
    source=HERE.parent/'PracticalTube/tube.cpp';original=source.read_text()
    assert original.count('bool ort_possible(')==1
    (work/'arithmetic.hpp').write_text(original.split('bool ort_possible(')[0])
    arith=module('wide_arithmetic',HERE.parent/'PracticalTube/verify.py')
    trig=work/'trig.bin';digest=arith.table(trig)
    assert digest=='fc771aee6c2cdab092dd0c9cc8b261fc7623b5f76279fdf08d4a854d64b7e35a'
    binary=work/'cover'
    subprocess.run([os.environ.get('CXX','c++'),'-std=c++17','-O2','-fsanitize=undefined',
                    '-fno-sanitize-recover=all','-I',str(work),str(HERE/'cover.cpp'),'-o',str(binary)],check=True)
    return binary,trig,digest


def verify_cell(cell,binary,trig,out):
    out.mkdir(parents=True,exist_ok=True)
    raw=load_centers(HERE/'data'/cell['centers'])
    graph_proof=graph(raw,cell['rho_denominator'])
    grid,a,b,tau=[cell[key] for key in ('grid','a','b','tolerance_denominator')]
    centres,controls,ncontrols=inputs(raw,grid,a,b,tau,out)
    run=subprocess.run([str(binary),str(trig),str(centres),str(controls),str(grid),str(a),str(b),str(tau),str(cell['rho_denominator'])],
                       capture_output=True,text=True,timeout=120)
    (out/'cover.txt').write_text(run.stdout+run.stderr)
    assert run.returncode==0,(cell,run.stdout,run.stderr)
    match=re.search(r'PASS nodes (\d+) rejected (\d+) included (\d+)\n$',run.stdout)
    assert match and f'CONTROLS {ncontrols}\n' in run.stdout
    nodes,rejected,included=map(int,match.groups())
    assert 31*nodes+19**5==32*(rejected+included)
    assert len(re.findall(r'^LABEL ',run.stdout,re.M))==len(raw)
    # Direct orientation: 6d<=tau. Either orientation: 15d<tau.
    assert F(1,6*tau)<=F(1,8)
    return dict(status='PASS',cell=cell,centers=len(raw),controls=ncontrols,nodes=nodes,rejected=rejected,included=included,
                direct_radius=str(F(1,6*tau)),graph=graph_proof)
