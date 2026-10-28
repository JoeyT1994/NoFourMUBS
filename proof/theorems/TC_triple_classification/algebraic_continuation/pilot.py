"""Experimental diagnostics, not a source-bound certificate producer."""
import argparse
import json
import time
from load_native import R, S
import run_algebraic
import block_contraction as BC

old_final = R.final_pattern
old_joint = R.JB.refine
captured = None


def capture(model, prepared, bounds, clique):
    global captured
    pp, bb, receipt = old_joint(model, prepared, bounds, clique)
    captured = model, pp, bb, clique
    return pp, bb, receipt


def final(model, prepared, bounds, cover, clique, allow_fine=True):
    global captured
    captured = None
    out = old_final(model, prepared, bounds, cover, clique, allow_fine=allow_fine)
    if not allow_fine or out['status'] != 'NOT ESTABLISHED':
        return out
    candidate = captured or (model, prepared, bounds, clique)
    start = time.monotonic()
    pp, bb, diag = BC.refine(*candidate, signed=True)
    print(json.dumps(dict(colors=list(clique), contraction=diag,
                          seconds=time.monotonic()-start)), flush=True)
    exclusion = S.exclude(candidate[0], pp, bb, clique)
    out['block_diagnostic'] = diag
    if exclusion:
        out['experimental_candidate'] = exclusion
    else:
        out['experimental_candidate'] = R.MS.classify(candidate[0], pp, bb, clique, attempts=1)
    return out


R.JB.refine = capture
R.final_pattern = final

if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--index', type=int, required=True)
    p.add_argument('--output', required=True)
    a = p.parse_args()
    row = R.run_ball(str(R.DEFAULT_ATLAS), a.index, R.binding(R.DEFAULT_ATLAS)['id'])
    row['status'] = 'EXPERIMENTAL DIAGNOSTIC ONLY'
    row.pop('claim', None)
    with open(a.output, 'w') as f:
        json.dump(row, f, indent=2)
