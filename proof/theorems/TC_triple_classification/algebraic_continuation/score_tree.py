"""Exhaustive binary partitions of K labels at an unchanged H radius.

The output proves score inequalities, conditional on the input cover.
It does not supply the separate Fourier-neighbourhood theorem.
"""
import time
import numpy as np
from flint import arb,arb_mat
from load_native import C,NC,S
import unitary_score as U
import constraint_score as CS
import label_partition as LP


def prune(groups,graph):
    groups={c:set(v) for c,v in groups.items()}
    while all(groups.values()):
        nxt={c:{v for v in ids if all(c==d or any(graph[v,w] for w in other)
                                    for d,other in groups.items())} for c,ids in groups.items()}
        if nxt==groups:break
        groups=nxt
    return {c:tuple(sorted(v)) for c,v in groups.items()}


def split(groups,color,left):
    left=tuple(left);parent=groups[color]
    if len(left)!=len(set(left)) or not set(left)<set(parent) or not left:
        raise ArithmeticError('children must be a nonempty proper partition')
    right=tuple(v for v in parent if v not in set(left))
    return dict(groups)|{color:tuple(sorted(left))},dict(groups)|{color:right}


class Tree:
    def __init__(self,model,cover,clique):
        self.model=model;self.clique=tuple(clique);self.context=U.prepare_h(model)
        self.assignment,self.cover=LP.assign_bins(cover,clique)
        self.groups={c:tuple(map(int,np.flatnonzero(self.cover['valid_labels'] &
                       (self.cover['label_colors']==c)))) for c in clique}
        self.cache={};self.nodes=0;self.started=time.monotonic();self.events=[]

    def column(self,color,labels):
        key=(color,tuple(labels))
        if key in self.cache:return self.cache[key]
        indices=[index for label in labels for index in self.assignment[label]]
        if not indices:raise ArithmeticError('empty group')
        data=np.asarray(indices,dtype=np.int64);anchor=data[0];den=NC.stagec.DEN
        delta=(data-anchor+den//2)%den-den//2
        proposal=np.r_[0,(anchor+delta.mean(axis=0))*2*np.pi/den]
        v=C.project6()*C.Z.mat(proposal[:,None]);radius=arb(0)
        for index in indices:
            phase=[arb(0)]+[2*arb.pi()*int(i)/den for i in index]
            ds=[phase[i]-v[i,0] for i in range(6)]
            ds=[z-2*round(float(z/(2*arb.pi())))*arb.pi() for z in ds]
            mean=sum(ds,arb(0))/6
            radius=max(radius,U.up(C.norm([z-mean for z in ds])+self.cover['bin_radius']))
        prepared=dict(v0=v,T=arb_mat(6,4),Tnorm=arb(0),model=self.model)
        bound=dict(phase_radius=radius,epsilon=radius,initial_radius=radius)
        self.cache[key]=prepared,bound
        return prepared,bound

    def bounds(self,groups):
        pp={};bb={}
        for c in self.clique:pp[c],bb[c]=self.column(c,groups[c])
        return pp,bb

    def evaluate(self,groups,method=None):
        pp,bb=self.bounds(groups)
        if method is None or method=='basis':
            proof=S.FROZEN_EXCLUDE(self.model,pp,bb,self.clique)
            if proof is not None:return dict(status='BASIS EMPTY',method='basis',proof=proof)
            if method=='basis':return dict(status='NOT ESTABLISHED',method='basis')
        methods=['unitary',.01,.1] if method is None else [method]
        best=None
        for choice in methods:
            if choice not in ('unitary',.01,.1):raise ValueError('unknown score method')
            result=(U.pattern(self.context,pp,bb,self.clique) if choice=='unitary' else
                    CS.pattern(self.context,pp,bb,self.clique,rcond=choice))
            if result['incompatible']:return dict(status='RADIAL EMPTY',method=choice)
            value=min(result['g_up_K'],result['g_up_L'] if result['g_up_L'] is not None else arb(10))
            record=dict(status='FOURIER SCORE' if result['fourier_threshold_met'] else 'NOT ESTABLISHED',
                method=choice,g_up_K_hex=float(result['g_up_K']).hex(),
                g_up_L_hex=None if result['g_up_L'] is None else float(result['g_up_L']).hex())
            if best is None or value<best[0]:best=value,record
            if record['status']=='FOURIER SCORE':break
        return best[1]

    def choose_split(self,groups):
        _,bb=self.bounds(groups)
        candidates=[c for c in self.clique if len(groups[c])>1]
        if not candidates:return None
        color=max(candidates,key=lambda c:(float(bb[c]['phase_radius']),len(groups[c]),-c))
        labels=groups[color];centers=np.asarray([self.cover['label_centres'][i] for i in labels])
        delta=(centers-centers[0]+.5)%1-.5
        df=np.c_[np.zeros(len(delta)),delta];df-=df.mean(1,keepdims=True)
        _,_,vh=np.linalg.svd(df-df.mean(0),full_matrices=False)
        order=np.argsort(df@vh[0],kind='stable')
        left=sorted(labels[i] for i in order[:len(order)//2])
        return color,left

    def produce(self,node_cap=256,seconds=1200,progress=None):
        if type(node_cap)is not int or node_cap<1 or not 0<seconds<86400:
            raise ValueError('invalid tree budget')
        def visit(groups):
            groups=prune(groups,self.cover['label_graph'])
            if not all(groups.values()):return dict(status='GRAPH EMPTY')
            if self.nodes>=node_cap or time.monotonic()-self.started>seconds:
                return dict(status='NOT ESTABLISHED',reason='budget')
            self.nodes+=1;result=self.evaluate(groups)
            event=dict(node=self.nodes,status=result['status'],labels=[len(groups[c]) for c in self.clique],
                       g_up_L_hex=result.get('g_up_L_hex'),seconds=time.monotonic()-self.started)
            if progress:progress(event)
            if result['status']!='NOT ESTABLISHED':return result
            choice=self.choose_split(groups)
            if choice is None:return dict(result,reason='single label per color remains unresolved')
            color,left=choice;g1,g2=split(groups,color,left)
            return dict(status='SPLIT',color=int(color),left_labels=left,children=[visit(g1),visit(g2)])
        root=visit(self.groups)
        return dict(tree=root,nodes=self.nodes,seconds=time.monotonic()-self.started,
                    complete=self.complete(root),classification_claim=False)

    @staticmethod
    def complete(node):
        if node['status']=='SPLIT':return len(node['children'])==2 and all(Tree.complete(x) for x in node['children'])
        return node['status'] in ('GRAPH EMPTY','RADIAL EMPTY','BASIS EMPTY','FOURIER SCORE')

    def domain_at(self,saved,path):
        if type(path)is not str or len(path)>128 or any(c not in '01' for c in path):
            raise ValueError('invalid branch path')
        groups=self.groups;node=saved['tree']
        for bit in path:
            groups=prune(groups,self.cover['label_graph'])
            if node['status']!='SPLIT' or len(node['children'])!=2:
                raise ArithmeticError('path does not follow two-child splits')
            groups=split(groups,node['color'],node['left_labels'])[int(bit)]
            node=node['children'][int(bit)]
        return prune(groups,self.cover['label_graph'])

    def replay(self,saved):
        def visit(groups,node):
            groups=prune(groups,self.cover['label_graph']);status=node['status']
            if status=='GRAPH EMPTY':
                if all(groups.values()):raise ArithmeticError('false graph exclusion')
                return
            if not all(groups.values()):raise ArithmeticError('noncanonical empty branch')
            if status=='SPLIT':
                if len(node['children'])!=2:raise ArithmeticError('missing child')
                g1,g2=split(groups,node['color'],node['left_labels'])
                visit(g1,node['children'][0]);visit(g2,node['children'][1]);return
            if status not in ('RADIAL EMPTY','BASIS EMPTY','FOURIER SCORE'):raise ArithmeticError('unresolved leaf')
            result=self.evaluate(groups,method=node['method'])
            if result['status']!=status:raise ArithmeticError('leaf bound failed on replay')
        if not saved.get('complete'):raise ArithmeticError('incomplete tree')
        visit(self.groups,saved['tree']);return True
