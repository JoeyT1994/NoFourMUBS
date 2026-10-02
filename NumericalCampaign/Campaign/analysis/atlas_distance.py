#!/usr/bin/env python3
"""Evidence only: exact seed distance of each classified survivor's centre to the Fourier-family seed atlas
(ProvenResults/FourierNeighbourhood/SeedAtlas), and whether the whole cell lies inside a tube of given radius.
  python3 atlas_distance.py IN.tsv OUT.tsv
Centres are the Float64 radians of the campaign cells, converted exactly to turns (Fraction(θ/2π) of the float);
distances are reported in radians."""
import sys, math, csv, os
from fractions import Fraction as Q
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', '..', 'ProvenResults', 'FourierNeighbourhood', 'SeedAtlas'))
from atlas import distance_squared_turns, classify_box
rows = list(csv.DictReader(open(sys.argv[1]), delimiter='\t'))
out = open(sys.argv[2], 'w'); w = None
for r in rows:
    th = [float(r[k]) for k in ('t1', 't2', 't3', 't4')]; lev = int(r['level'])
    c = tuple(Q(x / (2 * math.pi)) for x in th)
    q2, comp, _ = distance_squared_turns(c)
    d = math.sqrt(float(q2)) * 2 * math.pi
    hw = [Q(1, 2 ** (lev + 1))] * 4          # half-width π/2^lev radians = 1/2^(lev+1) turns
    tube = {}
    for rad in (Q(1, 8192), Q(1, 1024), Q(1, 128), Q(1, 16)):          # tube radii in radians, as turns below
        tube[f'in_tube_{rad.denominator}'] = classify_box(c, hw, rad / Q(2) / Q(314159265, 100000000))   # rad/(2π), π≈3.14159265
    r.update(dict(atlas_dist_rad=f'{d:.6g}', atlas_component=comp, **tube))
    if w is None:
        w = csv.DictWriter(out, fieldnames=list(r.keys()), delimiter='\t'); w.writeheader()
    w.writerow(r)
print(f"distances for {len(rows)} survivors written")
