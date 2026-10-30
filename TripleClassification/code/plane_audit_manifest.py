"""Replay all-K cell trees as exact-cell discharges in an original-ball audit.

The manifest supplies proposals and file bindings, never accepted verdicts.
The selective auditor still checks the complete original covering geometry.
"""
from pathlib import Path
import plane_tree_certificate as Tree
from plane_column_certificate import digest,read_json,require


SOURCES=tuple('TripleClassification/code/'+name for name in (
    'plane_audit_manifest.py','plane_tree_certificate.py','plane_frontier_certificate.py',
    'plane_cell_certificate.py','plane_column_certificate.py','plane_joint_certificate.py',
    'anchored_column_certificate.py','stagec_guard.py'))
CERTIFIED={'CERTIFIED_EMPTY_DYADIC_CELL','CERTIFIED_CLASSIFIED_DYADIC_CELL'}


def source_hashes(root):
    return {name:digest(root/name) for name in SOURCES}


def cell_key(entry):
    level=entry['level'];cell=entry['cell']
    require(type(level) is int and 0<=level<=30 and isinstance(cell,list) and len(cell)==4 and
            all(type(c) is int and 0<=c<2**level for c in cell),'invalid audit cell')
    return level,tuple(cell)


class PlaneManifest:
    def __init__(self,path,ball,root):
        self.path=Path(path).resolve();root=Path(root).resolve()
        require(root==Path(Tree.__file__).resolve().parents[2],'plane checker root mismatch')
        doc=read_json(self.path)
        require(set(doc)=={'schema','ball','original_atlas_sha256','checker_sources_sha256','cells'} and
                doc['schema']=='tc-plane-audit-manifest-v1','invalid plane audit manifest')
        require(type(doc['ball']) is int and doc['ball']==ball,'plane manifest names another ball')
        require(doc['original_atlas_sha256']==Tree.F.PIN,'plane manifest names another atlas')
        require(doc['checker_sources_sha256']==source_hashes(root),'plane checker sources changed')
        require(isinstance(doc['cells'],list),'invalid plane cell list')
        self.ball=ball;self.entries={};self.replayed={}
        for item in doc['cells']:
            require(set(item)=={'entry','tree'},'invalid plane proof reference')
            entry_path=Tree.artifact(self.path.parent,item['entry'])
            tree_path=Tree.artifact(self.path.parent,item['tree'])
            entry=read_json(entry_path);tree=read_json(tree_path)
            require(type(entry['ball']) is int and entry['ball']==ball,'plane entry names another ball')
            key=cell_key(entry)
            require(key not in self.entries,'duplicate plane audit cell')
            require(tree.get('schema')=='tc-plane-tree-proposal-v1' and
                    tree.get('root_entry_sha256')==Tree.F.jsonsha(entry),'plane tree names another entry')
            self.entries[key]=(entry,tree_path,item)

    def require_covered(self,keys):
        require(set(self.entries)<=set(keys),'plane cell is absent from the supplied covering layers')

    def close(self,level,cell):
        key=level,tuple(cell)
        if key not in self.entries:return False
        if key in self.replayed:return True
        entry,path,item=self.entries[key]
        # Recheck bindings immediately before replay, including all terminal
        # input/proposal hashes within Tree.check. A saved receipt is not used.
        entry_path=Tree.artifact(self.path.parent,item['entry'])
        Tree.artifact(self.path.parent,item['tree'])
        require(read_json(entry_path)==entry,'plane entry changed during audit')
        result=Tree.check(entry,path)
        require(result.get('status') in CERTIFIED and result.get('ball')==self.ball and
                result.get('level')==level and result.get('cell')==list(cell) and
                result.get('original_atlas_sha256')==Tree.F.PIN,'plane replay did not certify this cell')
        self.replayed[key]=dict(level=level,cell=list(cell),status=result['status'],
            entry_sha256=item['entry']['sha256'],tree_sha256=item['tree']['sha256'],
            replay_sha256=Tree.F.jsonsha(result),counts=result['counts'])
        return True

    def report(self):
        return dict(manifest_sha256=digest(self.path),cells=[self.replayed[k] for k in sorted(self.replayed)],
                    unused_entries=len(self.entries)-len(self.replayed))
