#!/usr/bin/env python3
"""Exact integer replay of how many dyadic 4-boxes meet the unit sphere."""
import argparse,itertools,json


def count(level):
    n=1<<level;transverse=tangent=0
    for ind in itertools.product(range(n),repeat=4):
        lo=[-n+2*i for i in ind];hi=[a+2 for a in lo]
        mn=sum(0 if a<=0<=b else min(a*a,b*b) for a,b in zip(lo,hi))
        mx=sum(max(a*a,b*b) for a,b in zip(lo,hi))
        if mn<n*n<mx:transverse+=1
        elif mn<=n*n<=mx:tangent+=1
    return dict(level=level,total=transverse+tangent,transverse=transverse,tangent=tangent)


if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--max-level',type=int,default=5)
    a=p.parse_args();print(json.dumps(dict(status='CERTIFIED exact integer enumeration',
        counts=[count(m) for m in range(1,a.max_level+1)]),indent=2))
