"""Assign whole closed K bins to containing labels, with Arb inclusion checks."""
import numpy as np
from flint import arb
from load_native import C,NC


def assign_bins(cover,clique):
    """Assign every surviving closed bin to a containing valid label.

    The original clustering may have lost bins to certified exclusions.
    Any containing label suffices, provided every bin is retained once.
    Floating-point distances only propose labels. Arb checks inclusion.
    """
    assigned={};s=NC.stagec
    for color in clique:
        labels=list(map(int,np.flatnonzero(cover['valid_labels'] & (cover['label_colors']==color))))
        centers=s._toint(np.asarray([cover['label_centres'][i] for i in labels]))
        for label in labels:assigned[label]=[]
        seen=set()
        for index in cover['bin_indices'][color]:
            key=tuple(index)
            if key in seen:raise ArithmeticError('duplicate input bin')
            seen.add(key)
            delta=(np.asarray(index,dtype=np.int64)-centers+s.DEN//2)%s.DEN-s.DEN//2
            df=np.c_[np.zeros(len(delta)),delta]/s.DEN;df-=df.mean(1,keepdims=True)
            distances=np.linalg.norm(df,axis=1)
            for j in np.argsort(distances):
                label=labels[j]
                ds=[arb(0)]+[arb(int(v))/s.DEN-arb(float(c))
                             for v,c in zip(index,cover['label_centres'][label])]
                ds=[v-round(float(v.mid())) for v in ds]
                mean=sum(ds,arb(0))/6
                distance=C.norm([v-mean for v in ds])
                if distance+cover['bin_radius']/(2*arb.pi())<=arb(float(cover['label_radii'][label])):
                    assigned[label].append(list(index));break
            else:raise ArithmeticError('no valid label contains this whole closed bin')
    valid=np.zeros(len(cover['valid_labels']),bool)
    for label,indices in assigned.items():valid[label]=bool(indices)
    return assigned,dict(cover,valid_labels=valid)

