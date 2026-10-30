"""Binding and exact-cell integration tests; mathematical leaves are tested separately."""
import contextlib,copy,io,itertools,json,sys,tempfile,unittest
from pathlib import Path
from unittest.mock import patch
import plane_audit_manifest as M


class ManifestTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        self.folder=Path(self.tmp.name);self.root=Path(M.__file__).resolve().parents[2]
        self.entry=dict(ball=825,level=2,cell=[1,1,1,1],subatlas='test',sub=0,record_sha256=None)
        self.write('entry.json',self.entry)
        self.tree=dict(schema='tc-plane-tree-proposal-v1',root_entry_sha256=M.Tree.F.jsonsha(self.entry),tree={'children':[]})
        self.write('tree.json',self.tree)
        self.doc=dict(schema='tc-plane-audit-manifest-v1',ball=825,original_atlas_sha256=M.Tree.F.PIN,
            checker_sources_sha256=M.source_hashes(self.root),cells=[dict(entry=self.spec('entry.json'),tree=self.spec('tree.json'))])
        self.path=self.folder/'manifest.json'
        self.result=dict(status='CERTIFIED_CLASSIFIED_DYADIC_CELL',ball=825,level=2,cell=[1]*4,
            original_atlas_sha256=M.Tree.F.PIN,counts=dict(nodes=1,outside=0,certified=1))

    def write(self,name,data):(self.folder/name).write_text(json.dumps(data))
    def spec(self,name):return dict(path=name,sha256=M.digest(self.folder/name))
    def load(self,doc=None):
        self.path.write_text(json.dumps(self.doc if doc is None else doc))
        return M.PlaneManifest(self.path,825,self.root)

    def test_exact_cell_and_replay_are_required(self):
        manifest=self.load();manifest.require_covered([(2,(1,1,1,1))])
        with patch.object(M.Tree,'check',return_value=self.result) as replay:
            self.assertFalse(manifest.close(2,[1,1,1,2]));self.assertFalse(manifest.close(3,[1]*4))
            self.assertTrue(manifest.close(2,[1]*4));self.assertTrue(manifest.close(2,[1]*4))
            replay.assert_called_once()
        self.assertEqual(manifest.report()['cells'][0]['status'],'CERTIFIED_CLASSIFIED_DYADIC_CELL')

    def test_wrong_ball_atlas_or_sources_rejected(self):
        for key,value in [('ball',826),('ball',True),('original_atlas_sha256','0'*64),('checker_sources_sha256',{})]:
            doc=copy.deepcopy(self.doc);doc[key]=value
            with self.subTest(key=key,value=value),self.assertRaises(ValueError):self.load(doc)

    def test_duplicate_and_foreign_cells_rejected(self):
        doc=copy.deepcopy(self.doc);doc['cells']*=2
        with self.assertRaisesRegex(ValueError,'duplicate'):self.load(doc)
        with self.assertRaisesRegex(ValueError,'absent'):self.load().require_covered([(2,(0,0,0,0))])

    def test_missing_or_changed_proof_files_rejected(self):
        self.write('tree.json',dict(self.tree,tree={}))
        with self.assertRaisesRegex(ValueError,'changed'):self.load()

    def test_tree_bound_to_another_entry_rejected(self):
        self.write('tree.json',dict(self.tree,root_entry_sha256='0'*64));self.doc['cells'][0]['tree']=self.spec('tree.json')
        with self.assertRaisesRegex(ValueError,'another entry'):self.load()

    def test_file_changed_after_loading_rejected(self):
        manifest=self.load();self.write('entry.json',dict(self.entry,cell=[2]*4))
        with self.assertRaisesRegex(ValueError,'changed'):manifest.close(2,[1]*4)

    def test_incomplete_partition_rejected_by_actual_checker(self):
        with self.assertRaisesRegex(ValueError,'incomplete 4D partition'):self.load().close(2,[1]*4)

    def test_bad_replay_cannot_close_cell(self):
        for change in (dict(status='NOT_ESTABLISHED'),dict(ball=826),dict(cell=[2]*4),dict(original_atlas_sha256='0'*64)):
            with self.subTest(change=change),patch.object(M.Tree,'check',return_value=dict(self.result,**change)):
                with self.assertRaises(ValueError):self.load().close(2,[1]*4)

    def test_failed_replay_propagates(self):
        with patch.object(M.Tree,'check',side_effect=ArithmeticError('missing all-K proof')):
            with self.assertRaises(ArithmeticError):self.load().close(2,[1]*4)

    def test_bad_geometry_rejected(self):
        for level,cell in ((-1,[1]*4),(True,[1]*4),(2,[4]*4),(2,[1.]*4),(2,[1]*3)):
            with self.subTest(level=level,cell=cell),self.assertRaises(ValueError):M.cell_key(dict(level=level,cell=cell))

    def test_selective_audit_uses_replayed_exact_cell_and_preserves_holes(self):
        # Isolate the covering-loop integration. Native arithmetic and geometry
        # have their own tests; their accepted rows are fixtures in this test.
        import audit_select as audit
        original=dict(r=float(.1).hex())
        cells=list(itertools.product(range(4),repeat=4));target=cells.index((1,1,1,1))
        doc=dict(info=dict(split=dict(cover=[dict(cell=list(c),sub=i) for i,c in enumerate(cells)])),seeds=[original]*len(cells))
        rows={i:dict(binding='fixture',seed_sha256=audit.jsonsha(original),radius_hex=original['r'],
                    status='NOT ESTABLISHED' if i==target else 'CERTIFIED EMPTY',c1=dict(ok=True),
                    normal_form=dict(status='CERTIFIED'),patterns=[],patterns_after_column_filter=0) for i in range(len(cells))}
        layer=self.folder/'layer.json.gz';layer.write_bytes(b'fixture')
        args=['audit_select.py','--root',str(self.root),'--index','825','--layers',str(layer),'--scripts',str(layer)]
        self.load()
        def load(path):return dict(seeds=[original]*826) if Path(path).name=='seed_atlas_certificate.json.gz' else doc
        with patch.object(audit,'load',side_effect=load),patch.object(audit,'rows',return_value=rows),\
             patch.object(audit,'bound',return_value=dict(id='fixture')),\
             patch.object(audit,'geometry',return_value=doc['seeds']):
            with patch.object(sys,'argv',args),self.assertRaisesRegex(ValueError,'unresolved cell'):
                audit.main()
            output=io.StringIO()
            with patch.object(sys,'argv',args+['--plane',str(self.path)]),\
                 patch.object(M.Tree,'check',return_value=self.result),contextlib.redirect_stdout(output):
                audit.main()
            result=json.loads(output.getvalue());self.assertEqual(result['status'],'GEOMETRY_AND_RECEIPTS_VERIFIED')
            self.assertEqual(result['layers'][0]['still_open'],0)
            self.assertEqual(result['plane']['cells'][0]['cell'],[1]*4)
            # Reopening a second cell must fail even with a valid first proof.
            rows[target+1]['status']='NOT ESTABLISHED'
            with patch.object(sys,'argv',args+['--plane',str(self.path)]),\
                 patch.object(M.Tree,'check',return_value=self.result),self.assertRaisesRegex(ValueError,'unresolved cell'):
                audit.main()
            # A score receipt may cover only part of this row. The missing
            # pattern has no score bound: it must remain open, not raise an
            # integer KeyError or be silently discharged.
            rows[target+1]['status']='CERTIFIED EMPTY'
            rows[target]['patterns']=[dict(number=n,status='NOT ESTABLISHED') for n in range(2)]
            rows[target]['patterns_after_column_filter']=2
            gamma=dict(subatlas_sha256=audit.sha(layer),sub=target,gamma_sha256='g'*64,
                       seed_sha256=audit.jsonsha(original),receipt_binding='fixture',closed_by_certifier=[],
                       patterns_total=2,patterns=[dict(pattern=0,g_up_K_hex=float(.1).hex())])
            gp=self.folder/'gamma.jsonl';gp.write_text(json.dumps(gamma)+'\n')
            ga=args+['--gamma',str(gp),'--gamma-sha','g'*64,'--gamma-rules','fourier']
            with patch.object(sys,'argv',ga),self.assertRaisesRegex(ValueError,'unresolved cell'):
                audit.main()
            gamma['patterns'].append(dict(pattern=1,g_up_K_hex=float(.1).hex()))
            gp.write_text(json.dumps(gamma)+'\n');output=io.StringIO()
            with patch.object(sys,'argv',ga),contextlib.redirect_stdout(output):audit.main()
            result=json.loads(output.getvalue());self.assertEqual(result['gamma']['fourier'],1)
            gamma['patterns'][1]['pattern']=2;gp.write_text(json.dumps(gamma)+'\n')
            with patch.object(sys,'argv',ga),self.assertRaisesRegex(ValueError,'unresolved cell'):
                audit.main()


if __name__=='__main__':unittest.main()
