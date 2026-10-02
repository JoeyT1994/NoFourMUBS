"""Conditional local D0 gap: success means D0 implies R > threshold.

Unlike prune_box, success does NOT exclude the entire input seed box.
"""
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[2]/'CornerBounds/SideTriplePrune'))
from triple_prune import arb, cover_side_triples


def certify_local_gap(centers, radii, threshold, *, depth=12,
                      maxlabels=2048, budget=100000):
    centers, radii = list(map(arb, centers)), list(map(arb, radii))
    threshold = arb(threshold)
    if len(centers) != 4 or len(radii) != 4 or not all(h > 0 for h in radii):
        raise ValueError('Need four centres and positive half-widths in radians')
    if not threshold.is_exact() or not threshold > 0:
        raise ValueError('Threshold must be an exact positive Arb number')
    for transpose in (False, True):
        order = (0, 2, 1, 3) if transpose else (0, 1, 2, 3)
        result = cover_side_triples([centers[i] for i in order],
                                   [radii[i] for i in order], threshold,
                                   depth=depth, maxlabels=maxlabels, budget=budget)
        if result['ok']:
            return dict(result, transpose=transpose, scope='D0_implies_R_above_threshold')
    return dict(ok=False, reason='unresolved')
