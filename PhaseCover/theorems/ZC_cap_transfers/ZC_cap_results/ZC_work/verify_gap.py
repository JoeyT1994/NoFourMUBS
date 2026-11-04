#!/usr/bin/env python3
"""Standard-library exact replay of a gap in a supplied spherical-cap list.

For positive-threshold caps v_i.x >= h_i on ||x||=1, a rational vector
y=n/d with v_i.y <= h_i for every i and ||y||>1 proves that
x=n/sqrt(sum(n_j*n_j)) belongs to no listed cap.  This is only a statement
about the supplied cap geometry, not about the full transfer regions.

Usage: python verify_gap.py proposals/seed_2124.json gaps/seed_2124.json
"""
from __future__ import annotations

import argparse
from fractions import Fraction
from functools import reduce
from hashlib import sha256
import json
from math import gcd, isfinite, lcm
from pathlib import Path


def exact_integer(value):
    if isinstance(value,bool):
        raise ValueError('Boolean is not an integer coefficient')
    if isinstance(value,int):return value
    if isinstance(value,str):
        result=int(value,10)
        if str(result)!=value and not (value.startswith('+') and str(result)==value[1:]):
            raise ValueError('noncanonical integer string')
        return result
    raise ValueError('integer coefficient required')


def rational(value):
    if isinstance(value,bool):raise ValueError('Boolean is not a rational coefficient')
    if isinstance(value,str) and value.lower().lstrip('+-').startswith('0x'):
        value=float.fromhex(value)
    if isinstance(value,float):
        if not isfinite(value):raise ValueError('nonfinite coefficient')
        return Fraction.from_float(value)
    if isinstance(value,(list,tuple)) and len(value)==2:
        return Fraction(exact_integer(value[0]),exact_integer(value[1]))
    return Fraction(value)


def integer_rows(caps):
    rows=[]
    for i,cap in enumerate(caps):
        v=cap.get('v',cap.get('normal'))
        h=cap.get('h',cap.get('threshold'))
        if not isinstance(v,list) or len(v)!=4:
            raise ValueError(f'cap {i}: expected four normal coordinates')
        rr=[rational(x) for x in v]+[rational(h)]
        if rr[-1]<=0:raise ValueError(f'cap {i}: threshold must be positive')
        if not any(rr[:4]):raise ValueError(f'cap {i}: zero normal')
        den=lcm(*(q.denominator for q in rr))
        row=[q.numerator*(den//q.denominator) for q in rr]
        common=reduce(gcd,(abs(x) for x in row))
        rows.append(tuple(x//common for x in row))
    return rows


def geometry_hash(caps):
    canonical=json.dumps(integer_rows(caps),separators=(',',':')).encode()
    return sha256(canonical).hexdigest()


def verify(caps,witness):
    if witness.get('format')!='rational-s3-cap-gap-v1':
        raise ValueError('unrecognized gap certificate format')
    rows=integer_rows(caps)
    if geometry_hash(caps)!=witness.get('geometry_sha256'):
        raise ValueError('cap geometry does not match the frozen witness')
    n=[exact_integer(x) for x in witness['numerator']]
    d=exact_integer(witness['denominator'])
    if len(n)!=4 or d<=0:raise ValueError('malformed rational witness vector')
    norm2=sum(x*x for x in n)
    if norm2<=d*d:raise ValueError('witness is not strictly outside the unit ball')
    slacks=[]
    for i,row in enumerate(rows):
        slack=row[4]*d-sum(row[j]*n[j] for j in range(4))
        if slack<0:raise ValueError(f'cap {i}: rational point violates its halfspace')
        slacks.append(slack)
    active=witness.get('active_caps',[])
    for index in active:
        index=exact_integer(index)
        if not 0<=index<len(rows) or slacks[index]!=0:
            raise ValueError('claimed active cap is not an equality')
    upper=rational(witness['normalized_support_upper'])
    if not 0<upper<1:
        raise ValueError('support upper bound must lie strictly between zero and one')
    if d*d*upper.denominator**2>norm2*upper.numerator**2:
        raise ValueError('support upper bound is too small')
    # For x=n/sqrt(norm2), each v_i.x/h_i <= d/sqrt(norm2) <= upper < 1.
    return dict(status='CERTIFIED',claim='a unit-sphere direction outside every listed cap',
                source_seed=witness.get('source_seed'),cap_count=len(rows),
                normalized_support_upper=str(upper),
                strict_support_gap_lower=str(1-upper),
                geometry_sha256=witness['geometry_sha256'])


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('caps',type=Path)
    parser.add_argument('witness',type=Path)
    args=parser.parse_args()
    document=json.loads(args.caps.read_text())
    caps=document['caps'] if isinstance(document,dict) else document
    witness=json.loads(args.witness.read_text())
    if isinstance(document,dict) and 'seed' in document and document['seed']!=witness.get('source_seed'):
        raise ValueError('source seed mismatch')
    print(json.dumps(verify(caps,witness),indent=2))


if __name__=='__main__':main()
