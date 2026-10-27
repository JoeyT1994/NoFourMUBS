"""Complete X-ball boundary certification by spherical caps.

Certificate scalars are exact integers or hexadecimal binary rationals.
Arb checks every transfer; cap_coverage checks the entire sphere in exact
integer arithmetic.  Stored numerical diagnostics are never trusted.
The source whole-ball model is rebuilt unless an already-verified model is
provided by the production C1e path.
"""
import time
from flint import ctx
import seedcert as S
import edge_wholeball as EW
import caps as CAPS
import cap_coverage as COV


def source_record(source):
    """Accept a raw edge record or the parsed production EdgeBall.

    Parsing an EdgeBall has already established that these entries denote
    finite exact binary64 numbers.  Re-encoding them as hex does not change
    their meaning.  No stored enclosure, numerical jet or verdict is used.
    """
    if isinstance(source, dict):
        return source
    return dict(chart='F6-012', q0=[float(x).hex() for x in source.q0],
                Mth=[float(x).hex() for x in source.Mth.ravel()],
                r=float(source.r).hex(),
                P=[float(x).hex() for x in source.P.ravel()],
                U=[float(x).hex() for x in source.U.ravel()])


def check_edge_cap(model, seeds, groups, cap, *, transfer_cache=None, index=0):
    """One production cap check, shared by serial and parallel sphere replay."""
    S.need(isinstance(cap, dict), 'edge caps: malformed cap %d' % index)
    gi = cap.get('group_index')
    S.need(type(gi) is int and 0 <= gi < len(groups),
           'edge caps: cap %d has no such transfer group' % index)
    group = groups[gi]
    S.need(isinstance(group, dict) and group.get('kind') == 'T1',
           'edge caps: cap %d requires a T1 descriptor' % index)
    S.ints(group.get('rows'), 3, 'edge cap rows')
    S.ints(group.get('cols'), 3, 'edge cap cols')
    target = group.get('target')
    S.need(type(target) is int and 0 <= target < len(seeds),
           'edge caps: cap %d target out of range' % index)
    target_ball = seeds[target]
    S.need(target_ball is not None, 'edge caps: cap %d has a malformed target' % index)
    transfers = {} if transfer_cache is None else transfer_cache
    if gi not in transfers:
        try:
            transfers[gi] = EW.EdgeTransfer(model, target_ball, group)
        except (ArithmeticError, ValueError, KeyError, TypeError, OverflowError, ZeroDivisionError) as ex:
            raise S.CertError('edge caps: transfer %d: %s' % (gi, ex))
    tr = transfers[gi]
    S.need(tr.model is model and tr.group is group and tr.target is target_ball,
           'edge caps: transfer cache is bound to different data')
    try:
        result = CAPS.check_cap(model, tr, cap)
    except (ArithmeticError, ValueError, KeyError, TypeError, OverflowError, ZeroDivisionError) as ex:
        raise S.CertError('edge caps: cap %d: %s' % (index, ex))
    S.need(result.get('ok') is True,
           'edge caps: cap %d not certified (%s)' % (index, result.get('reason')))
    return result


def check_edge_caps(source, seeds, groups, certificate, *, model=None,
                    precision=224, return_details=False):
    """Certify every cap and its exact S^3 coverage; raise CertError on failure.

    source: raw F6-012 edge record or parsed EdgeBall.
    seeds: the original ordered list of parsed seedcert.Ball targets.
    groups: the original ordered edge T1 descriptors (boxes are ignored).
    certificate: additive edge['caps'] object with `caps` and `coverage`.

    For an edge weighted_target=true selects the augmented output-weighted
    normal error and Hessian.  False retains the valid unweighted estimates,
    preserving the existing flag's meaning.  All local modes always use the
    augmented edge centre jet.
    """
    started = time.perf_counter()
    S.need(isinstance(certificate, dict), 'edge caps: malformed certificate')
    cap_list = certificate.get('caps')
    S.need(isinstance(cap_list, list) and bool(cap_list), 'edge caps: empty or malformed cap list')
    S.need(isinstance(groups, list), 'edge caps: malformed transfer groups')
    old = ctx.prec
    ctx.prec = precision
    try:
        try:
            raw_source = source_record(source)
            signature = EW.edge_source_signature(raw_source)
        except (ArithmeticError, ValueError, KeyError, TypeError, OverflowError) as ex:
            raise S.CertError('edge caps: source header: %s' % ex)
        if model is None:
            try:
                model = EW.edge_model(raw_source, prec=precision)
            except (ArithmeticError, ValueError, KeyError, ZeroDivisionError) as ex:
                raise S.CertError('edge caps: source model: %s' % ex)
        S.need(model.get('edge_chart', False), 'edge caps: expected augmented edge model')
        S.need(model.get('summary', {}).get('ok') is True,
               'edge caps: the whole-ball contraction is not certified')
        S.need(model.get('edge_source_signature') == signature,
               'edge caps: cached model belongs to a different source header')
        transfers, details = {}, []
        transfer_started = time.perf_counter()
        for k, cap in enumerate(cap_list):
            result = check_edge_cap(model, seeds, groups, cap, transfer_cache=transfers, index=k)
            details.append(dict(index=k, group_index=cap['group_index'], **result))
        transfer_seconds = time.perf_counter() - transfer_started
        coverage_started = time.perf_counter()
        try:
            coverage = COV.verify_coverage(
                [{'v': cap['v'], 'h': cap['h']} for cap in cap_list],
                certificate.get('coverage') or {})
        except (ArithmeticError, ValueError, KeyError, TypeError, IndexError) as ex:
            raise S.CertError('edge caps: coverage: %s' % ex)
        S.need(bool(coverage.get('passed')) and bool(coverage.get('covers')),
               'edge caps: sphere coverage not certified (%s)' % coverage.get('reason', coverage))
        coverage_seconds = time.perf_counter() - coverage_started
        certificate_coverage = certificate.get('coverage') or {}
        out = dict(status='CERTIFIED', caps=len(cap_list), cap_groups=len(transfers),
                   coverage_facets=len(certificate_coverage.get('facets',
                                       certificate_coverage.get('simplices', []))),
                   target_margin_lower=min(d['target_margin_lower'] for d in details),
                   orientation_margin_lower=min(x for d in details for x in d['orientation_margins_lower']),
                   transfer_seconds=transfer_seconds, coverage_seconds=coverage_seconds,
                   seconds=time.perf_counter() - started, coverage=coverage,
                   source_contraction=model['summary'])
        if return_details:
            out['cap_results'] = details
        return out
    finally:
        ctx.prec = old
