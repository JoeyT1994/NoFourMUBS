#!/usr/bin/env python3
"""Check the published inventory; this does not rerun numerical certificates."""
from collections import Counter
from pathlib import Path
import argparse
import gzip
import hashlib
import json

HERE = Path(__file__).resolve().parent
SETTLED = {1, 2, 3, 4, 5, 8, 9}


def json_digest(value):
    raw = json.dumps(value, sort_keys=True, separators=(',', ':'), allow_nan=False).encode()
    return hashlib.sha256(raw).hexdigest()


def verify_outer():
    """Validate an optional exact-ID first-pass status projection, not its proof."""
    receipt_path = HERE / 'receipts/outside01_STATUS_PROJECTION.json'
    if not receipt_path.exists():
        return {}, None
    receipt = json.loads(receipt_path.read_text())
    body = dict(receipt)
    if body.pop('receipt_sha256') != json_digest(body):
        raise ValueError('Outer projection receipt self-binding differs')
    if (receipt['id_namespace'] != 'export2_serial'
            or receipt['source_input_sha256'] != '7d42c2093d8da4eb3cd31ee089ac1b699700329525e8d5b9872f356201226c8f'
            or receipt['campaign_result_chain_sha256'] != '1415f742412ff084b166ea097a2fa465cad63bbb63c7d2798bbb0c30be151999'
            or receipt['source_binding_chain_sha256'] != 'c1a90788f99d634a7f240cb0bcfab5e26593cca43dae9ae94d71212578327253'
            or receipt['unique_ids'] != 307346
            or receipt['counts'] != {'PASS': 306257, 'UNRESOLVED': 1089}
            or receipt['complete_global_cover'] is not False
            or receipt['closure_credit'] is not False
            or receipt['physical_lean_admissions'] != 0
            or receipt['status_projection_only'] is not True
            or receipt['adaptive_queue_preparation_complete'] is not False
            or receipt['adaptive_queue_outputs_used_for_closure'] is not False):
        raise ValueError('Outer projection source/scope differs')
    path = HERE / 'data/outside01_STATUS_BY_ID.jsonl.gz'
    with path.open('rb') as handle:
        if hashlib.file_digest(handle, 'sha256').hexdigest() != receipt['mapping_file_sha256']:
            raise ValueError('Outer projection file hash differs')
    mapping = {}
    counts = Counter()
    chain = hashlib.sha256()
    size = 0
    with gzip.open(path, 'rb') as handle:
        for line in handle:
            row = json.loads(line)
            identifier, status = row['id'], row['status']
            if (set(row) != {'id', 'status'} or type(identifier) is not int
                    or identifier in mapping or status not in {'PASS', 'UNRESOLVED'}):
                raise ValueError('Invalid or duplicated outer ID/status')
            mapping[identifier] = status
            counts[status] += 1
            chain.update(line)
            size += len(line)
    if (len(mapping) != receipt['unique_ids'] or dict(counts) != receipt['counts']
            or min(mapping) != receipt['minimum_id'] or max(mapping) != receipt['maximum_id']
            or chain.hexdigest() != receipt['projection_chain_sha256']
            or size != receipt['mapping_uncompressed_bytes']):
        raise ValueError('Outer projection count/chain differs')
    unresolved = json.loads((HERE / 'data/outside01_UNRESOLVED_IDS.json').read_text())
    body = dict(unresolved)
    if body.pop('receipt_sha256') != json_digest(body):
        raise ValueError('Unresolved ID receipt self-binding differs')
    if (unresolved['ids'] != sorted(i for i, s in mapping.items() if s == 'UNRESOLVED')
            or unresolved['records'] != 1089
            or unresolved['id_namespace'] != 'export2_serial'
            or unresolved['first_result_sha256'] != receipt['first_result_sha256']
            or unresolved['physical_lean_admissions'] != 0):
        raise ValueError('Unresolved ID set differs')
    return mapping, {'fresh_numerical_passes': counts['PASS'],
                     'unresolved': counts['UNRESOLVED'], 'physical_lean_admissions': 0}


def verify_assignments():
    """Check an optional work reservation; this never contributes closed boxes."""
    receipt_path = HERE / 'receipts/outside050_assignment_projection.json'
    if not receipt_path.exists():
        return None
    receipt = json.loads(receipt_path.read_text())
    selection = json.loads((HERE / 'receipts/outside050_SELECTION.json').read_text())
    if (receipt['records'] != selection['records']
            or receipt['input_file_sha256'] != selection['input_sha256']
            or receipt['supplier_zip_sha256'] != selection['source_pins']['supplier_zip']
            or receipt['physical_lean_admissions'] != 0):
        raise ValueError('Assignment source/census differs')
    path = HERE / 'data/outside050_assigned.jsonl.gz'
    with path.open('rb') as handle:
        if hashlib.file_digest(handle, 'sha256').hexdigest() != receipt['output_file_sha256']:
            raise ValueError('Assignment projection hash differs')
    seen = set()
    origins = set()
    counts = Counter()
    logical = hashlib.sha256()
    with gzip.open(path, 'rb') as handle:
        for ordinal, line in enumerate(handle):
            row = json.loads(line)
            supplier_id = row['supplier_id']
            source = row['source']
            if (row['queue_id'] != ordinal or type(supplier_id) is not int
                    or not 0 <= supplier_id < selection['source_census']['supplier_records']
                    or supplier_id in seen or source not in {'ring', 'export2', 'addendum'}):
                raise ValueError('Invalid or repeated assignment')
            original = (source, row.get({'ring': 'ring_id', 'export2': 'export2_id',
                                       'addendum': 'inventory_row'}[source]))
            if type(original[1]) is not int or original in origins:
                raise ValueError('Invalid or repeated original assignment ID')
            seen.add(supplier_id)
            origins.add(original)
            counts[source] += 1
            logical.update(line)
    if (len(seen) != receipt['records'] or dict(counts) != receipt['by_source']
            or logical.hexdigest() != receipt['logical_output_sha256']):
        raise ValueError('Assignment logical census differs')
    return {'assigned_parent_boxes': len(seen), 'by_source': dict(counts),
            'closure_credit': False}


def verify_band_assignments(status):
    """Check the disjoint inner-band work reservation, never closure."""
    receipt_path = HERE / 'receipts/band003005_assignment_projection.json'
    if not receipt_path.exists():
        return None
    receipt = json.loads(receipt_path.read_text())
    body = dict(receipt)
    if body.pop('receipt_sha256') != json_digest(body):
        raise ValueError('Band assignment receipt self-binding differs')
    if (receipt['records'] != 5263 or receipt['expected_ring_status_code'] != 6
            or receipt['queue_namespace'] != 'mub6_full_ring_band003005_known_unresolved_v1'
            or receipt['source_input_sha256'] != '45f778d1e473f8e6986d61d061806bb53a1768aba2c68f93ea2e1cb407a5c0ca'
            or receipt['closure_credit'] is not False
            or receipt['physical_lean_admissions'] != 0):
        raise ValueError('Band assignment scope differs')
    path = HERE / 'data/band003005_assigned.jsonl.gz'
    with path.open('rb') as handle:
        if hashlib.file_digest(handle, 'sha256').hexdigest() != receipt['output_file_sha256']:
            raise ValueError('Band assignment file differs')
    ids, supplier_ids = set(), set()
    logical = hashlib.sha256()
    with gzip.open(path, 'rb') as handle:
        for ordinal, line in enumerate(handle):
            row = json.loads(line)
            ident, supplier_id = row['ring_id'], row['supplier_id']
            if (row['queue_id'] != ordinal or row['source'] != 'ring'
                    or type(ident) is not int or not 0 <= ident < len(status)
                    or ident in ids or status[ident] != 6
                    or type(supplier_id) is not int or supplier_id in supplier_ids):
                raise ValueError('Band assignment repeats or lacks an unresolved representative')
            ids.add(ident)
            supplier_ids.add(supplier_id)
            logical.update(line)
    if len(ids) != receipt['records'] or logical.hexdigest() != receipt['logical_output_sha256']:
        raise ValueError('Band assignment exact census differs')
    with gzip.open(HERE / 'data/outside050_assigned.jsonl.gz', 'rt') as handle:
        for line in handle:
            row = json.loads(line)
            if row['supplier_id'] in supplier_ids or (row['source'] == 'ring' and row['ring_id'] in ids):
                raise ValueError('Band assignment duplicates an outside050 reservation')
    return {'reserved_parent_boxes': len(ids), 'closure_credit': False,
            'boundary_records_reconciled_in_separate_supplement': 14226}


def verify_boundary(status):
    """Verify the exact historical status supplement; never infer new proofs."""
    receipt = json.loads((HERE / 'receipts/band003005_BOUNDARY_STATUS_PROJECTION.json').read_text())
    body = dict(receipt)
    if body.pop('receipt_sha256') != json_digest(body):
        raise ValueError('Boundary projection receipt self-binding differs')
    if (receipt['id_namespace'] != 'full_ring_original_id'
            or receipt['source_target_input_sha256'] != '7e9f30af7f69f9eda11dc08a9ec552eccef0a050b616f4a419acb552a1e97a32'
            or receipt['source_main_packet_chain_sha256'] != '9f119c9435f026e27d5fe39d44083838be7e214dcabc0d6c87d09a4ac531b882'
            or receipt['source_main_packet_batches'] != 48013
            or receipt['records'] != 14226 or receipt['original_projected_status'] != 0
            or receipt['closure_credit'] is not False or receipt['physical_lean_admissions'] != 0
            or receipt['status_projection_only'] is not True):
        raise ValueError('Boundary projection source or scope differs')
    path = HERE / 'data/band003005_BOUNDARY_STATUS_BY_ID.jsonl.gz'
    if hashlib.sha256(path.read_bytes()).hexdigest() != receipt['output_file_sha256']:
        raise ValueError('Boundary projection file differs')
    mapping, suppliers, counts = {}, set(), Counter()
    logical, ring_chain, supplier_chain = hashlib.sha256(), hashlib.sha256(), hashlib.sha256()
    with gzip.open(path, 'rb') as handle:
        for ordinal, line in enumerate(handle):
            row = json.loads(line)
            ident, supplier, code = row['ring_id'], row['supplier_id'], row['restored_status_code']
            if (row['id'] != ordinal or type(ident) is not int or not 0 <= ident < len(status)
                    or ident in mapping or status[ident] != 0 or type(supplier) is not int
                    or not 0 <= supplier < 1864163 or supplier in suppliers
                    or code not in {1, 3, 6, 7, 8, 9}):
                raise ValueError('Boundary IDs/statuses are invalid or duplicated')
            mapping[ident] = row
            suppliers.add(supplier)
            counts[code] += 1
            logical.update(line)
            ring_chain.update(ident.to_bytes(8, 'big'))
            supplier_chain.update(supplier.to_bytes(8, 'big'))
    expected = {1: 6815, 3: 6815, 6: 294, 7: 294, 8: 4, 9: 4}
    if (len(mapping) != 14226 or dict(counts) != expected
            or {str(k): v for k, v in counts.items()} != receipt['counts_by_status_code']
            or logical.hexdigest() != receipt['source_raw_output_logical_sha256']
            or ring_chain.hexdigest() != receipt['source_ordered_ring_ids_sha256']
            or supplier_chain.hexdigest() != receipt['source_ordered_supplier_ids_sha256']):
        raise ValueError('Boundary exact status census or ID chains differ')
    for ident, row in mapping.items():
        rep = mapping.get(row['representative_ring_id'])
        if (rep is None or rep['representative_ring_id'] != rep['ring_id']
                or row['representative_record_sha256'] != rep['record_sha256']):
            raise ValueError('Boundary representative evidence differs')
        code = row['restored_status_code']
        if code in {1, 6, 8}:
            if rep != row:
                raise ValueError('Boundary representative identity differs')
        elif rep['restored_status_code'] != {3: 1, 7: 6, 9: 8}[code]:
            raise ValueError('Boundary conjugate status differs')
    return mapping, {'records': len(mapping), 'recorded_numerical_or_transport_settlements': 13638,
                     'unresolved_representatives': 294, 'unresolved_conjugates': 294,
                     'physical_lean_admissions': 0, 'certificate_replay_performed': False}


def verify_supplier_overlap(status, boundary, outer, labels):
    """Check exact inventory overlap, without admitting external certificates."""
    root = HERE / 'supplier_reconciliation'
    summary = json.loads((root / 'SUMMARY.json').read_text())
    body = dict(summary)
    if body.pop('receipt_sha256') != json_digest(body):
        raise ValueError('Supplier reconciliation self-binding differs')
    if (summary['active_records'] != 33237
            or summary['scope']['physical_lean_admissions'] != 0
            or summary['scope']['fresh_certificate_replay_performed'] is not False
            or summary['scope']['complete_global_cover'] is not False):
        raise ValueError('Supplier reconciliation scope differs')
    active_path = root / 'SUPPLIER_ACTIVE_6eff0f1.tsv.gz'
    if hashlib.sha256(active_path.read_bytes()).hexdigest() != summary['supplier_active_sha256']:
        raise ValueError('Supplier ACTIVE source differs')
    active = {}
    with gzip.open(active_path, 'rt') as handle:
        for line in handle:
            if line.startswith('#'):
                continue
            row, source, original = line.rstrip('\n').split('\t')
            if row in active:
                raise ValueError('Repeated supplier ACTIVE inventory row')
            active[row] = (source, original)
    expected_counts = {
        'OWN_BOX_RECORDED_NUMERICAL_SETTLEMENT.tsv.gz': 6539,
        'CONDITIONAL_RECORDED_SETTLEMENT.tsv.gz': 2359,
        'PRESERVED_OPEN.tsv.gz': 16988,
        'UNKNOWN_SCOPE.tsv.gz': 7351,
    }
    allowed_codes = {
        'OWN_BOX_RECORDED_NUMERICAL_SETTLEMENT.tsv.gz': {1, 2, 8},
        'CONDITIONAL_RECORDED_SETTLEMENT.tsv.gz': {3, 5, 9},
        'PRESERVED_OPEN.tsv.gz': {6, 7},
    }
    if set(summary['category_files']) != set(expected_counts):
        raise ValueError('Supplier category set differs')
    seen, counts = set(), Counter()
    for name, expected in expected_counts.items():
        path = root / name
        pin = summary['category_files'][name]
        if (pin['records'] != expected
                or hashlib.sha256(path.read_bytes()).hexdigest() != pin['sha256']):
            raise ValueError('Supplier category pin differs: ' + name)
        with gzip.open(path, 'rt') as handle:
            for line in handle:
                if line.startswith('#'):
                    continue
                row, source, original, supplier_id, ledger, label = line.rstrip('\n').split('\t')
                if row in seen or active.get(row) != (source, original):
                    raise ValueError('Supplier category repeats or changes an ACTIVE identity')
                seen.add(row)
                counts[name] += 1
                if name == 'UNKNOWN_SCOPE.tsv.gz':
                    if ledger != '-':
                        raise ValueError('Unknown scope unexpectedly cites a ledger')
                    continue
                ident = int(original)
                if source == 'export2':
                    if (name != 'OWN_BOX_RECORDED_NUMERICAL_SETTLEMENT.tsv.gz'
                            or ledger != 'outside01_STATUS_BY_ID'
                            or outer.get(ident) != 'PASS' or label != 'PASS'):
                        raise ValueError('Export2 settlement lacks a published PASS')
                elif source == 'ring':
                    if ledger == 'OUTSIDE003_STATUS' and 0 <= ident < len(status):
                        code = status[ident]
                    elif ledger == 'BOUNDARY_STATUS' and ident in boundary:
                        code = boundary[ident]['restored_status_code']
                    else:
                        raise ValueError('Ring overlap lacks a published source row')
                    if code not in allowed_codes[name] or label != labels[str(code)]:
                        raise ValueError('Ring overlap misstates the recorded status')
                else:
                    raise ValueError('Unexpected source in recorded status category')
    if len(active) != 33237 or seen != set(active) or dict(counts) != expected_counts:
        raise ValueError('Supplier categories do not partition ACTIVE exactly')
    totals = {
        'own_box_recorded_numerical_settlements': 6539,
        'conditional_conjugate_settlements': 2359,
        'already_recorded_settlement_union': 8898,
        'preserved_open': 16988,
        'unknown_in_these_ledgers': 7351,
        'unmatched_to_recorded_closure': 24339,
    }
    if any(summary[key] != value for key, value in totals.items()):
        raise ValueError('Supplier summary arithmetic differs')
    return {**totals, 'physical_lean_admissions': 0,
            'fresh_certificate_replay_performed': False}


def verify():
    manifest = json.loads((HERE / "MANIFEST.json").read_text())
    for relative, expected in manifest["files"].items():
        path = (HERE / relative).resolve(strict=True)
        if not path.is_relative_to(HERE.resolve()):
            raise ValueError("Manifest path escapes packet")
        with path.open("rb") as f:
            actual = hashlib.file_digest(f, "sha256").hexdigest()
        if actual != expected:
            raise ValueError("Hash differs: " + relative)
    census = json.loads((HERE / "receipts/ring_CENSUS.json").read_text())
    status = gzip.decompress((HERE / "data/OUTSIDE003_STATUS.u8.gz").read_bytes())
    if len(status) != census["original_records"]:
        raise ValueError("Ring status length differs")
    if hashlib.sha256(status).hexdigest() != census["status_vector"]["logical_sha256"]:
        raise ValueError("Ring status logical digest differs")
    counts = Counter(status)
    if set(counts) - set(range(10)):
        raise ValueError("Unknown ring status")
    expected = census["strictly_outside003_counts_by_status"]
    labels = census["status_codes"]
    if any(counts[k] != expected.get(labels[str(k)], 0) for k in range(1, 10)):
        raise ValueError("Ring status census differs")
    if counts[0] != census["not_strictly_outside003_records"]:
        raise ValueError("Outside-radius complement differs")
    seen = Counter()
    end = -1
    with gzip.open(HERE / "data/OUTSIDE003_RANGES.jsonl.gz", "rt") as f:
        for line in f:
            row = json.loads(line)
            a, b, code = row["start"], row["end"], row["status_code"]
            if not (end < a <= b < len(status) and code in range(1, 10)):
                raise ValueError("Invalid or overlapping range")
            if row["count"] != b - a + 1 or row["status"] != labels[str(code)]:
                raise ValueError("Range count/label differs")
            if status[a:b + 1] != bytes([code]) * (b - a + 1):
                raise ValueError("Range/vector disagreement")
            seen[code] += b - a + 1
            end = b
    if any(seen[k] != counts[k] for k in range(1, 10)):
        raise ValueError("Ranges do not cover the full classified set")
    pilots = [json.loads(s) for s in (HERE / "data/export2_pilot_closed.jsonl").read_text().splitlines()]
    if len(pilots) != 8:
        raise ValueError("Pilot census differs")
    summary = {"status": "INVENTORY_HASHES_AND_ENUMERATION_PASS",
               "ring_numerical_or_conditional_settlements_outside003": sum(counts[k] for k in SETTLED),
               "ring_unresolved_outside003": counts[6] + counts[7],
               "pilot_freshly_replayed_export2_boxes": len(pilots),
               "physical_lean_admissions": 0,
               "certificate_replay_performed": False}
    assignments = verify_assignments()
    if assignments is not None:
        summary['outside050_work_assignment'] = assignments
    band = verify_band_assignments(status)
    if band is not None:
        summary['band003005_work_assignment'] = band
    boundary_map, boundary = verify_boundary(status)
    summary['band003005_boundary_status'] = boundary
    outer_map, outer = verify_outer()
    if outer is not None:
        summary['outside01_firstpass'] = outer
    summary['cross_campaign_reconciliation'] = verify_supplier_overlap(
        status, boundary_map, outer_map, labels)
    return status, labels, summary


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--ring-id", type=int)
    parser.add_argument("--export2-id", type=int)
    args = parser.parse_args()
    status, labels, summary = verify()
    if args.ring_id is not None:
        if not 0 <= args.ring_id < len(status):
            raise ValueError("Ring ID out of range")
        code = status[args.ring_id]
        summary["lookup"] = {"namespace": "full_ring_original_id", "id": args.ring_id,
                             "status_code": code, "status": labels[str(code)],
                             "recorded_settlement": code in SETTLED}
        boundary, _ = verify_boundary(status)
        if args.ring_id in boundary:
            row = boundary[args.ring_id]
            summary['lookup']['boundary_supplement'] = {
                'status_code': row['restored_status_code'], 'status': row['restored_status'],
                'representative_ring_id': row['representative_ring_id'],
                'recorded_settlement': row['restored_status_code'] in SETTLED}
    if args.export2_id is not None:
        mapping, _ = verify_outer()
        summary['export2_lookup'] = {'namespace': 'export2_serial', 'id': args.export2_id,
                                     'firstpass_status': mapping.get(args.export2_id, 'NOT_IN_THIS_FIRSTPASS_INDEX')}
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
