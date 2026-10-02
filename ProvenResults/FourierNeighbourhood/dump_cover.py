#!/usr/bin/env python3
"""Decode the supplied dyadic coverage data, without heuristic rediscovery.
Example: python dump_cover.py --chart 0 --limit 10 > boxes.jsonl
Without --limit, every selected chart leaf is emitted. Exact acceptance is
performed separately by verify.py; this utility makes the compressed boxes,
integer multipliers, and center assignments human-inspectable.
"""
from pathlib import Path
import argparse, gzip, json, struct
ROOT=Path(__file__).resolve().parent
GRID=1<<40

def leaf_records(root=ROOT):
    code=gzip.decompress((root/'data/cover.bin.gz').read_bytes())
    payload=gzip.decompress((root/'data/multipliers.i16.gz').read_bytes())
    if len(payload)%12: raise ValueError('truncated multiplier record')
    multipliers=list(struct.iter_unpack('<6h',payload))
    pos=mi=0
    def walk(chart,lo,hi,depth):
        nonlocal pos,mi
        if pos>=len(code): raise ValueError('truncated cover')
        offset=pos;op=code[pos];pos+=1
        if op<5:
            if (lo[op]+hi[op])%2: raise ValueError('non-dyadic split')
            mid=(lo[op]+hi[op])//2
            if not lo[op]<mid<hi[op]: raise ValueError('degenerate split')
            h=hi.copy();h[op]=mid
            yield from walk(chart,lo,h,depth+1)
            l=lo.copy();l[op]=mid
            yield from walk(chart,l,hi,depth+1)
            return
        item={'chart':chart,'depth':depth,'byte_offset':offset,
              'denominator':GRID,'lo':lo.copy(),'hi':hi.copy()}
        if 32<=op<38 or 48<=op<54:
            weights=[0]*6
            weights[op-(32 if op<38 else 48)]=1 if op<38 else -1
            item.update(kind='exclude',weights=weights)
        elif op==64:
            if mi>=len(multipliers): raise ValueError('missing multiplier')
            item.update(kind='exclude',weights=list(multipliers[mi]),multiplier_index=mi)
            mi+=1
        elif 128<=op<176:
            item.update(kind='include',center=op-128)
        else: raise ValueError('invalid opcode')
        yield item
    for chart in range(32):
        yield from walk(chart,[-GRID]*5,[GRID]*5,0)
    if pos!=len(code) or mi!=len(multipliers): raise ValueError('trailing data')

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--chart',type=int,default=None)
    p.add_argument('--limit',type=int,default=None)
    a=p.parse_args()
    if a.chart is not None and not 0<=a.chart<32: p.error('chart must be 0..31')
    if a.limit is not None and a.limit<1: p.error('limit must be positive')
    n=0
    for row in leaf_records():
        if a.chart is not None and row['chart']!=a.chart: continue
        print(json.dumps(row,separators=(',',':')));n+=1
        if a.limit is not None and n>=a.limit: break
if __name__=='__main__': main()
