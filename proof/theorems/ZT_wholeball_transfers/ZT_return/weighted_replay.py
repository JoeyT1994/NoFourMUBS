"""Same replay CLI as zt_patch.py, with the output inside the normal bounds.

Examples:
 python weighted_replay.py context/sample_certificate.json.gz --seed 6 \
   --groups counts/weighted_results/seed_6_patches.json --output replay.json
 python weighted_replay.py context/sample_certificate.json.gz --seed 8 \
   --groups counts/weighted_results/seed_8_hybrid.json --fallback-local \
   --output replay.json

Orientation tests retain the already rigorous directional-gradient bounds.
The refined target bounds are never worse than the simpler ones.
"""
from copy import copy
import zt_patch as P
from seed_weighted import SeedWeighted,json_bounds

BaseTransfer=P.Transfer

class WeightedTransfer(BaseTransfer):
    def __init__(self,model,target,group):
        super().__init__(model,target,group)
        self.weighted=None
        if not self.linear:
            if model.get('edge_chart',False):
                raise ValueError('use edge/edge_replay.py for the augmented edge chart')
            if '_weighted_cache' not in model:
                model['_weighted_cache']=SeedWeighted(model)
            self.weighted=model['_weighted_cache'].bounds(self.A)

    def check(self,box,use_sphere=True):
        if self.linear:return BaseTransfer.check(self,box,use_sphere)
        # The base polynomial checker uses xnorm only in its target tail
        # xnorm*tau. Replace that tail by the independently proved value.
        local=copy(self)
        local.xnorm=self.weighted['normal_value']/self.model['tau']
        out=BaseTransfer.check(local,box,use_sphere)
        out['weighting']='projected residual'
        return out

    def check_local(self,box,use_sphere=True,jet=None):
        if self.linear:return BaseTransfer.check(self,box,use_sphere)
        # Here xnorm occurs only in the target Hessian xnorm*Z2.
        local=copy(self)
        local.xnorm=self.weighted['normal_hessian']/self.model['Z2']
        out=BaseTransfer.check_local(local,box,use_sphere,jet)
        out['weighting']='projected residual'
        return out

if __name__=='__main__':
    P.Transfer=WeightedTransfer
    P.main()
