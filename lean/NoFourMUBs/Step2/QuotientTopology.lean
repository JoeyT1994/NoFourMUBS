import NoFourMUBs.Lib.Hadamard
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.Compactness.Compact
import Mathlib.Topology.Constructions
import Mathlib.Topology.MetricSpace.ProperSpace
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-!
# Natural topology and compactness of the Hadamard quotient

We use the `Had6` subtype and the `HadamardClass6` quotient of upstream's
`HadamardQuotient` (restated verbatim in `NoFourMUBs.Lib.Hadamard`), with
Mathlib's induced and quotient topologies. No arbitrary topology, metric, or reconstruction axiom is
introduced. These compactness results are enough for the closed matched
relation argument. Hausdorffness of the quotient is not claimed here.
-/

open Set Matrix Hadamard6

namespace NoFourMUBs.Step2Topology

/-- The complex unit phases form a compact set. -/
theorem isCompact_unitPhases :
    IsCompact {z : ℂ | Complex.normSq z = 1} := by
  have hset : {z : ℂ | Complex.normSq z = 1} = Metric.sphere 0 1 := by
    ext z
    simp only [Set.mem_ofPred_eq, Metric.mem_sphere, dist_zero_right]
    rw [Complex.normSq_eq_norm_sq]
    constructor
    · intro hz
      nlinarith [norm_nonneg z]
    · intro hz
      rw [hz]
      norm_num
  rw [hset]
  exact isCompact_sphere (0 : ℂ) 1

/-- Entrywise flatness is closed in the usual matrix topology. -/
theorem isClosed_entrywiseUnit :
    IsClosed {H : Mat6 | EntrywiseUnit H} := by
  simp only [EntrywiseUnit, Set.ofPred_forall]
  apply isClosed_iInter
  intro i
  apply isClosed_iInter
  intro j
  exact isClosed_eq
    (Complex.continuous_normSq.comp (continuous_apply_apply i j))
    continuous_const

/-- All phase matrices form a compact product of 36 unit circles. -/
theorem isCompact_entrywiseUnit :
    IsCompact {H : Mat6 | EntrywiseUnit H} := by
  simpa only [Set.matrix, EntrywiseUnit, Set.mem_ofPred_eq] using
    (isCompact_unitPhases.matrix (m := I6) (n := I6))

/-- The full Hadamard equations define a closed set. -/
theorem isClosed_isHadamard :
    IsClosed {H : Mat6 | Hadamard6.IsHadamard H} := by
  change IsClosed
    ({H : Mat6 | EntrywiseUnit H} ∩
     {H : Mat6 | H * Hᴴ = (6 : ℂ) • (1 : Mat6)})
  exact isClosed_entrywiseUnit.inter
    (isClosed_eq
      ((continuous_id : Continuous (id : Mat6 → Mat6)).matrix_mul
        (continuous_id.matrix_conjTranspose))
      continuous_const)

/-- The full Hadamard locus is compact, before passing to equivalence. -/
theorem isCompact_isHadamard :
    IsCompact {H : Mat6 | Hadamard6.IsHadamard H} :=
  isCompact_entrywiseUnit.of_isClosed_subset isClosed_isHadamard
    (fun _ hH => hH.1)

instance had6CompactSpace : CompactSpace Had6 :=
  isCompact_iff_compactSpace.mp isCompact_isHadamard

/-- The canonical map into the equivalence quotient. -/
def hadamardQuotient (H : Had6) : HadamardClass6 :=
  Quotient.mk had6EquivalenceSetoid H

theorem continuous_hadamardQuotient : Continuous hadamardQuotient :=
  continuous_quotient_mk'

theorem isQuotientMap_hadamardQuotient :
    Topology.IsQuotientMap hadamardQuotient :=
  isQuotientMap_quotient_mk'

@[simp] theorem hadamardQuotient_eq_iff (H K : Had6) :
    hadamardQuotient H = hadamardQuotient K ↔ Equivalent H.1 K.1 := by
  constructor
  · exact Quotient.exact
  · intro h
    exact @Quotient.sound Had6 had6EquivalenceSetoid H K h

end NoFourMUBs.Step2Topology

