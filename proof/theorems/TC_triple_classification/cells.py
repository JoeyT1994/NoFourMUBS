"""Exact cell geometry and fail-closed accounting for the TC handoff.

This does not turn the research JSONL summaries into certificates. Missing,
failed, or unverified rows remain unresolved in the strict proof ledger.
"""
import argparse
from fractions import Fraction as Q
import gzip
import hashlib
import json
from pathlib import Path

from flint import arb


def hex_rational(text):
    """Interpret a stored hexadecimal real as a rational, without float rounding."""
    if not isinstance(text,str):
        raise ValueError('expected hexadecimal string')
    sign = -1 if text.startswith('-') else 1
    text=text.lstrip('+-').lower()
    if not text.startswith('0x') or text.count('p') != 1:
        raise ValueError('invalid hexadecimal real')
    mantissa,exponent=text[2:].split('p')
    pieces=mantissa.split('.')
    if len(pieces)>2:
        raise ValueError('invalid mantissa')
    integer=pieces[0]
    fractional=pieces[1] if len(pieces)==2 else ''
    value=Q(int(integer+fractional,16),16**len(fractional))
    exponent=int(exponent)
    return sign*value*(Q(2)**exponent)


def bounds(level,index):
    if type(level) is not int or level < 0 or len(index) != 4:
        raise ValueError('invalid cell')
    d=2**level
    if any(type(c) is not int or not 0 <= c < d for c in index):
        raise ValueError('invalid cell index')
    return [(Q(-d+2*c,d),Q(-d+2*c+2,d)) for c in index]


def misses_unit_ball(level,index):
    intervals=bounds(level,index)
    distances=[lo if lo>0 else -hi if hi<0 else Q(0) for lo,hi in intervals]
    return sum(x*x for x in distances) > 1


def enclosure(seed,level,index):
    """Enclose the C1 model restricted to one dyadic cube, in radians.

    PRECONDITION: this seed's C1 enclosure has been independently certified.
    No phase-center rounding, no normal-remainder shrink on subdivision.
    """
    intervals=bounds(level,index)
    r,n=hex_rational(seed['r']),hex_rational(seed['n'])
    if r <= 0 or n < 0:
        raise ValueError('invalid C1 radii')
    p=[hex_rational(x) for x in seed['P']]
    u=seed['U']
    # Certificate frames are stored flattened; accept that canonical layout only.
    if len(p)!=36 or len(u)!=144:
        raise ValueError('expected 36 phases and a flattened 36 by 4 frame')
    u=[[hex_rational(x) for x in u[4*e:4*e+4]] for e in range(36)]
    center=[r*(lo+hi)/2 for lo,hi in intervals]
    half=r/Q(2**level)
    centers=[p[e]+sum((u[e][k]*center[k] for k in range(4)),Q(0)) for e in range(36)]
    widths=[n+half*sum(abs(x) for x in row) for row in u]
    def ball(mid,rad):
        return arb(mid.numerator)/mid.denominator + arb(0,arb(rad.numerator)/rad.denominator)
    return dict(phase_intervals=[ball(x,y) for x,y in zip(centers,widths)],
                center=centers,half_widths=widths,radius=2*half,normal_remainder=n,
                empty=misses_unit_ball(level,index))


def audit(certificate,snapshot):
    data=json.loads(gzip.decompress(certificate.read_bytes()))
    n=len(data['seeds'])
    rows=[json.loads(line) for line in snapshot.read_text().splitlines() if line.strip()]
    by_index={}
    for row in rows:
        idx=row['idx']
        if type(idx) is not int or not 0 <= idx < n or idx in by_index:
            raise ValueError('invalid or duplicate seed index')
        for cell in row.get('failed_cells',[]):
            bounds(cell[0],cell[1:])
        by_index[idx]=row
    claimed=sum(row.get('ok') is True for row in rows)
    return dict(status='NOT ESTABLISHED',claim='all-cell triple classification',seed_count=n,
                certificate_sha256=hashlib.sha256(certificate.read_bytes()).hexdigest(),
                snapshot_sha256=hashlib.sha256(snapshot.read_bytes()).hexdigest(),
                recorded_indices=sorted(by_index),recorded_rows=len(rows),
                claimed_excluded_seed_count=claimed,
                recorded_failed_cells=sum(len(row.get('failed_cells',[])) for row in rows),
                missing_indices=[idx for idx in range(n) if idx not in by_index],
                error_indices=sorted(idx for idx,row in by_index.items() if 'error' in row),
                strict_certified_seed_count=0,strict_unresolved_seed_count=n,
                x_ball='NOT ESTABLISHED: full third-basis coverage missing',
                warning='Research summaries use float Stage C and are not strict TC certificates. '
                        'No missing row or empty failed_cells array is treated as proof.')


if __name__ == '__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('certificate',type=Path)
    parser.add_argument('snapshot',type=Path)
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    result=audit(args.certificate,args.snapshot)
    text=json.dumps(result,indent=2)+'\n'
    if args.output:
        args.output.write_text(text)
    print(json.dumps({k:v for k,v in result.items() if not k.endswith('_indices')},indent=2))
