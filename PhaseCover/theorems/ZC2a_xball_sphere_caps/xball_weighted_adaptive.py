"""Numerical hole filling using previously computed edge weighted curvatures.

The curvature map is a proposal cache only. The final independent verifier
recomputes all bounds from the unchanged mathematical input.
"""
import json
from pathlib import Path
import xball_fast as F
from xball_groups_build import CachedTransfer

data=json.loads((Path(__file__).resolve().parent/'results/groups_weighted_proposal.json').read_text())
WEIGHTED={row['group_index']:row['weighted_curvature'] for row in data['info']['groups']
          if row.get('weighted_curvature') is not None}


class WeightedCachedTransfer(CachedTransfer):
    def __init__(self,search,gi):
        super().__init__(search,gi)
        if gi in WEIGHTED:self.curvA=WEIGHTED[gi]*(1+1e-9)


F.FastTransfer=WeightedCachedTransfer

if __name__=='__main__':F.main()
