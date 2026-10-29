"""Tight local enclosures of a dyadic box intersected with the original ball."""
from flint import arb,arb_mat
from load_native import C,NC
from intervals import energy
import patches as P
import seed_partition as SP


def geometry(box,r):
    SP.validate_box(box);level,*ids=box;den=2**level
    lo=[r*(2*i-den)/den for i in ids];hi=[r*(2*i+2-den)/den for i in ids]
    near=arb_mat([[lo[j] if 2*ids[j]>=den else hi[j] if 2*ids[j]+2<=den else arb(0)] for j in range(4)])
    anchor=P.anchor_for_box(box,r)
    # The nearest point is in the closed ball for every non-outside box.
    # All candidates are convex combinations of verified points in it.
    candidates=[anchor,near,(anchor+near)/2,anchor/2]
    best=None
    for index,c in enumerate(candidates):
        for numerator in range(9):
            lam=arb(numerator)/8
            squared=lam*r*r+energy(c.entries())
            for j in range(4):
                values=[(1-lam)*v*v-2*c[j,0]*v for v in (lo[j],hi[j])]
                squared+=arb(max(C.Z.upper(v) for v in values))
            upper=max(0.,C.Z.upper(squared))
            if best is None or upper<best[0]:best=(upper,c,index,numerator)
    upper,c,index,numerator=best
    return c,arb(upper).sqrt().upper(),dict(center_proposal=index,sphere_multiplier_eighths=numerator,
        squared_radius_upper_hex=upper.hex(),domain='closed dyadic box intersected with original closed ball')


def local_model(original,box):
    if SP.outside(box):raise ValueError('outside box has no local model')
    c,rho,geometry_info=geometry(box,original['r'])
    qc,dc,eta=P.centre_jet(original,c)
    model=dict(Q0=qc,U=dc,H2=original['H2'],X=original['X'],r=rho,
        tau=(original['Z2']*rho*rho/2).upper())
    args,enclosure=NC.model_stage_c_args(original['ball'],model)
    return model,c,args,dict(local_radius=str(rho),centre_root_error=str(eta),
        chart_extension_assumed=False,enclosure=enclosure,intersection_geometry=geometry_info)
