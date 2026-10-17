"""Targeted corruptions of the small atlas sub-certificates (tests/atlas_fixture.py).  Standard library only.

Each entry of CASES is (name, expect, what, corrupt): `corrupt` changes a copy of the base sub-certificate in place,
`expect` is 'reject' or 'accept'.  In the base sub-certificate closed Record 0 is atlas Record 11992 and Records 1-21
are its boundary-transfer targets; F6_CASES act on the one-Record certificate holding atlas Record 877, the Record
that contains F6.  The same corrupted files are fed to certify.py / nonempty.py (tests/negative_atlas.py) and to the
Julia checker (proof/independent/tests/negative.jl).

Why each 'reject' case must be rejected:
  centre_phase          one centre phase moved by 0.05 rad: the ball is no longer centred near a Hadamard
                        (||Phi(0)|| ~ 0.1 instead of ~1e-16), and its bins no longer exclude two further bases.
  radius_enlarged       R 0.05 -> 0.12 (the atlas chose 0.05 for this Record): Stage C cannot exclude two further
                        bases in the larger ball; both checkers' label graphs contain a candidate two-clique pair
                        (certify.py's from R = 0.08 on; the Julia checker's Stage C still passes at R = 0.1, and there
                        the boundary tree rejects the Record instead).
  label_radius          label radius 0.03 -> 0.2: the label balls get radius s >= 0.1, outside Lemmas 6.4/6.5.
  frame_not_tangent     column 0 of the tangent frame replaced by a cyclic shift of its entries: span(T) is no
                        longer the tangent space, so ||J T|| ~ 1 and the normal bound (sigma^2 - 2 L b > 0) fails.
  target_dropped        a boundary-transfer target that some boundary box needs (no other target covers that box).
  all_targets_dropped   no targets: the shell R - n <= ||T eta|| <= R + n meets the cube and nothing transfers it.
  target_sign_flipped   the sign of that target's alignment flipped (-1 -> +1, i.e. conjugated): the transfer
                        offset c = h(A P_s + 2 pi N - P_t) is no longer small.
  target_rowperm_swapped  two rows of that target's alignment swapped: likewise.
  target_radius_shrunk  that target's R 0.063 -> 0.03: the boxes it received need sup ||c + M eta|| + n < R_t.
  f6_record_moved       a phase of the F6 Record moved by 0.2 rad: F6 is no longer within R_t of the Record.
The 'accept' cases change the certificate but leave every hypothesis of the lemmas true (and the margins intact), so a
correct checker must still accept them:
  redundant_target_dropped  a target whose boxes other targets also cover.
  frame_columns_swapped the frame columns 0 and 1 exchanged: the same span(T) and N, the box tree permuted.
  label_radius_larger   label radius 0.03 -> 0.12: the clusters change, but every s is recomputed and stays < 0.1.
  label_radius_smaller  label radius 0.03 -> 0.02: likewise (any clustering is sound).
Not used as an 'accept' case: doubling one frame column.  span(T) is unchanged, but the boxes of the eta-cube become
twice as long in that direction and ||T|| doubles, so the (sound, conservative) boundary tree of certify.py no longer
closes above the minimum box side R/64.  That is a rejection of a valid but harder certificate, not an error.
"""
import copy

ESSENTIAL = 4      # targets[4] of closed Record 0 (sub-certificate Record 5): its boxes are covered by no other target
REDUNDANT = 6      # targets[6] (sub-certificate Record 7): removing it leaves the boundary tree closing


def _phi_add(rec, k, d):
    rec['phi'][k] = (float.fromhex(rec['phi'][k]) + d).hex()


def _set(field, value, rec=0):
    def f(c): c['records'][rec][field] = value
    return f


def _phase(rec, k, d):
    def f(c): _phi_add(c['records'][rec], k, d)
    return f


def _frame_shift(c):
    T = c['records'][0]['Tint']                     # 36 x 4 row-major
    col = [T[4 * e] for e in range(36)]
    for e in range(36): T[4 * e] = col[(e + 1) % 36]


def _frame_swap(c):
    T = c['records'][0]['Tint']
    for e in range(36): T[4 * e], T[4 * e + 1] = T[4 * e + 1], T[4 * e]


def _drop(j):
    def f(c): del c['records'][0]['targets'][j]
    return f


def _drop_all(c): c['records'][0]['targets'] = []


def _sign(c):
    t = c['records'][0]['targets'][ESSENTIAL]; t[1] = -t[1]


def _rowperm(c):
    rp = c['records'][0]['targets'][ESSENTIAL][3]; rp[0], rp[1] = rp[1], rp[0]


def _target_R(c):
    c['records'][c['records'][0]['targets'][ESSENTIAL][0]]['R'] = 0.03


CASES = [
    ('centre_phase',            'reject', 'boundary/Stage C', _phase(0, 7, 0.05)),
    ('radius_enlarged',         'reject', 'Stage C',          _set('R', 0.12)),
    ('label_radius',            'reject', 'Stage C',          _set('label_radius', 0.2)),
    ('frame_not_tangent',       'reject', 'normal bound',     _frame_shift),
    ('target_dropped',          'reject', 'boundary',         _drop(ESSENTIAL)),
    ('all_targets_dropped',     'reject', 'boundary',         _drop_all),
    ('target_sign_flipped',     'reject', 'boundary',         _sign),
    ('target_rowperm_swapped',  'reject', 'boundary',         _rowperm),
    ('target_radius_shrunk',    'reject', 'boundary',         _target_R),
    ('redundant_target_dropped', 'accept', 'boundary',        _drop(REDUNDANT)),
    ('frame_columns_swapped',   'accept', 'normal bound',     _frame_swap),
    ('label_radius_larger',     'accept', 'Stage C',          _set('label_radius', 0.12)),
    ('label_radius_smaller',    'accept', 'Stage C',          _set('label_radius', 0.02)),
]
F6_CASES = [
    ('f6_record_moved',         'reject', 'nonemptiness',     _phase(0, 7, 0.2)),
]


def corrupted(base, corrupt):
    c = copy.deepcopy(base); corrupt(c); return c
