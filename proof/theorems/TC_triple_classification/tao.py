#!/usr/bin/env python3
"""All-Arb one-clique exclusion at the exact Tao matrix (no float decisions).

Every torus bin is either retained or rejected by an Arb strict inequality.
Clustering uses exact integer distances; graph search is exhaustive or fails.
See PROOF.md for the three elementary bounds used here.
"""
import argparse
import hashlib
import itertools
import json
from pathlib import Path

from flint import acb, arb, ctx

E = [[0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
     [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]


def cis(n, d):
    return (acb(0,2)*arb.pi()*arb(n)/d).exp()


def kept_bins(levels, cap):
    kept, previous, counts = None, None, []
    for m in levels:
        if previous is None:
            candidates = itertools.product(range(m), repeat=5)
        else:
            if m != 2*previous:
                raise ValueError('levels must double')
            candidates = (tuple(2*x+y for x,y in zip(b,bit)) for b in kept
                          for bit in itertools.product(range(2), repeat=5))
        table = [cis(n,6*m) for n in range(6*m)]
        q = [[[table[(3*(2*b+1)-2*m*E[r][c]) % (6*m)] for b in range(m)]
              for r in range(1,6)] for c in range(6)]
        t = arb.pi()/m
        kept, tested = [], 0
        for b in candidates:
            tested += 1
            retain = True
            for c in range(6):
                z = [q[c][r][b[r]] for r in range(5)]
                s = sum(z,acb(1))
                # |S(actual)-S(midpoint)| <= 5t.
                if abs(abs(s)-arb(6).sqrt()) > 5*t:
                    retain = False
                    break
                # Taylor bound for |S|^2-6, with five phase increments <= t.
                lhs = abs((s*s.conjugate()).real-6)
                rhs = 2*t*sum((abs((s.conjugate()*x).imag) for x in z),arb(0)) + t*t*(25+5*abs(s))
                if lhs > rhs:
                    retain = False
                    break
            if retain:
                kept.append(b)
                if len(kept) > cap:
                    raise RuntimeError('bin cap: no conclusion')
        digest = hashlib.sha256(json.dumps(kept,separators=(',',':')).encode()).hexdigest()
        counts.append(dict(M=m,tested=tested,kept=len(kept),sha256=digest))
        print(json.dumps(counts[-1]),flush=True)
        previous = m
    return kept, previous, counts


def cluster(bins, m):
    # Midpoint differences are (b-c)/m; zero coordinate fixed at 0.
    # Squared norm after projecting off common phase:
    # (6 sum d_j^2 - (sum d_j)^2) / (6 m^2).
    remaining, labels = list(bins), []
    while remaining:
        c = remaining[0]
        rest, maximum = [], 0
        for b in remaining:
            d = [(x-y+m//2) % m-m//2 for x,y in zip(b,c)]
            n = 6*sum(x*x for x in d)-sum(d)**2
            if n*10000 <= 9*6*m*m:  # distance <= 3/100 cycles, EXACT
                maximum = max(maximum,n)
            else:
                rest.append(b)
        radius = (arb(maximum)/(6*m*m)).sqrt() + (arb(29)/6).sqrt()/(2*m)
        if not 4*arb.pi()*radius < arb(2).sqrt():
            raise RuntimeError('label may contain orthogonal vectors: no conclusion')
        labels.append((c,radius))
        remaining = rest
    return labels


def graph(labels,m):
    table = [cis(n,m) for n in range(m)]
    adjacency = [0]*len(labels)
    for a,(u,su) in enumerate(labels):
        for b in range(a):
            v,sv = labels[b]
            q = [acb(1)]+[table[(x-y) % m] for x,y in zip(u,v)]
            s, r = sum(q,acb(0)), su+sv
            # First-order Lipschitz bound on the unnormalized inner product.
            if abs(s) > 2*arb.pi()*arb(6).sqrt()*r:
                continue
            # Project the orthogonality equation onto its midpoint value.
            gradient = sum(((s.conjugate()*x).imag**2 for x in q),arb(0)).sqrt()
            if (s*s.conjugate()).real > 2*arb.pi()*r*gradient+2*arb.pi()**2*abs(s)*r*r:
                continue
            adjacency[a] |= 1 << b
            adjacency[b] |= 1 << a
    return adjacency


def no_clique(adjacency, size=6, cap=5000000):
    n, steps = len(adjacency), 0
    for i,a in enumerate(adjacency):
        if a < 0 or a >> n or a & (1 << i):
            raise ValueError('invalid graph')
        if any(bool(a & (1 << j)) != bool(adjacency[j] & (1 << i)) for j in range(n)):
            raise ValueError('asymmetric graph')
    def search(pool,need):
        nonlocal steps
        if need == 0:
            return True
        while pool.bit_count() >= need:
            steps += 1
            if steps > cap:
                raise RuntimeError('graph cap: no conclusion')
            bit = pool & -pool
            pool ^= bit
            if search(pool & adjacency[bit.bit_length()-1],need-1):
                return True
        return False
    return not search((1 << n)-1,size),steps


def run(levels=(6,12,24,48,96),cap=2000000):
    ctx.prec=120
    # Exact matrix identity in Z[omega]/(omega^2+omega+1).
    for a in range(6):
        for b in range(a):
            counts=[sum((E[r][a]-E[r][b]) % 3 == k for r in range(6)) for k in range(3)]
            if counts != [2,2,2]:
                raise ValueError('Tao matrix is not Hadamard')
    bins,m,trace = kept_bins(levels,cap)
    labels = cluster(bins,m)
    adjacency = graph(labels,m)
    ok,steps = no_clique(adjacency)
    if not ok:
        raise RuntimeError('six-clique survives: no conclusion')
    return dict(status='CERTIFIED',claim='Tao is not a triple edge',precision_bits=ctx.prec,
                levels=trace,labels=len(labels),edges=sum(a.bit_count() for a in adjacency)//2,
                graph_steps=steps,source_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())


if __name__ == '__main__':
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path)
    parser.add_argument('--max-level',type=int,choices=(48,96,192,384),default=96)
    args=parser.parse_args()
    levels=[6]
    while levels[-1] < args.max_level:
        levels.append(2*levels[-1])
    receipt=run(tuple(levels))
    text=json.dumps(receipt,indent=2)+'\n'
    if args.output:
        args.output.write_text(text)
    print(text,end='')
