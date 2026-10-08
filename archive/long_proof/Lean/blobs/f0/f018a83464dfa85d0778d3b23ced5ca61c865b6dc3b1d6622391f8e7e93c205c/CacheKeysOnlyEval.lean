import Cache.Hashing

/-! Operational source only: compute official cache keys for the exact missing
Binomial closure. No theorem, cache download, decompression or proof admission.
Unlike Cache.Hashing.getHashMemo, this calls getHash on one literal root and does
not insert Mathlib.lean. All transitive source hashing is required by the
upstream cache-key algorithm. Root must preflight resident sources first. -/
open Lean System Cache.IO Cache.Hashing

def selectedMissingModules : Array Lean.Name := #[
  `Mathlib.Analysis.Analytic.Binomial,
  `Mathlib.Analysis.Calculus.IteratedDeriv.ConvergenceOnBall,
  `Mathlib.Analysis.Normed.Module.Connected,
  `Mathlib.Analysis.Convex.Contractible,
  `Mathlib.Topology.Homotopy.Contractible,
  `Mathlib.Topology.Homotopy.Path,
  `Mathlib.Topology.Homotopy.Basic,
  `Mathlib.Topology.ContinuousMap.Ordered,
  `Mathlib.Topology.Homotopy.Equiv,
  `Mathlib.Topology.Algebra.Module.Cardinality,
  `Mathlib.Algebra.Module.Card,
  `Mathlib.SetTheory.Cardinal.CountableCover,
  `Mathlib.Analysis.Complex.OperatorNorm,
  `Mathlib.LinearAlgebra.Complex.Determinant,
  `Mathlib.Analysis.SpecialFunctions.Complex.Analytic,
  `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv,
  `Mathlib.Analysis.Calculus.InverseFunctionTheorem.Deriv,
  `Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv,
  `Mathlib.Analysis.Calculus.InverseFunctionTheorem.ApproximatesLinearOn,
  `Mathlib.Analysis.Meromorphic.Basic,
  `Mathlib.Analysis.Analytic.Order,
  `Mathlib.Analysis.Calculus.InverseFunctionTheorem.Analytic,
  `Mathlib.Analysis.SpecialFunctions.OrdinaryHypergeometric,
  `Mathlib.Analysis.SpecialFunctions.Pow.Deriv,
  `Mathlib.Analysis.Calculus.FDeriv.Extend,
  `Mathlib.Analysis.Calculus.Deriv.Prod,
  `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv,
  `Mathlib.RingTheory.Binomial,
  `Mathlib.Algebra.Polynomial.Smeval,
  `Mathlib.Algebra.Group.NatPowAssoc
]

def main : IO Unit := CacheM.run do
  let ctx ← read
  let initial : HashMemo := { rootHash := ← getRootHash }
  let (_, memo) ← StateT.run
    (getHash `Mathlib.Analysis.Analytic.Binomial
      (ctx.mathlibDepPath / "Mathlib/Analysis/Analytic/Binomial.lean")) initial
  let mut rows : Array Json := #[]
  for mod in selectedMissingModules do
    let some hash := memo.hashMap[mod]?
      | throw <| IO.userError s!"Missing official cache key for {mod}"
    rows := rows.push <| Json.mkObj [
      ("module", toJson mod.toString),
      ("cache_filename", toJson hash.asLTar)]
  IO.println <| Json.pretty <| Json.mkObj [
    ("status", toJson "KEYS_ONLY_NO_RESTORE"),
    ("algorithm", toJson "pinned Cache.Hashing.getRootHash/getHash"),
    ("keys", toJson rows)]

/- Operational key output only; no mathematical theorem is asserted. -/
#eval do
  IO.println "BEGIN_EXACT30_CACHE_KEYS"
  main
  IO.println "END_EXACT30_CACHE_KEYS"
