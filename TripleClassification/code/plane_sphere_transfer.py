"""Certified transfer of a closed dyadic cell intersected with its original ball.

The atlas checker bounds the affine image on box intersect ball using a verified
nonnegative quadratic multiplier. Nonlinear and orientation errors remain the
atlas's conservative whole-box bounds. No radius changes. This is a geometric
implication only: the target ball's all-K classification must be audited separately.
"""
import sys
from pathlib import Path
from flint import ctx
import plane_frontier_certificate as F
from plane_column_certificate import digest, read_json, require


def validate(proposal, count, source):
    require(isinstance(proposal, dict) and set(proposal) == {'target', 'group', 'domain'} and
            proposal['domain'] == 'original-ball-intersection-v1', 'invalid transfer domain')
    target = proposal['target']; g = proposal['group']
    require(type(target) is int and 0 <= target < count and target != source, 'invalid transfer target')
    require(isinstance(g, dict) and g.get('kind') in ('T0', 'T1'), 'invalid transfer group')
    expected = {'kind', 'wind'} if g['kind'] == 'T0' else {'kind', 'wind', 'rows', 'cols', 'g'}
    require(set(g) == expected and isinstance(g['wind'], list) and len(g['wind']) == 4 and
            all(type(x) is int for x in g['wind']), 'invalid transfer winding')
    if g['kind'] == 'T1':
        require(g['g'] in ('id', 'conj', 'T', 'conjT') and all(
            isinstance(g[k], list) and len(g[k]) == 3 and len(set(g[k])) == 3 and
            all(type(x) is int and 0 <= x < 6 for x in g[k]) for k in ('rows', 'cols')),
            'invalid corner permutation')


class Context:
    def __init__(self, root, ball):
        self.root = Path(root).resolve(); self.ball = ball
        atlas = self.root / 'proof/seed_atlas/results/seed_atlas_certificate.json.gz'
        require(digest(atlas) == F.PIN, 'wrong original atlas')
        self.seeds = read_json(atlas)['seeds']
        require(type(ball) is int and 0 <= ball < len(self.seeds), 'invalid source ball')
        folder = self.root / 'proof/seed_atlas/cert'; sys.path.insert(0, str(folder))
        import patches, seedcert
        require(all(Path(module.__file__).resolve().parent == folder
                    for module in (patches, seedcert, patches.Z, seedcert.TMA)),
                'atlas checker root mismatch')
        self.P, self.SC = patches, seedcert
        old = ctx.prec; ctx.prec = 224
        try: self.model = patches.model_for(seedcert.Ball(self.seeds[ball]))
        finally: ctx.prec = old
        require(self.model is not None, 'original normal form not certified')
        paths = [Path(module.__file__).resolve() for module in (patches, seedcert, patches.Z, seedcert.TMA)]
        self.sources = {str(p.relative_to(self.root)): digest(p) for p in paths}
        basis = folder / 'wholeball_basis.json'; self.sources[str(basis.relative_to(self.root))] = digest(basis)

    def check(self, level, cell, proposal):
        validate(proposal, len(self.seeds), self.ball)
        require(type(level) is int and 0 <= level <= 20 and isinstance(cell, list) and len(cell) == 4 and
                all(type(x) is int and 0 <= x < 2**level for x in cell), 'invalid dyadic cell')
        target = proposal['target']; old = ctx.prec; ctx.prec = 224
        try:
            result = self.P.Transfer(self.model, self.SC.Ball(self.seeds[target]), proposal['group']).check(
                [level, *cell], use_sphere=True)
        finally: ctx.prec = old
        require(result.get('ok') is True, 'transfer not certified: ' + result.get('reason', 'unknown'))
        return dict(schema='tc-original-ball-intersection-transfer-v1', status='CERTIFIED_GEOMETRIC_TRANSFER',
                    ball=self.ball, level=level, cell=cell, proposal=proposal,
                    original_atlas_sha256=F.PIN, original_radius_hex=self.seeds[self.ball]['r'],
                    target_radius_hex=self.seeds[target]['r'], bounds=result,
                    dependencies_sha256=self.sources, checker_sha256=digest(__file__),
                    requires_target_ball_classification=target, original_ball_closed=False)
