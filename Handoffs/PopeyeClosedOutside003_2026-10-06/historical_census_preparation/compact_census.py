#!/usr/bin/env python3
"""Build a read-only exact status census for old full-ring boxes outside 3/100.

This program does not run a numerical provider and does not add proof credit.  It
rehashes and independently revalidates the frozen full-ring input, final result
packets, transport map, accepted handoff claims, and the 1,857 own-box
supplemental replays.  The only writes are new files below ``--output``.
"""
from __future__ import annotations

from array import array
from collections import Counter, OrderedDict
from fractions import Fraction as Q
from pathlib import Path
import argparse
import gzip
import hashlib
import json
import os
import resource
import shutil
import signal
import sqlite3
import struct
import sys
import time


RECORDS = 12_291_152
BATCHES = 48_013
BATCH_SIZE = 256
MAX_TREE_NODES = 262_143
MAX_DEPTH = 48
MAX_PACKET_BYTES = 128 * 2**20
MIN_FREE_BYTES = 8 * 2**30
MAX_AS_BYTES = 768 * 2**20
COMMON_DENOMINATOR = 2**80
RADIUS = Q(3, 100)
PI_TERMS = 64

PINNED = {
    "campaign/full_ring.sqlite": "ee03a634978ee6abce12eadf586ce7e161fea7fd99a363a375da72890b010022",
    "campaign/selection.u32le": "f2bd982fad47ca3ebace0a23167e8efccba2b2e7febb8a885f4e337edf15f39e",
    "campaign/accepted_handoff_claims.json": "19653e238b73925cfe498d2a81e412a5aff6baea71147e10990d2b92c436ad78",
    "campaign/reuse.json.gz": "1cdcd45de97a41488a254f5618bfdd79e98fbfdd731524381ba197c60debebfd",
    "campaign/core.py": "4c8446505590c121ed7aadab9d3d0148f0d01265cb1d93119ed0c2ab25b5239a",
    "campaign/selection.py": "9a27cecb2c33d041446eea41b30d5dcad0ffbe836f2297e08ab960ef3e83e50d",
    "campaign/run.py": "8ce7cb4c479467d97d7e537593fc464056111ddd1b1eb3865043a4cf7da06aa1",
    "production/CONFIG.json": "2a71c7094a903e8a782ad5f7f9a69f27d841036579abf3785fb14a48828c009f",
    "production/FINAL_AUDIT.json": "bcc86120e69b7795393fec7deb073376d4acbb738ee931f76acd922e08c77203",
    "SHEET_SCOPE_CORRECTION.json": "b63e8220852626bdccdb50a04e7ba2a90724a350c1e57257f86196da26e0bf87",
    "scope-correction/FINAL_AUDIT.json": "532dfe4ab8882dd03eb3474a66fba18bd9ec0adc984fc37d59ae9ead2b1670aa",
    "scope_finish/finish.py": "a8c0fc8534cc45532eb6ac2778d5940a1037d0ee86f614c3f05ecff21987cf05",
}

EXPECTED_MAIN_COUNTS = {
    "native_replayed_representatives": 6_645_597,
    "accepted_handoff_representatives": 1_903,
    "conjugates_of_native_replayed_representatives": 5_581_661,
    "conjugates_of_accepted_handoff_representatives": 1_903,
    "unresolved": 60_088,
}

# Internal raw categories during the packet audit.
RAW_UNRESOLVED = 0
RAW_NATIVE_FRESH = 1
RAW_EXTERNAL = 2
RAW_TRANSPORT = 3
RAW_NATIVE_REUSED = 4
OUTSIDE_BIT = 0x80

# Published final status-vector categories.  Zero means not strictly outside.
STATUS_NAMES = {
    0: "NOT_STRICTLY_OUTSIDE_3_OVER_100",
    1: "OWN_BOX_FRESH_REPLAY_MAIN",
    2: "OWN_BOX_FRESH_REPLAY_SHEET_SUPPLEMENT",
    3: "EXACT_CONJUGATE_OF_OWN_BOX_FRESH_REPLAY",
    4: "ACCEPTED_EXTERNAL_HANDOFF_REPRESENTATIVE",
    5: "EXACT_CONJUGATE_OF_ACCEPTED_EXTERNAL_HANDOFF",
    6: "UNRESOLVED_REPRESENTATIVE",
    7: "EXACT_CONJUGATE_OF_UNRESOLVED_REPRESENTATIVE",
    8: "OWN_BOX_PINNED_PRIOR_REPLAY_REUSED",
    9: "EXACT_CONJUGATE_OF_PINNED_PRIOR_REPLAY_REUSED",
}

STOP = False


class BoundedStop(RuntimeError):
    pass


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(",", ":"),
                      allow_nan=False).encode()


def digest(value):
    return hashlib.sha256(canonical(value)).hexdigest()


def sha_path(path, maximum=None):
    total = 0
    value = hashlib.sha256()
    fd = os.open(path, os.O_RDONLY | os.O_NOFOLLOW)
    try:
        with os.fdopen(fd, "rb", closefd=False) as handle:
            for chunk in iter(lambda: handle.read(2**20), b""):
                total += len(chunk)
                if maximum is not None and total > maximum:
                    raise ValueError(f"Pinned file exceeds bound: {path}")
                value.update(chunk)
    finally:
        os.close(fd)
    return value.hexdigest(), total


def read_bytes(path, maximum):
    fd = os.open(path, os.O_RDONLY | os.O_NOFOLLOW)
    try:
        stat = os.fstat(fd)
        if not 0 <= stat.st_size <= maximum or not os.path.isfile(path):
            raise ValueError(f"Unsafe or oversized file: {path}")
        data = b""
        with os.fdopen(fd, "rb", closefd=False) as handle:
            while len(data) <= maximum:
                chunk = handle.read(min(2**20, maximum + 1 - len(data)))
                if not chunk:
                    break
                data += chunk
        if len(data) > maximum:
            raise ValueError(f"File exceeds bound: {path}")
        return data
    finally:
        os.close(fd)


def json_file(path, maximum=4 * 2**20):
    return json.loads(read_bytes(path, maximum))


def atomic_bytes(path, data):
    part = path.with_name(path.name + ".part")
    fd = os.open(part, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o600)
    try:
        with os.fdopen(fd, "wb", closefd=False) as handle:
            handle.write(data)
            handle.flush()
            os.fsync(handle.fileno())
    finally:
        os.close(fd)
    os.replace(part, path)
    directory = os.open(path.parent, os.O_RDONLY)
    try:
        os.fsync(directory)
    finally:
        os.close(directory)


def atomic_json(path, value):
    atomic_bytes(path, json.dumps(value, indent=2, sort_keys=True).encode() + b"\n")


def stop_requested(signum, frame):
    global STOP
    STOP = True


def guard(output, started, wall_seconds):
    if STOP or time.monotonic() - started >= wall_seconds:
        raise BoundedStop("census_stop_or_wall_budget")
    if shutil.disk_usage(output).free < MIN_FREE_BYTES:
        raise BoundedStop("census_disk_reserve")


def atan_enclosure(inverse, terms=PI_TERMS):
    """Alternating rational enclosure for atan(1/inverse)."""
    def partial(count):
        total = Q(0)
        for n in range(count):
            term = Q(1, (2 * n + 1) * inverse ** (2 * n + 1))
            total += term if n % 2 == 0 else -term
        return total
    lower = partial(terms)       # even term count: below the limit
    upper = partial(terms + 1)   # odd term count: above the limit
    if not lower < upper:
        raise ValueError("Invalid alternating atan enclosure")
    return lower, upper


def pi_enclosure(terms=PI_TERMS):
    five_lo, five_hi = atan_enclosure(5, terms)
    two_lo, two_hi = atan_enclosure(239, terms)
    lower = 16 * five_lo - 4 * two_hi
    upper = 16 * five_hi - 4 * two_lo
    if not lower < upper or not Q(3) < lower < upper < Q(22, 7):
        raise ValueError("Invalid rational pi enclosure")
    return lower, upper


PI_LOWER, PI_UPPER = pi_enclosure()


def scaled_rational(text):
    if not isinstance(text, str) or text.count("/") != 1:
        raise ValueError("Expected an explicit rational string")
    numerator, denominator = map(int, text.split("/"))
    if denominator <= 0 or COMMON_DENOMINATOR % denominator:
        raise ValueError("Input rational does not divide the pinned common denominator")
    return numerator * (COMMON_DENOMINATOR // denominator)


def threshold_pair(sign):
    if sign == 1:
        target_lower, target_upper = Q(2, 3) * PI_LOWER, Q(2, 3) * PI_UPPER
    elif sign == -1:
        target_lower, target_upper = -Q(2, 3) * PI_UPPER, -Q(2, 3) * PI_LOWER
    else:
        raise ValueError("Invalid seed sign")
    return target_lower - RADIUS, target_upper + RADIUS


THRESHOLDS = {sign: threshold_pair(sign) for sign in (-1, 1)}
SEED_SIGNS = {
    "2,4,4,2": (1, -1, -1, 1),
    "4,2,2,4": (-1, 1, 1, -1),
}


def less_scaled_fraction(value, bound):
    return value * bound.denominator < bound.numerator * COMMON_DENOMINATOR


def greater_scaled_fraction(value, bound):
    return value * bound.denominator > bound.numerator * COMMON_DENOMINATOR


def whole_box_strictly_outside003(row):
    centers, radii = row.get("centers"), row.get("radii")
    signs = SEED_SIGNS.get(row.get("seed"))
    if (type(row.get("id")) is not int or row["id"] < 0 or signs is None
            or not isinstance(centers, list) or not isinstance(radii, list)
            or len(centers) != 4 or len(radii) != 4):
        raise ValueError("Malformed exact geometry row")
    far_coordinate = False
    for center_text, radius_text, sign in zip(centers, radii, signs):
        center, radius = scaled_rational(center_text), scaled_rational(radius_text)
        if radius <= 0:
            raise ValueError("Nonpositive box radius")
        lower, upper = center - radius, center + radius
        if lower < -3 * COMMON_DENOMINATOR or upper > 3 * COMMON_DENOMINATOR:
            raise ValueError("Pinned alias argument requires every interval inside [-3,3]")
        left, right = THRESHOLDS[sign]
        if less_scaled_fraction(upper, left) or greater_scaled_fraction(lower, right):
            far_coordinate = True
    # All nonzero 2*pi aliases lie more than 3/100 from [-3,3].
    if not Q(4, 3) * PI_LOWER - 3 > RADIUS:
        raise ValueError("Circular alias separation proof failed")
    return far_coordinate


def decode_tree(tree):
    if not isinstance(tree, str) or not 0 < len(tree) <= MAX_TREE_NODES:
        raise ValueError("Invalid compact forest length")
    stack = [0]
    pending = 0
    for token in tree:
        if not stack:
            raise ValueError("Trailing compact forest token")
        depth = stack.pop()
        if depth > MAX_DEPTH:
            raise ValueError("Compact forest exceeds depth guard")
        if token in "0123":
            if depth == MAX_DEPTH:
                raise ValueError("Compact forest splits past depth guard")
            stack.extend((depth + 1, depth + 1))
        elif token == "P":
            pending += 1
        elif token not in "LS":
            raise ValueError("Unknown compact forest token")
    if stack:
        raise ValueError("Truncated compact forest")
    return pending


def validate_record(row, record):
    if (not isinstance(record, dict) or record.get("id") != row.get("id")
            or record.get("input_sha256") != digest(row)):
        raise ValueError("Result record is not bound to its exact input")
    stage = record.get("stage")
    if type(stage) is not int or not -1 <= stage < 5 or type(record.get("closed")) is not bool:
        raise ValueError("Invalid result continuation fields")
    pending = decode_tree(record.get("tree"))
    if record["closed"]:
        replay = record.get("replay")
        certificate = digest({key: record[key] for key in ("id", "input_sha256", "tree")})
        if (pending or not isinstance(replay, dict) or replay.get("status") != "PASS"
                or replay.get("certificate_sha256") != certificate):
            raise ValueError("Closed forest lacks its bound replay receipt")
    return pending


def load_plan(path):
    if sys.byteorder != "little":
        raise ValueError("Pinned transport map is little-endian uint32")
    values = array("I")
    with path.open("rb") as handle:
        values.fromfile(handle, RECORDS)
        if handle.read(1):
            raise ValueError("Transport map exceeds exact census")
    if values.itemsize != 4 or len(values) != RECORDS:
        raise ValueError("Transport map has wrong exact census")
    return values


def representative(plan, ident):
    value = plan[ident]
    rep = value & 0x7FFFFFFF
    if not 0 <= rep < len(plan) or plan[rep] != rep or bool(value & 0x80000000) != (rep != ident):
        raise ValueError("Invalid exact conjugation transport map")
    return rep


def classify_record(row, record, plan, claims, reuse):
    pending = validate_record(row, record)
    ident = row["id"]
    rep = representative(plan, ident)
    if rep != ident:
        if (record.get("transport") != {"representative": rep, "operation": "complex_conjugation"}
                or "external_claim_sha256" in record):
            raise ValueError("Transport record differs from pinned exact map")
        kind = RAW_TRANSPORT
    elif "transport" in record:
        raise ValueError("Representative has an unexpected transport")
    elif "external_claim_sha256" in record:
        claim = claims.get(str(ident))
        if claim is None or record["external_claim_sha256"] != digest(claim):
            raise ValueError("Unrecognized accepted handoff claim")
        kind = RAW_EXTERNAL
    else:
        if record["closed"]:
            if record.get("reason") == "freshly_replayed_complete_cover":
                kind = RAW_NATIVE_FRESH
            elif reuse.get(str(ident)) == record:
                kind = RAW_NATIVE_REUSED
            else:
                raise ValueError("Native closure is neither a campaign fresh replay nor an exact pinned prior replay")
        else:
            kind = RAW_UNRESOLVED
    if kind in (RAW_TRANSPORT, RAW_EXTERNAL):
        if record["closed"] or record.get("tree") != "P" or record.get("candidate") or record.get("replay"):
            raise ValueError("Conditional settlement is disguised as native replay")
    elif kind == RAW_UNRESOLVED:
        if pending == 0:
            raise ValueError("Unreplayed complete candidate escaped the final packet")
        if record.get("stage") != 4 and record.get("reason") not in ("depth_guard", "forest_size_guard"):
            raise ValueError("Native result did not finish all retry rounds")
    return kind


def open_database(path):
    db = sqlite3.connect(path.resolve().as_uri() + "?mode=ro&immutable=1", uri=True)
    db.execute("PRAGMA cache_size=-4096")
    return db


def load_batch(db, ident):
    item = db.execute("SELECT first_id,n,raw_sha,payload FROM batches WHERE id=?", (ident,)).fetchone()
    if item is None:
        raise ValueError("Missing exact input batch")
    first, count, expected, payload = item
    raw = gzip.decompress(payload)
    if hashlib.sha256(raw).hexdigest() != expected:
        raise ValueError("Exact input batch digest mismatch")
    rows = [json.loads(line) for line in raw.splitlines()]
    if len(rows) != count or [row.get("id") for row in rows] != list(range(first, first + count)):
        raise ValueError("Exact input batch ID census differs")
    return rows, expected


def packet_path(root, ident):
    return root / "production/batches" / f"{ident // 1000:03d}" / f"{ident:06d}.json.gz"


def update_progress(output, started, batch, records, outside, raw_counts):
    atomic_json(output / "PROGRESS.json", {
        "schema": "full-ring-outside003-census-progress-v1",
        "status": "READ_ONLY_PACKET_AUDIT_RUNNING",
        "finished_batches": batch,
        "finished_records": records,
        "strictly_outside003_so_far": outside,
        "raw_categories_so_far": dict(raw_counts),
        "elapsed_seconds": time.monotonic() - started,
        "closure_credit": False,
        "physical_lean_admissions": 0,
    })


def audit_main(root, output, db, plan, claims, reuse, config, final_audit, started, wall_seconds):
    categories = bytearray(RECORDS)
    raw_counts = Counter()
    chain = hashlib.sha256()
    counted = outside = 0
    for batch_id in range(BATCHES):
        guard(output, started, wall_seconds)
        rows, input_digest = load_batch(db, batch_id)
        compressed = read_bytes(packet_path(root, batch_id), MAX_PACKET_BYTES)
        packet = json.loads(gzip.decompress(compressed))
        records = packet.get("records")
        if (packet.get("campaign_sha256") != config["campaign_sha256"]
                or packet.get("input_batch_sha256") != input_digest
                or packet.get("batch") != batch_id
                or type(packet.get("stage")) is not int or not 0 <= packet["stage"] < 5
                or packet.get("count") != len(rows) or not isinstance(records, list)
                or len(records) != len(rows) or packet.get("physical_lean_admissions") != 0):
            raise ValueError("Final result packet differs from its frozen campaign/input")
        packet_closed = packet_settled = 0
        for row, record in zip(rows, records):
            if row.get("id") != counted:
                raise ValueError("Missing or reordered original full-ring ID")
            kind = classify_record(row, record, plan, claims, reuse)
            is_outside = whole_box_strictly_outside003(row)
            categories[counted] = kind | (OUTSIDE_BIT if is_outside else 0)
            raw_counts[kind] += 1
            packet_closed += bool(record["closed"])
            packet_settled += kind != RAW_UNRESOLVED
            outside += bool(is_outside)
            counted += 1
        if packet.get("closed") != packet_closed or packet.get("settled_work") != packet_settled:
            raise ValueError("Stored packet closure/settlement count differs")
        chain.update(batch_id.to_bytes(8, "big") + hashlib.sha256(compressed).digest())
        if batch_id % 32 == 31 or batch_id + 1 == BATCHES:
            update_progress(output, started, batch_id + 1, counted, outside, raw_counts)
    if counted != RECORDS or chain.hexdigest() != final_audit["ordered_batch_digest"]:
        raise ValueError("Final result packet chain/census differs from its frozen audit")
    return categories, raw_counts, outside, chain.hexdigest()


class RowCache:
    def __init__(self, db, maximum=32):
        self.db, self.maximum, self.cache = db, maximum, OrderedDict()

    def get(self, ident):
        batch_id = ident // BATCH_SIZE
        if batch_id not in self.cache:
            rows, _ = load_batch(self.db, batch_id)
            self.cache[batch_id] = {row["id"]: row for row in rows}
            while len(self.cache) > self.maximum:
                self.cache.popitem(last=False)
        else:
            self.cache.move_to_end(batch_id)
        try:
            return self.cache[batch_id][ident]
        except KeyError as error:
            raise ValueError("Supplement references a missing original input") from error


def audit_supplement(root, output, db, plan, claims, categories, started, wall_seconds):
    correction = json_file(root / "SHEET_SCOPE_CORRECTION.json", 256 * 2**10)
    supplement_audit = json_file(root / "scope-correction/FINAL_AUDIT.json")
    obligations = correction.get("additional_native_obligations")
    if (correction.get("status") != "SHEET_SCOPE_CORRECTION_REQUIRED"
            or correction.get("additional_native_obligations_count") != 1857
            or not isinstance(obligations, list) or len(obligations) != 1857
            or len({item.get("id") for item in obligations}) != 1857
            or supplement_audit != {
                "status": "ALL_SUPPLEMENTAL_BOXES_REPLAYED", "accepted": 1857,
                "original_inputs": 1857, "unresolved_ids": [],
                "ordered_certificate_sha256": "0a789a10b8457e2eba89367fed03d9f4fe757630c0b191b8377b1f6b96f866fc",
                "physical_lean_admissions": 0,
            }):
        raise ValueError("Sheet-scope supplement ledger differs")
    cache = RowCache(db)
    ordered = hashlib.sha256()
    accepted = set()
    for position, item in enumerate(obligations):
        if position % 32 == 0:
            guard(output, started, wall_seconds)
        ident, rep = item.get("id"), item.get("representative")
        if type(ident) is not int or type(rep) is not int or ident in accepted:
            raise ValueError("Malformed/duplicate supplemental identity")
        if representative(plan, ident) != rep or (categories[ident] & 0x7F) != RAW_TRANSPORT:
            raise ValueError("Supplement is not bound to the original transport")
        claim = claims.get(str(rep), {})
        if claim.get("basis") != "earlier_production_and_PSD_whole_parent_closure_claim":
            raise ValueError("Supplement overrides the wrong accepted claim class")
        row, rep_row = cache.get(ident), cache.get(rep)
        if ([scaled_rational(value) for value in row["centers"]]
                != [-scaled_rational(value) for value in rep_row["centers"]]
                or [scaled_rational(value) for value in row["radii"]]
                != [scaled_rational(value) for value in rep_row["radii"]]):
            raise ValueError("Supplemental conjugate geometry differs")
        path = root / "scope-correction/states" / f"{ident}.json.gz"
        compressed = read_bytes(path, MAX_PACKET_BYTES)
        record = json.loads(gzip.decompress(compressed))
        validate_record(row, record)
        if (not record.get("closed") or record.get("reason") != "freshly_replayed_complete_cover"
                or record.get("physical_lean_admissions", 0) != 0):
            raise ValueError("Supplemental state is not a fresh own-box replay")
        ordered.update(ident.to_bytes(8, "big") + hashlib.sha256(compressed).digest())
        accepted.add(ident)
    if ordered.hexdigest() != supplement_audit["ordered_certificate_sha256"]:
        raise ValueError("Supplemental fresh-replay certificate chain differs")
    return accepted, ordered.hexdigest()


def resolve_categories(categories, plan, supplement_ids):
    total = Counter()
    outside = Counter()
    unresolved_raw_representatives = unresolved_raw_transports = 0
    for ident in range(RECORDS):
        raw = categories[ident] & 0x7F
        selected = bool(categories[ident] & OUTSIDE_BIT)
        rep = representative(plan, ident)
        if raw == RAW_NATIVE_FRESH:
            code = 1
        elif raw == RAW_NATIVE_REUSED:
            code = 8
        elif raw == RAW_EXTERNAL:
            code = 4
        elif raw == RAW_UNRESOLVED:
            code = 6
            unresolved_raw_representatives += 1
        elif ident in supplement_ids:
            code = 2
        else:
            rep_raw = categories[rep] & 0x7F
            if rep_raw == RAW_NATIVE_FRESH:
                code = 3
            elif rep_raw == RAW_NATIVE_REUSED:
                code = 9
            elif rep_raw == RAW_EXTERNAL:
                code = 5
            elif rep_raw == RAW_UNRESOLVED:
                code = 7
                unresolved_raw_transports += 1
            else:
                raise ValueError("Transport points to another transport")
        total[STATUS_NAMES[code]] += 1
        categories[ident] = code if selected else 0
        if selected:
            outside[STATUS_NAMES[code]] += 1
    if (total[STATUS_NAMES[1]] != 6_644_590
            or total[STATUS_NAMES[8]] != 1_007
            or total[STATUS_NAMES[2]] != 1_857
            or total[STATUS_NAMES[3]] + total[STATUS_NAMES[9]] != 5_581_661
            or total[STATUS_NAMES[4]] != 1_903 or total[STATUS_NAMES[5]] != 46
            or total[STATUS_NAMES[6]] != unresolved_raw_representatives
            or total[STATUS_NAMES[7]] != unresolved_raw_transports
            or sum(total.values()) != RECORDS
            or unresolved_raw_representatives + unresolved_raw_transports != 60_088):
        raise ValueError("Corrected final status census differs")
    return total, outside


def write_status_vector(output, categories):
    logical = hashlib.sha256(categories).hexdigest()
    data = gzip.compress(bytes(categories), compresslevel=9, mtime=0)
    path = output / "OUTSIDE003_STATUS.u8.gz"
    atomic_bytes(path, data)
    return {"path": path.name, "records": len(categories), "logical_sha256": logical,
            "gzip_sha256": hashlib.sha256(data).hexdigest(), "bytes": len(data)}


def write_ranges(output, categories):
    path = output / "OUTSIDE003_RANGES.jsonl.gz"
    part = path.with_name(path.name + ".part")
    ranges = 0
    logical = hashlib.sha256()
    fd = os.open(part, os.O_WRONLY | os.O_CREAT | os.O_EXCL | os.O_NOFOLLOW, 0o600)
    try:
        with os.fdopen(fd, "wb", closefd=False) as raw:
            with gzip.GzipFile(filename="", mode="wb", compresslevel=9, fileobj=raw, mtime=0) as handle:
                start = 0
                current = categories[0]
                for ident in range(1, len(categories) + 1):
                    value = categories[ident] if ident < len(categories) else None
                    if value == current:
                        continue
                    if current:
                        line = canonical({"start": start, "end": ident - 1,
                                          "count": ident - start,
                                          "status_code": current,
                                          "status": STATUS_NAMES[current]}) + b"\n"
                        handle.write(line)
                        logical.update(line)
                        ranges += 1
                    start, current = ident, value
            raw.flush()
            os.fsync(raw.fileno())
    finally:
        os.close(fd)
    os.replace(part, path)
    compressed_sha, size = sha_path(path, 1024 * 2**20)
    return {"path": path.name, "ranges": ranges, "logical_sha256": logical.hexdigest(),
            "gzip_sha256": compressed_sha, "bytes": size}


def verify_pins(root, output, started, wall_seconds):
    observed = {}
    for relative, expected in PINNED.items():
        guard(output, started, wall_seconds)
        actual, size = sha_path(root / relative)
        if actual != expected:
            raise ValueError(f"Pinned source changed: {relative}")
        observed[relative] = {"sha256": actual, "bytes": size}
    return observed


def verify_release(path):
    path = path.resolve(strict=True)
    value = json_file(path)
    claimed = value.pop("release_sha256", None)
    files = value.get("files")
    if (value.get("schema") != "mub6-outside003-census-release-v1"
            or value.get("status") != "FROZEN_READ_ONLY_CENSUS"
            or claimed != digest(value) or not isinstance(files, dict)
            or set(files) != {"README.md", "SOURCE_INVENTORY.json", "compact_census.py",
                              "compact_census.sbatch", "compact_census_tests.py"}):
        raise ValueError("Census release manifest differs")
    for name, expected in files.items():
        if not isinstance(expected, str) or len(expected) != 64:
            raise ValueError("Malformed census release source pin")
        actual, _ = sha_path(path.parent / name, 2 * 2**20)
        if actual != expected:
            raise ValueError(f"Census release source changed: {name}")
    value["release_sha256"] = claimed
    return value


def validate_headers(root):
    config = json_file(root / "production/CONFIG.json")
    audit = json_file(root / "production/FINAL_AUDIT.json")
    claims = json_file(root / "campaign/accepted_handoff_claims.json")
    reuse_packet = json.loads(gzip.decompress(read_bytes(root / "campaign/reuse.json.gz", 4 * 2**20)))
    if (config.get("records") != RECORDS or config.get("batches") != BATCHES
            or config.get("database_sha256") != PINNED["campaign/full_ring.sqlite"]
            or config.get("source_archive_sha256") != "8225f5d2d2a7b0d2d3f52c8d50f7064b9d6feaceb241788b9b0faf0c257cbb12"
            or config.get("campaign_sha256") != "2db4d5be9de16ee14f5169e1ee4c4fd4bd0d4f384f56021b7722b22546bc56b4"
            or config.get("selection_report", {}).get("selection_sha256") != PINNED["campaign/selection.u32le"]
            or audit.get("original_inputs") != RECORDS
            or audit.get("campaign_sha256") != config.get("campaign_sha256")
            or audit.get("physical_lean_admissions") != 0
            or {key: audit.get(key) for key in EXPECTED_MAIN_COUNTS} != EXPECTED_MAIN_COUNTS
            or audit.get("conditionally_accounted_for") != RECORDS - EXPECTED_MAIN_COUNTS["unresolved"]
            or claims.get("schema") != 1
            or claims.get("source_archive_sha256") != "af8298ba8afd70fcbeae1d7eed31e9e9779594d2e9d5d6cd2187a9b6a22fa8c9"
            or claims.get("brief_sha256") != "dd2c49d2edd04a9b9f663a548ea8685adfe6bd01d8480f7748234c98ca4cbfbb"
            or claims.get("v3_results_sha256") != "00969ed4f51f8ddfe57fda0feb056081cf2b6d7ad05cc6cd2e624b501796fdc0"
            or claims.get("pilot_exact_map_sha256") != "fc7fd46f688939d1246b56612e5217053caa1135b909770b829ecd3b678c71a1"
            or not isinstance(claims.get("records"), dict) or len(claims["records"]) != 1903):
        raise ValueError("Frozen campaign header/audit/claim census differs")
    if (reuse_packet.get("schema") != 1 or reuse_packet.get("physical_lean_admissions") != 0
            or reuse_packet.get("sources") != [
                {"archive": "calibration-2481410-results.zip",
                 "sha256": "062543cbcadb4f892376df4545a1adcf9ea4ab27ab16c8b0a86fe1d9fc35f862"},
                {"archive": "continuation-2481413-results.zip",
                 "sha256": "9c4e778308efdd86dea53662a8269d4c13d8210bafbda9044b5473986bf91ae5"},
            ] or not isinstance(reuse_packet.get("records"), dict)
            or len(reuse_packet["records"]) != 1026
            or sum(bool(record.get("closed")) for record in reuse_packet["records"].values()) != 1007):
        raise ValueError("Pinned prior-replay reuse packet differs")
    code_pins = {item["path"]: item["sha256"] for item in config.get("code_pins", [])}
    for relative in ("campaign/core.py", "campaign/selection.py", "campaign/run.py"):
        if code_pins.get(relative) != PINNED[relative]:
            raise ValueError("Production config source pin differs")
    return config, audit, claims["records"], reuse_packet["records"]


def validate_database_metadata(db):
    metadata = {key: json.loads(value) for key, value in db.execute("SELECT key,value FROM metadata")}
    expected = {
        "schema": 1, "records": RECORDS, "batches": BATCHES, "batch_size": BATCH_SIZE,
        "source_archive_sha256": "8225f5d2d2a7b0d2d3f52c8d50f7064b9d6feaceb241788b9b0faf0c257cbb12",
        "source_manifest_sha256": "a40c1273189d0265e1fdf8b8e79ffb4c02134eb21e64e4eccb4923950ce4bbc3",
        "status": "COMPLETE_PINNED_EXPORT_INDEX", "physical_lean_admissions": 0,
    }
    if metadata != expected:
        raise ValueError("Exact input database metadata differs")
    return metadata


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, required=True)
    parser.add_argument("--release", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--wall-seconds", type=float, default=42_000)
    args = parser.parse_args(argv)
    if not __debug__:
        raise ValueError("Optimized Python is forbidden")
    if not os.environ.get("SLURM_JOB_ID"):
        raise ValueError("Full census must run as the pinned bounded Slurm job")
    if not 0 < args.wall_seconds <= 42_000:
        raise ValueError("Census wall bound must be in (0,42000]")
    resource.setrlimit(resource.RLIMIT_AS, (MAX_AS_BYTES, MAX_AS_BYTES))
    signal.signal(signal.SIGTERM, stop_requested)
    signal.signal(signal.SIGINT, stop_requested)
    signal.signal(signal.SIGUSR1, stop_requested)
    root = args.root.resolve(strict=True)
    release = verify_release(args.release)
    output = args.output.parent.resolve(strict=True) / args.output.name
    if output.exists() or output.is_symlink():
        raise ValueError("Use a fresh immutable census output directory")
    output.mkdir(mode=0o700)
    started = time.monotonic()
    try:
        guard(output, started, args.wall_seconds)
        sources = verify_pins(root, output, started, args.wall_seconds)
        config, final_audit, claims, reuse = validate_headers(root)
        plan = load_plan(root / "campaign/selection.u32le")
        db = open_database(root / "campaign/full_ring.sqlite")
        try:
            metadata = validate_database_metadata(db)
            categories, raw_counts, outside_count, packet_chain = audit_main(
                root, output, db, plan, claims, reuse, config, final_audit,
                started, args.wall_seconds)
            supplement_ids, supplement_chain = audit_supplement(
                root, output, db, plan, claims, categories, started, args.wall_seconds)
        finally:
            db.close()
        total_counts, outside_counts = resolve_categories(categories, plan, supplement_ids)
        if sum(total_counts.values()) != RECORDS or sum(outside_counts.values()) != outside_count:
            raise ValueError("Published final status counts differ from exact geometry census")
        guard(output, started, args.wall_seconds)
        vector = write_status_vector(output, categories)
        ranges = write_ranges(output, categories)
        result = {
            "schema": "mub6-full-ring-closed-boxes-outside003-census-v1",
            "status": "PASS_READ_ONLY_EXACT_CENSUS",
            "id_namespace": "full_ring_original_id",
            "id_interval": [0, RECORDS - 1],
            "original_records": RECORDS,
            "strictly_outside003_records": outside_count,
            "not_strictly_outside003_records": RECORDS - outside_count,
            "strictly_outside003_counts_by_status": dict(outside_counts),
            "all_radius_counts_by_status_after_sheet_correction": dict(total_counts),
            "strictly_outside003_closed_under_recorded_numerical_or_conditional_ledger": sum(
                outside_counts.get(STATUS_NAMES[code], 0) for code in (1, 2, 3, 4, 5, 8, 9)),
            "strictly_outside003_own_box_campaign_or_supplement_fresh_replays": (
                outside_counts.get(STATUS_NAMES[1], 0) + outside_counts.get(STATUS_NAMES[2], 0)),
            "strictly_outside003_own_box_pinned_prior_replays_reused": outside_counts.get(STATUS_NAMES[8], 0),
            "strictly_outside003_own_box_numerical_replay_receipts_total": sum(
                outside_counts.get(STATUS_NAMES[code], 0) for code in (1, 2, 8)),
            "strictly_outside003_exact_transports_from_numerical_replay": (
                outside_counts.get(STATUS_NAMES[3], 0) + outside_counts.get(STATUS_NAMES[9], 0)),
            "strictly_outside003_external_handoff_or_transports": (
                outside_counts.get(STATUS_NAMES[4], 0) + outside_counts.get(STATUS_NAMES[5], 0)),
            "strictly_outside003_unresolved": (
                outside_counts.get(STATUS_NAMES[6], 0) + outside_counts.get(STATUS_NAMES[7], 0)),
            "status_codes": {str(code): name for code, name in STATUS_NAMES.items()},
            "status_vector": vector,
            "ranges": ranges,
            "exact_geometry": {
                "criterion": "whole closed box lower circular sup-distance from its own declared seed is strictly greater than 3/100 radians",
                "boundary_policy": "equality is excluded",
                "seed_pi_coefficients": {"2,4,4,2": ["2/3", "-2/3", "-2/3", "2/3"],
                                         "4,2,2,4": ["-2/3", "2/3", "2/3", "-2/3"]},
                "pi_method": "Machin identity with alternating rational atan bounds",
                "pi_terms": PI_TERMS,
                "pi_lower": str(PI_LOWER),
                "pi_upper": str(PI_UPPER),
                "common_input_denominator": str(COMMON_DENOMINATOR),
                "nonzero_alias_bound": "4*pi_lower/3 - 3 > 3/100",
                "center_only_filter_used": False,
            },
            "main_packet_chain_sha256": packet_chain,
            "main_raw_category_counts": {
                "native_fresh": raw_counts[RAW_NATIVE_FRESH],
                "native_pinned_prior_replay_reused": raw_counts[RAW_NATIVE_REUSED],
                "external_representative": raw_counts[RAW_EXTERNAL],
                "transport_before_resolution": raw_counts[RAW_TRANSPORT],
                "unresolved_representative": raw_counts[RAW_UNRESOLVED],
            },
            "sheet_supplement_fresh_replays": len(supplement_ids),
            "sheet_supplement_ordered_certificate_sha256": supplement_chain,
            "source_pins": sources,
            "census_release": release,
            "database_metadata": metadata,
            "omissions": {
                "survivor_v2_continuation": "Omitted pending a separate normalized audit: the queue has no final audit and its cache-reuse run ended with a malformed-database failure.",
                "export2_outside01": "Separate id namespace and live campaign; combine only independently fresh-replayed rows from its pinned ledger.",
            },
            "interpretation": {
                "own_box_fresh_replay": "native numerical replay receipt for this exact original box",
                "pinned_prior_replay_reused": "exact record imported from the pinned prior replay packet; retained separately from fresh work performed by the main campaign",
                "exact_conjugate": "conditional exact transport category, not an own-box fresh replay",
                "external_handoff": "accepted supplier claim category, not an own-box fresh replay",
                "unresolved": "no recorded final settlement; search-only candidates remain here",
                "formal_status": "numerical/conditional evidence only; no Lean theorem or physical proof credit",
            },
            "closure_credit": False,
            "physical_lean_admissions": 0,
            "slurm_job_id": os.environ["SLURM_JOB_ID"],
            "elapsed_seconds": time.monotonic() - started,
            "finished_unix": time.time(),
        }
        result["receipt_sha256"] = digest(result)
        atomic_json(output / "CENSUS.json", result)
        atomic_json(output / "STATUS.json", {
            "schema": "mub6-full-ring-outside003-census-status-v1",
            "status": "PASS", "receipt_sha256": result["receipt_sha256"],
            "physical_lean_admissions": 0,
        })
        print(json.dumps(result, sort_keys=True), flush=True)
        return 0
    except BaseException as error:
        try:
            atomic_json(output / "FAILURE.json", {
                "schema": "mub6-full-ring-outside003-census-failure-v1",
                "status": "FAILED", "type": type(error).__name__, "error": str(error),
                "closure_credit": False, "physical_lean_admissions": 0,
            })
        except BaseException:
            pass
        raise


if __name__ == "__main__":
    sys.exit(main())
