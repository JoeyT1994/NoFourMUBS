"""Frozen pattern pipeline plus algebraic localization after a failed test."""
from bootstrap import native_run as R
import localization

FROZEN_FINAL = R.final_pattern
FROZEN_JOINT = R.JB.refine
_last_joint = None


def capture_joint(model, prepared, bounds, clique):
    global _last_joint
    pp, bb, result = FROZEN_JOINT(model, prepared, bounds, clique)
    _last_joint = (model, pp, bb, tuple(clique))
    return pp, bb, result


def final_pattern(model, prepared, bounds, cover, clique, allow_fine=True):
    global _last_joint
    _last_joint = None
    result = FROZEN_FINAL(model, prepared, bounds, cover, clique, allow_fine=allow_fine)
    if result['status'] != 'NOT ESTABLISHED':
        return result
    if result.get('algebraic_localization_attempted'):
        return result
    result['algebraic_localization_attempted'] = True
    candidate = _last_joint
    if candidate is None or candidate[3] != tuple(clique):
        candidate = (model, prepared, bounds, tuple(clique))
    try:
        history = []
        for _ in range(6):
            cut = localization.localize(*candidate)
            if cut is None:
                return result
            if cut['status'] == 'EXCLUDED':
                return dict(**cut, previous_seed_localizations=history)
            history.append(cut['receipt'])
            local, pp, bb = cut['model'], cut['prepared'], cut['bounds']
            excluded = R.BE.exclude(local, pp, bb, clique)
            if excluded is not None:
                return dict(**excluded, seed_localizations=history)
            pp, bb, joint = FROZEN_JOINT(local, pp, bb, clique)
            excluded = R.BE.exclude(local, pp, bb, clique)
            if excluded is not None:
                return dict(**excluded, seed_localizations=history, localized_joint=joint)
            classified = R.MS.classify(local, pp, bb, clique, attempts=3)
            if classified['status'] == 'CERTIFIED':
                return dict(**classified, route='necessary seed cap then symmetry',
                            seed_localizations=history, localized_joint=joint)
            result['seed_localizations'] = history
            result['localized_symmetry'] = classified
            candidate = (local, pp, bb, tuple(clique))
    except (ArithmeticError, ValueError, ZeroDivisionError) as exc:
        result['seed_localization_inconclusive'] = str(exc)
    return result


def install():
    R.JB.refine = capture_joint
    R.final_pattern = final_pattern
