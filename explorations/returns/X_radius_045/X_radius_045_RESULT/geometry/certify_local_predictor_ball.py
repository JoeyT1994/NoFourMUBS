if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

"""A local projected fixed point plus broad uniqueness, without a germ theorem."""
from pathlib import Path
from fractions import Fraction as F
import importlib.util,json
spec=importlib.util.spec_from_file_location('envelopes',Path(__file__).with_name('cubic_envelopes.py'));e=importlib.util.module_from_spec(spec);spec.loader.exec_module(e)
rho=F(3,5);base=e.envelope(rho);n=F(base['normal']);p=F(base['predictor_norm']);d=F(base['predictor_residual']);eps=F(7,100)
nloc=p+eps;Rloc=e.sqrtup(rho*rho+nloc*nloc)
assert nloc*nloc<=F(3,2)*rho*rho
rloc=e.sqrtup(rho*rho/3)+e.sqrtup(F(1,2))*nloc
Lloc=e.ceiling(e.B*rho+2*e.C*nloc+e.D3*rloc*Rloc)
assert Lloc<1 and d+Lloc*eps<eps
ractual=e.nmod.column(rho,n)
Luniq=e.ceiling(e.B*rho+2*e.C*max(n,nloc)+e.D3*max(ractual,rloc)*Rloc)
assert Luniq<1
refined=e.envelope(rho,starting_normal=nloc)
out={'status':'PASS','rho':str(rho),'initial_actual_normal':str(n),'predictor_norm':str(p),'residual':str(d),'ball_radius':str(eps),'ball_normal_cap':str(nloc),'local_Lipschitz':str(Lloc),'self_map_slack':str(eps-d-Lloc*eps),'comparison_uniqueness_Lipschitz':str(Luniq),'refined_envelope':refined,'scope':'Projected normal fixed point exists locally; uniqueness comparison identifies any actual Hadamard within the original phase ball. No claim that arbitrary projected solutions are Hadamard.'}
Path(__file__).with_name('local_predictor_ball_receipt.json').write_text(json.dumps(out,indent=2))
print('PASS local contraction',float(Lloc),'uniqueness',float(Luniq))
print({k:float(F(v)) for k,v in refined.items() if k in ('rho','normal','column','error_to_Q','error_to_Q_plus_P3')})
