"""Untrusted weighted-radius refit experiment, with independent Arb replay."""
import gzip
import json
from pathlib import Path
import time
import numpy as np
import xball_groups_build as G
import edge_wholeball as E
import caps as C
import seedcert as S


def main():
    started = time.perf_counter()
    with gzip.open(G.F.B.ROOT/'data/xball_headers.json.gz', 'rt') as handle:
        data = json.load(handle)
    original = json.loads((G.F.B.ROOT/'results/groups_all_proposal.json').read_text())['caps']
    order = np.argsort([cap['info']['numerical_radius'] for cap in original])
    selected = [int(order[index]) for index in np.linspace(0, len(order)-1, 12).astype(int)]
    search = G.GroupSearch(data)
    output = []
    for index in selected:
        tick = time.perf_counter()
        old = original[index]
        gi = old['group_index']
        group = search.groups[gi]
        target = S.Ball(data['seed_headers'][group['target']])
        exact = E.EdgeTransfer(search.model, target, group)
        numeric = G.CachedTransfer(search, gi)
        basic_curvature = numeric.curvA
        basic = numeric.cap(old['v'], mode='local_sphere')
        numeric.curvA = exact.weighted['weighted_Hessian']
        weighted = numeric.cap(old['v'], mode='local_sphere')
        basic_replay = C.check_cap(search.model, exact, basic) if basic else None
        weighted_replay = C.check_cap(search.model, exact, weighted) if weighted else None
        row = dict(original_index=index, group_index=gi,
                   original_radius=old['info']['numerical_radius'],
                   basic_curvature=basic_curvature,
                   weighted_curvature=numeric.curvA,
                   basic_cap=basic, weighted_cap=weighted,
                   basic_replay=basic_replay, weighted_replay=weighted_replay,
                   seconds=time.perf_counter()-tick)
        if basic and weighted:
            row['radius_ratio'] = weighted['info']['numerical_radius']/basic['info']['numerical_radius']
        output.append(row)
        print(json.dumps({k: v for k, v in row.items() if k not in ('basic_cap', 'weighted_cap')}), flush=True)
    ratios = [row['radius_ratio'] for row in output if 'radius_ratio' in row]
    answer = dict(status='CERTIFIED sampled refits' if all(row['weighted_replay'] and row['weighted_replay']['ok']
                                                         for row in output) else 'FAIL',
                  samples=output, min_ratio=min(ratios), median_ratio=float(np.median(ratios)),
                  max_ratio=max(ratios), seconds=time.perf_counter()-started)
    (G.F.B.ROOT/'results/weighted_refit_pilot.json').write_text(json.dumps(answer, indent=2)+'\n')
    print(json.dumps({k: v for k, v in answer.items() if k != 'samples'}), flush=True)


if __name__ == '__main__':
    main()
