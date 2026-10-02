"""Fail-closed interval/rational acceptance for one tangential tile."""
from interval import *
from charts import *
from corner import rbound, gap_bound, qjet
from geometry import PROFILES, rectangle


def accept_tile(profile, path, retained, return_internal=False):
    start = time.process_time()
    cfg = PROFILES[profile]
    hu, hv = cfg['hu'], cfg['hv']
    pl, ph, ql, qh = rectangle(profile, path)
    require(Q(3,180) <= pl < ph <= Q(4,180)
            and Q(1,180) <= ql < qh <= Q(2,180),
            'outside retained regional tube cell (180,3,1)')
    require(cfg['vector_cap'] < cfg['tube'] == Q(1,36),
            'unsupported regional tube radius')
    charts = make_charts(pl, ph, ql, qh)
    results, metrics = {}, {}
    for name, chart in zip(('F', 'A'), charts):
        P, Q2, A, radii = decode_proposal(chart, retained[name])
        eta, Kpred = chart_enclosures(chart, hu, hv, P, Q2, A)
        ok, K, combined, contraction, _ = correction_test(
            chart, eta, Kpred, A, radii)
        require(ok, name+' weighted contraction/self-map failed')
        require(contraction < 1, name+' strict contraction failed')
        results[name] = dict(P=P, Q2=Q2, A=A, rhos=radii)
        metrics[name] = dict(combined_upper=str(as_rational(combined)),
                             contraction_upper=str(as_rational(contraction)),
                             max_correction=str(max(radii)))
    f, a = charts
    res = results['F']
    M = phase_majorant(f, res['P'], res['Q2'], res['rhos'], hu, hv)
    phase, squared = phase_matrix_tests(M, cfg['phase_cap'], cfg['vector_cap'])
    R, *_ = rbound(f.H0[:3,:3], hu, hv)
    require(R.a > v(cfg['R_min']) and R.b < v(cfg['R_max']),
            'strict normal-path R bounds failed')
    res = results['A']
    leading = qjet(a, res, hu, hv, [3,4,5], True).z
    gap, _ = gap_bound(a, res, hu, hv)
    require(leading.a > 0, 'leading signed complementary square is not positive')
    require(gap.a > v(cfg['gap_min']), 'alternative-side larger-corner test failed')
    metrics.update(profile=profile, path=path,
                   rectangle=[str(x) for x in (pl,ph,ql,qh)],
                   phase_upper=str(phase), vector_squared_upper=str(squared),
                   R=bounds_text(R), leading_Q=bounds_text(leading),
                   signed_Q_gap=bounds_text(gap),
                   cpu_seconds=time.process_time()-start)
    if return_internal:
        return metrics, charts, results, M
    return metrics
