import sys
sys.argv=['x','nonzero']
src=open('sim.py').read()
exec(src)
# instrument: count mul nodes with deg (as proxy for big)
import sim
cnt={'mul':0,'big':0}
orig_mul=C.__mul__
def mul(a,b):
    r=orig_mul(a,b); cnt['mul']+=1
    if sum(r.deg)>100: cnt['big']+=1
    return r
C.__mul__=mul
exec(open('sim_run.py').read().split('tot = 0')[0].replace("for p in G.USED:","for p in []:"))
exec(open('sim_run.py').read().split('# sum check')[1])
print(cnt)
