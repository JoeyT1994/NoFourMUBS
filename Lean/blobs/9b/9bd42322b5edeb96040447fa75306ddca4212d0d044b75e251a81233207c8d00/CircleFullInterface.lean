import ChartPartitionFast
import TaoArcSoundness
import FinalAssembly

/-! Source-byte order uses the five low bits of each root number. A future
generated assembly supplies all 32 `CoveredState` proofs; this module checks
that this finite family covers every Boolean sign function and then closes the
physical statement through the existing Tao graph binding. -/
namespace Mub6.Numerical.CircleFullPrototype

open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleClosing
open Mub6.Numerical.GraphKernel

def signsOf (i : Fin 32) : SignChart := fun j => i.val.testBit j.val

def signNumber (signs : SignChart) : ℕ :=
  (if signs 0 then 1 else 0) + (if signs 1 then 2 else 0) +
  (if signs 2 then 4 else 0) + (if signs 3 then 8 else 0) +
  (if signs 4 then 16 else 0)

def signIndex (signs : SignChart) : Fin 32 :=
  ⟨signNumber signs % 32, Nat.mod_lt _ (by decide)⟩

theorem signs_recovered : ∀ signs : SignChart,
    signsOf (signIndex signs) = signs := by
  decide +kernel

theorem root_guard : rootCheck taoTables T = true := by
  decide +kernel

theorem complete_from_32
    (hroots : ∀ i : Fin 32,
      CoveredState taoTables (toCarrier R carrier) T R targets
        (signsOf i) rootState) : chartCoverObligation := by
  have hall : ∀ signs : SignChart,
      CoveredState taoTables (toCarrier R carrier) T R targets signs rootState := by
    intro signs
    simpa only [signs_recovered signs] using hroots (signIndex signs)
  exact all_chart_roots_sound (by decide) (by decide) root_guard hall

theorem raw_pair_excluded_from_32
    (hroots : ∀ i : Fin 32,
      CoveredState taoTables (toCarrier R carrier) T R targets
        (signsOf i) rootState)
    {H : BasisMatrix} (hH : PhaseHadamard H)
    (hE : CarrierBox (toCarrier R carrier) H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w :=
  raw_pair_excluded_from_chart_cover (complete_from_32 hroots) hH hE

theorem normalized_extension_excluded_from_32
    (hroots : ∀ i : Fin 32,
      CoveredState taoTables (toCarrier R carrier) T R targets
        (signsOf i) rootState)
    {B : BasisMatrix} (hB : IsOrthonormalBasis B)
    (hBflat : ∀ j, IsNormalizedFlatRay (fun r => B r j))
    (hE : CarrierBox (toCarrier R carrier) (rawCarrierOfFlatBasis B)) :
    ¬ ∃ C D : BasisMatrix,
      IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
      (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
      (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
      IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D :=
  normalized_extension_excluded_from_chart_cover (complete_from_32 hroots)
    hB hBflat hE

#print axioms signs_recovered
#print axioms root_guard
#print axioms complete_from_32
#print axioms raw_pair_excluded_from_32
#print axioms normalized_extension_excluded_from_32

end Mub6.Numerical.CircleFullPrototype
