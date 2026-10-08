/-! UNVERIFIED DRAFT. The bounded check exhausted the permitted heap before
successful elaboration. No declaration in this module is claimed as checked.
The useful checked improvement is in SixPhysical and SixLabelPhysical. -/
import CanonicalFilters
import PhysicalIntervals

/-!
An additive assembly interface for the actual four-basis predicate.

The inputs are finite worker cells, complete common-ray covers, exact rational
graph checks, reconstruction certificates, and a binding of EVERY frontier
leaf. No `NoFourMUB6`, arbitrary cell nonextension, or external D0 premise is
an input. Existing exact H×/Tao endpoints are recorded separately: importing
their full forests together with this worker exceeded the bounded checker.

This file drafts an assembly theorem, not a completed campaign instance.
In particular, no external numerical acceptance is coerced into one of these
certificate objects, and no pilot region is asserted to cover the frontier.
-/
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1200000

namespace Mub6.GlobalAssembly
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Classification.FourPhase Mub6.Classification.FourPhaseWorker
open Mub6.Classification.CanonicalCorners Mub6.Classification.KarlssonCompiler
open Mub6.Classification.CompactCover
noncomputable section

/-- A finite graph proof carries its physical common-ray cover separately.
The graph itself is computed conservatively from the exact rational boxes. -/
structure RayCertificate (E : CarrierRegion) where
  count : ℕ
  boxes : Fin count → RawRayBox
  complete : CompleteUniformRayCover E boxes
  small_checked : ∀ i, IntervalKernel.smallBoxCheck (boxes i) = true
  refutation : PairCertificate (Fin count)
  refutation_checked : checkPair
    (fun i j => IntervalKernel.orthPossible (boxes i) (boxes j))
    (fun i j => IntervalKernel.unbiasedPossible (boxes i) (boxes j))
    Finset.univ Finset.univ 5 refutation = true

theorem RayCertificate.graph_sound {E : CarrierRegion} (cert : RayCertificate E) :
    SoundRayGraph cert.boxes
      (fun i j => IntervalKernel.orthPossible (cert.boxes i) (cert.boxes j))
      (fun i j => IntervalKernel.unbiasedPossible (cert.boxes i) (cert.boxes j)) := by
  constructor
  · intro i j z w _ _ hz hw he
    exact IntervalKernel.orthPossible_sound hz hw he
  · intro i j z w _ _ hz hw he
    exact IntervalKernel.unbiasedPossible_sound hz hw he

theorem RayCertificate.no_raw_five_pair {E : CarrierRegion} (cert : RayCertificate E)
    {H : BasisMatrix} (hH : PhaseHadamard H) (hb : CarrierBox E H) :
    ¬ ∃ z w : Fin 5 → Vector, IsRawFivePair H z w :=
  checked_pair_excludes_raw_five_pair (cert.complete H hH hb)
    (fun i => IntervalKernel.smallBoxCheck_sound (cert.small_checked i))
    cert.graph_sound cert.refutation cert.refutation_checked

theorem RayCertificate.canonical_family {E : CarrierRegion} (cert : RayCertificate E)
    (c : Cell) : CanonicalFamilyExcluded c E := by
  intro H hH _ hb ho
  exact cert.no_raw_five_pair hH.1.1 hb
    (JointPhysical.raw_pair_of_occurs hH.1.2.1 ho)

/-- Each terminal has a typed justification; no arbitrary nonextension
proposition is a constructor argument. -/
inductive BranchCertificate (c : Cell) (E : CarrierRegion) : Type
  | rayGraph (cert : RayCertificate E)
  | eligibleCorner (p q : Perm) (checked : cornerCheck c E p q)
  | inconsistent (i j : Fin 6)
      (checked : (E i j).reHi < (E i j).reLo ∨ (E i j).imHi < (E i j).imLo)

theorem BranchCertificate.sound {c : Cell} {E : CarrierRegion}
    (cert : BranchCertificate c E) : CanonicalFamilyExcluded c E := by
  cases cert with
  | rayGraph cert => exact cert.canonical_family c
  | eligibleCorner p q checked => exact corner_family p q checked
  | inconsistent i j checked =>
      exact ordinary_family (JointPhysical.generic_family
        (inconsistent_carrier_excluded E i j checked))

/-- A cell has all sixteen reconstruction branches. Moment coverage and
output inclusion bind the finite recipes to actual physical matrices. -/
structure CellCertificate (c : Cell) where
  recipes : Recipes
  recipes_valid : recipes.Valid
  moments : MomentCover c (fun s => (recipes.horizontal s).moments)
    (fun s => (recipes.vertical s).moments)
  output : Branch → CarrierRegion
  output_includes : ∀ b i j,
    RectangleIncludes (physicalOutput c recipes b i j) (output b i j)
  terminals : ∀ b, BranchCertificate c (output b)

theorem CellCertificate.closes {c : Cell} (cert : CellCertificate c) :
    ¬ CanonicalLive c :=
  compiled_canonical_closes cert.recipes_valid cert.moments cert.output
    cert.output_includes (fun b => (cert.terminals b).sound)

/-- Every hypothetical physical quartet reaches an actual unresolved leaf
of any correctly typed full forest. An incomplete pilot forest cannot be
passed here: the input is indexed by every signed root. -/
theorem quartet_reaches_frontier
    (forest : (s : SeedSigns) → CanonicalTree (root s))
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    ∃ s : SeedSigns, ∃ c ∈ (forest s).frontier,
      ∃ H : BasisMatrix, CanonicalGood H ∧ c.Contains H ∧
        OccursAsQuartetEdge (normalizedNumerical H) := by
  classical
  have hroot : ∃ s : SeedSigns, CanonicalLive (root s) := by
    by_contra hnone
    have closed : ∀ s : SeedSigns, ¬ CanonicalLive (root s) := by
      intro s hs
      exact hnone ⟨s,hs⟩
    exact all_canonical_roots_closed_noFour closed ⟨B,hB⟩
  obtain ⟨s,hs⟩ := hroot
  obtain ⟨c,hc,hlive⟩ := (forest s).covers hs
  exact ⟨s,c,hc,hlive⟩

/-- A finite list of certified cells may be reused and may overlap. Every
remaining forest leaf must fit in a certified cell with the SAME signed
chart. The inclusion keeps closed endpoints and therefore all faces. -/
def FrontierBinding {n : ℕ}
    (forest : (s : SeedSigns) → CanonicalTree (root s)) (jobs : Fin n → Cell) : Prop :=
  ∀ s : SeedSigns, ∀ c ∈ (forest s).frontier, ∃ j : Fin n, c.Includes (jobs j)

/-- Final physical target. Open obligations occur in finite certificates and
the all-frontier binding, never as an assumed no-four-MUB proposition. -/
theorem noFourMUB6_of_certified_frontier {n : ℕ}
    (forest : (s : SeedSigns) → CanonicalTree (root s)) (jobs : Fin n → Cell)
    (certificates : ∀ j : Fin n, CellCertificate (jobs j))
    (binding : FrontierBinding forest jobs) : NoFourMUB6 := by
  apply all_canonical_roots_closed_noFour
  intro s hroot
  obtain ⟨c,hc,hlive⟩ := (forest s).covers hroot
  obtain ⟨j,hj⟩ := binding s c hc
  exact canonical_closed_mono hj (certificates j).closes hlive

example {n : ℕ} :
    ∀ (forest : (s : SeedSigns) → CanonicalTree (root s)) (jobs : Fin n → Cell),
      (∀ j : Fin n, CellCertificate (jobs j)) →
      FrontierBinding forest jobs → Mub6.NoFourMUB6 :=
  @noFourMUB6_of_certified_frontier n

#print axioms RayCertificate.graph_sound
#print axioms RayCertificate.no_raw_five_pair
#print axioms RayCertificate.canonical_family
#print axioms BranchCertificate.sound
#print axioms CellCertificate.closes
#print axioms quartet_reaches_frontier
#print axioms noFourMUB6_of_certified_frontier
#print noFourMUB6_of_certified_frontier
#print Mub6.NoFourMUB6
#print Mub6.IsMUBQuartet
#print Mub6.IsOrthonormalBasis
#print Mub6.IsUnbiased
end
end Mub6.GlobalAssembly
