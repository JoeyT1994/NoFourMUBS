#!/usr/bin/env python3
"""NUMERICAL regeneration of the 16 saved matched-seed ray searches."""
from pathlib import Path
import json
import numpy as np
from numerics import roots,matched
O=Path(__file__).parent
for row in json.loads((O/'seed_parameters.json').read_text()):
    theta=np.array(row['theta'])
    if row['strict_a_pi']:theta[0]=np.pi
    H=matched(theta);X=roots(H,starts=3072,seed=row['sample'])
    np.savez(O/row['file'],theta=theta,H=H,X=X)
    print('NUMERICAL',row['file'],'rays',len(X),'not exhaustive',flush=True)
