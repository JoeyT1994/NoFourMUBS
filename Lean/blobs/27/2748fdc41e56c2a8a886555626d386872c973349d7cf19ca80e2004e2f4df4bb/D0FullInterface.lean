import ChartPartitionFast
import D0ArcSoundness


/-! Source-byte order uses the five low bits of each root number. A future
generated assembly supplies all 32 `CoveredState` proofs; this module checks
that this finite family covers every Boolean sign function and then closes the
physical statement through the existing D0 graph binding. -/
set_option autoImplicit false
namespace Mub6.Numerical.CircleFullD0

open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness

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

theorem root_guard : rootCheck d0Tables T = true := by
  decide +kernel

def chartCoverObligation : Prop := CompleteUniformRayCover
  (toCarrier R carrier) (fun v : Fin 120 => toRawRayBox R (targets v))

theorem complete_from_32
    (hroots : ∀ i : Fin 32,
      CoveredState d0Tables (toCarrier R carrier) T R targets
        (signsOf i) rootState) : chartCoverObligation := by
  have hall : ∀ signs : SignChart,
      CoveredState d0Tables (toCarrier R carrier) T R targets signs rootState := by
    intro signs
    simpa only [signs_recovered signs] using hroots (signIndex signs)
  exact all_chart_roots_sound (by decide) (by decide) root_guard hall


#print axioms complete_from_32
end Mub6.Numerical.CircleFullD0
