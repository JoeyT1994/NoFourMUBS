"""Finite positive-level barrier theorem on a verified box complex.

An empty critical-witness system is never accepted as a zero exclusion
without the whole relative boundary. Exact rational geometry removes
internal faces, includes exposed known-neighborhood walls, and identifies
explicitly periodic K coordinates. No Stage C zero-only pruning is used.
"""
from fractions import Fraction as Q
import numpy as np
from flint import arb, arb_mat, fmpq
from bootstrap import C
from intrinsic import critical_system
from intervals import endpoints


def rational(x):
    if isinstance(x, bool) or isinstance(x, float):
        raise ValueError('geometry and epsilon must be exact rationals, not floats')
    return Q(x)


def arbq(x):
    x = rational(x)
    return arb(fmpq(x.numerator, x.denominator))


def parse_box(box):
    result = tuple((rational(a), rational(b)) for a, b in box)
    if any(a > b for a, b in result):
        raise ValueError('reversed interval')
    return result


def interval_box(box):
    return [arbq(a).union(arbq(b)) for a, b in box]


def serial_box(box):
    return [[str(a), str(b)] for a, b in box]


def split(box, axis):
    if type(axis) is not int or not 0 <= axis < len(box) or not box[axis][0] < box[axis][1]:
        raise ValueError('invalid split axis')
    a, b = box[axis]; middle = (a+b)/2
    left, right = list(box), list(box)
    left[axis], right[axis] = (a, middle), (middle, b)
    return tuple(left), tuple(right)


def partition_leaves(root, partition):
    """A binary midpoint tree supplies exact, gap-free full-root coverage."""
    active, known = [], []
    def walk(box, node):
        if node == 'active':
            active.append(box)
        elif node == 'known':
            known.append(box)
        elif isinstance(node, dict) and set(node) == {'axis', 'left', 'right'}:
            left, right = split(box, node['axis'])
            walk(left, node['left']); walk(right, node['right'])
        else:
            raise ValueError('incomplete or malformed region partition')
    walk(root, partition)
    return active, known


def subtract_face(face, other, axis):
    """Closed pieces cover a face minus an overlapping open relative face."""
    if face[axis] != other[axis]:
        return [face]
    intersection = []
    for j, ((a, b), (c, d)) in enumerate(zip(face, other)):
        lo, hi = max(a, c), min(b, d)
        if j != axis and lo >= hi:
            return [face]
        intersection.append((lo, hi))
    remainder, current = [], list(face)
    for j in range(len(face)):
        if j == axis:
            continue
        lo, hi = intersection[j]
        a, b = current[j]
        if a < lo:
            piece = list(current); piece[j] = (a, lo)
            remainder.append(tuple(piece)); current[j] = (lo, b)
        a, b = current[j]
        if hi < b:
            piece = list(current); piece[j] = (hi, b)
            remainder.append(tuple(piece)); current[j] = (a, hi)
    return remainder


def exposed_faces(root, active, periodic=(), cap=100000):
    """All relative boundary facets, including ends of removed patches."""
    periodic = set(periodic)
    n = len(root)
    if any(type(a) is not int or not 4 <= a < n for a in periodic):
        raise ValueError('only K coordinates may be periodic')
    if any(root[a][1]-root[a][0] != 1 for a in periodic):
        raise ValueError('periodic coordinates are turns with a unit root period')
    result = []
    for box in active:
        for axis in range(n):
            for side in (0, 1):
                level = box[axis][side]
                face = list(box); face[axis] = (level, level)
                pieces = [tuple(face)]
                wrap = axis in periodic and level == root[axis][side]
                neighbor_level = root[axis][1-side] if wrap else level
                for other in active:
                    if other[axis][1-side] != neighbor_level:
                        continue
                    adjacent = list(other); adjacent[axis] = (level, level)
                    pieces = [part for p in pieces for part in subtract_face(p, tuple(adjacent), axis)]
                    if not pieces:
                        break
                    if len(pieces)+len(result) > cap:
                        raise ArithmeticError('boundary face cap reached')
                result.extend(pieces)
                if len(result) > cap:
                    raise ArithmeticError('boundary face cap reached')
    return sorted(set(result))


def boundary_test(oracle, box, epsilon):
    e, _, _ = oracle.energy_jet(interval_box(box))
    if e > arbq(epsilon):
        return dict(method='positive residual energy on entire face box', energy=endpoints(e))
    return None


def critical_test(oracle, box, epsilon, height, use_newton=True):
    xb = interval_box(box)
    values, jac = critical_system(oracle.energy_jet(xb), arbq(epsilon), [arbq(v) for v in height])
    for i in range(values.nrows()):
        if not values[i, 0].contains(0):
            return dict(method='critical component excludes zero', component=i,
                        interval=endpoints(values[i, 0]))
    if not use_newton:
        return None
    mid = [arbq((a+b)/2) for a, b in box]
    centre, jc = critical_system(oracle.energy_jet(mid), arbq(epsilon), [arbq(v) for v in height])
    try:
        proposal = np.linalg.pinv(C.Z.mid_np(jc))
        if not np.isfinite(proposal).all():
            return None
        pre = C.Z.mat(proposal)
        image = arb_mat([[v] for v in mid])-pre*centre + (C.Z.eye(len(box))-pre*jac)*arb_mat(
            [[xb[i]-mid[i]] for i in range(len(box))])
        for i in range(len(box)):
            if not xb[i].overlaps(image[i, 0]):
                return dict(method='critical mean-value exclusion', coordinate=i,
                            image=endpoints(image[i, 0]))
    except (ArithmeticError, ValueError, np.linalg.LinAlgError):
        pass
    return None


def cover(box, predicate, max_nodes=1023):
    """Every successful leaf is checked; a cap leaves an explicit open leaf."""
    remaining = [max_nodes]
    scales = [b-a for a, b in box]
    def walk(current):
        if remaining[0] <= 0:
            return dict(status='UNRESOLVED', reason='node cap'), False
        remaining[0] -= 1
        try:
            witness = predicate(current)
        except (ArithmeticError, ZeroDivisionError, ValueError) as exc:
            witness = None
            error = str(exc)
        else:
            error = 'interval test inconclusive'
        if witness is not None:
            return dict(status='CHECKED', witness=witness), True
        axes = [i for i in range(len(current)) if current[i][0] < current[i][1]]
        if not axes or remaining[0] <= 0:
            return dict(status='UNRESOLVED', reason=error), False
        axis = max(axes, key=lambda i:(current[i][1]-current[i][0])/scales[i])
        left, right = split(current, axis)
        l, ok_l = walk(left); r, ok_r = walk(right)
        return dict(axis=axis, left=l, right=r), ok_l and ok_r
    tree, ok = walk(box)
    return dict(tree=tree, complete=ok, nodes=max_nodes-remaining[0])


def replay_cover(box, tree, predicate):
    if set(tree) == {'axis', 'left', 'right'}:
        left, right = split(box, tree['axis'])
        return (replay_cover(left, tree['left'], predicate)
                and replay_cover(right, tree['right'], predicate))
    if tree.get('status') != 'CHECKED' or set(tree) != {'status', 'witness'}:
        return False
    # Stored status/margins are never proof inputs. Recompute the bound.
    return predicate(box) is not None


def validate_domain(oracle, root, epsilon, height, periodic):
    root = parse_box(root)
    if len(root) not in (4, 34) or any(not a < b for a, b in root):
        raise ValueError('a nondegenerate four- or 34-dimensional root is required')
    epsilon = rational(epsilon); height = tuple(rational(v) for v in height)
    if epsilon <= 0 or len(height) != 4 or height[0] == 0:
        raise ValueError('invalid level or linear seed height')
    if len(root) == 34:
        if not oracle.box_inside(interval_box(root[:4])):
            raise ValueError('root must lie in the certified chart domain')
        if periodic and not oracle.turns:
            raise ValueError('periodic K coordinates require a turns oracle')
    elif not all(a.contains(b) for a, b in zip(oracle.wbox, interval_box(root))):
        raise ValueError('root leaves the certified implicit-graph domain')
    return root, epsilon, height


def certify(oracle, root, epsilon, *, partition='active', known_checker=None,
            height=(1, 0, 0, 0), periodic=(), max_nodes=1023):
    root, epsilon, height = validate_domain(oracle, root, epsilon, height, periodic)
    active, known = partition_leaves(root, partition)
    known_results = []
    for box in known:
        result = None if known_checker is None else known_checker(interval_box(box))
        if result is None:
            return dict(status='NOT ESTABLISHED', reason='removed region lacks a recomputed known-type proof')
        known_results.append(result)
    faces = exposed_faces(root, active, periodic)
    boundary = [cover(face, lambda box: boundary_test(oracle, box, epsilon), max_nodes)
                for face in faces]
    if all(v['complete'] for v in boundary):
        interior = [cover(box, lambda cell: critical_test(oracle, cell, epsilon, height), max_nodes)
                    for box in active]
    else:
        interior = []
    ok = all(v['complete'] for v in boundary) and len(interior) == len(active) and all(v['complete'] for v in interior)
    return dict(schema='tc-intrinsic-barrier-v1',
                status='CERTIFIED DOMAIN ONLY' if ok else 'NOT ESTABLISHED',
                claim=('Every zero in this explicitly bounded domain lies in a recomputed known region.' if ok else None),
                root=serial_box(root), epsilon=str(epsilon), height=list(map(str, height)),
                periodic_axes=list(periodic), partition=partition,
                boundary_faces=[serial_box(face) for face in faces], boundary=boundary,
                active_boxes=[serial_box(box) for box in active], interior=interior,
                known_regions=known_results, max_nodes=max_nodes,
                global_atlas_classification=False)


def replay(oracle, saved, known_checker=None):
    root, epsilon, height = validate_domain(oracle, saved['root'], saved['epsilon'],
                                          saved['height'], saved['periodic_axes'])
    active, known = partition_leaves(root, saved['partition'])
    if known and known_checker is None:
        return False
    if any(known_checker(interval_box(box)) is None for box in known):
        return False
    faces = exposed_faces(root, active, saved['periodic_axes'])
    if (saved['boundary_faces'] != [serial_box(face) for face in faces]
            or saved['active_boxes'] != [serial_box(box) for box in active]
            or len(saved['boundary']) != len(faces) or len(saved['interior']) != len(active)):
        return False
    return (all(replay_cover(face, value['tree'], lambda box: boundary_test(oracle, box, epsilon))
                for face, value in zip(faces, saved['boundary']))
            and all(replay_cover(box, value['tree'], lambda cell: critical_test(oracle, cell, epsilon, height))
                    for box, value in zip(active, saved['interior'])))

