import NoFourMUBs.Lib.Hadamard
import NoFourMUBs.Skeleton
import NoFourMUBs.Step2.TopologyCore
import NoFourMUBs.Step2.QuotientTopology

/-!
# Step 2: explicit remaining geometry and a direct coverage theorem

The matrix model, Hadamard predicate, equivalence relation and Tao predicate
are those of upstream; the Hadamard quotient is upstream's, restated in
`NoFourMUBs.Lib.Hadamard`.  The quotient carries its
natural topology.  No project axiom, admitted proof, or numerical predicate
is introduced here.  The unproved geometric obligations are `def ... : Prop`
and are explicit arguments of the assembly theorem.

The direct coverage theorem built on these statements,
`coverage_of_matched_density`, is in `Step2/FourierAnchor.lean`: it needs the
anchor transport and the Fourier family, which import this file.
-/

open Set Matrix Hadamard6
open NoFourMUBs.Step2Topology

noncomputable section

namespace NoFourMUBs.Step2

abbrev Seed := Fin 4 → Circle

def seedCorner (p : Seed) : Mat3 :=
  corner (p 0 : ℂ) (p 1 : ℂ) (p 2 : ℂ) (p 3 : ℂ)

def seedS (p : Seed) : ℂ := -(1 + (p 0 : ℂ) + (p 1 : ℂ))
def seedT (p : Seed) : ℂ := -(1 + (p 2 : ℂ) + (p 3 : ℂ))
def seedRho (p : Seed) : ℂ :=
  -(1 + (p 2 : ℂ) * star (p 0 : ℂ) + (p 3 : ℂ) * star (p 1 : ℂ))
def seedX (p : Seed) : ℝ := Complex.normSq (seedS p)
def seedY (p : Seed) : ℝ := Complex.normSq (seedT p)
def seedZ (p : Seed) : ℝ := Complex.normSq (seedRho p)
def seedP (p : Seed) : ℝ := seedX p + seedY p + seedZ p
def seedJ (p : Seed) : ℝ :=
  2 * (seedS p * seedRho p * star (seedT p)).re
def seedG (p : Seed) : ℝ := 27 - 3 * seedP p + seedJ p
def seedEta (p : Seed) : ℝ := 9 - seedP p + seedJ p
def seedChi (p : Seed) : ℝ :=
  seedX p * seedY p + seedX p * seedZ p + seedY p * seedZ p -
    seedX p * seedY p * seedZ p - (seedP p - 9) * (seedP p - 18) +
    (seedP p - 15) * seedJ p
def seedR (p : Seed) : ℝ := 4 * seedG p ^ 2 * seedEta p - seedChi p ^ 2

abbrev StrictSeed := {p : Seed // 0 < seedR p}

def leadingBlock (H : Mat6) : Mat3 := fun i j => H (.inl i) (.inl j)
def rightBlock (H : Mat6) : Mat3 := fun i j => H (.inl i) (.inr j)
def lowerBlock (H : Mat6) : Mat3 := fun i j => H (.inr i) (.inl j)

def permanent3 (B : Mat3) : ℂ :=
  ∑ σ : Equiv.Perm I3, ∏ i : I3, B i (σ i)

/-- The denominator-free signature equals `|det B|² Θ(B)` on phase blocks. -/
def sideSignature (B : Mat3) : ℂ :=
  -permanent3 B * B.det ^ 2 * ∏ i : I3, ∏ j : I3, star (B i j)

def Dephased (H : Mat6) : Prop :=
  (∀ j, H (.inl 0) j = 1) ∧ (∀ i, H i (.inl 0) = 1)

/-- The positive matched relation, with the full physical Hadamard condition
already imposed by the type of `H`. There are no auxiliary radical choices. -/
def Matched (s : StrictSeed) (H : Had6) : Prop :=
  Dephased H.1 ∧ leadingBlock H.1 = seedCorner s.1 ∧
  2 * sideSignature (rightBlock H.1) =
    (seedChi s.1 : ℂ) + (Real.sqrt (seedR s.1) : ℂ) * Complex.I ∧
  2 * sideSignature (lowerBlock H.1) =
    (seedChi s.1 : ℂ) - (Real.sqrt (seedR s.1) : ℂ) * Complex.I

/-- L1. Every strict seed has a physical positive matched completion.
This includes the lower-right block's entrywise flatness. -/
def MatchedExistence : Prop := ∀ s : StrictSeed, ∃ H : Had6, Matched s H

/-- L2. A positive matched fibre consists of a single equivalence class.
This does not claim that all completions at the seed are matched. -/
def MatchedUniqueness : Prop :=
  ∀ (s : StrictSeed) (H K : Had6), Matched s H → Matched s K → Equivalent H.1 K.1

def conjugateHadamard (H : Had6) : Had6 := ⟨conjM H.1, isHadamard_conjM H.2⟩

def MatchedClasses : Set HadamardClass6 :=
  {q | ∃ (s : StrictSeed) (H : Had6), Matched s H ∧ hadamardQuotient H = q}

def ConjugateMatchedClasses : Set HadamardClass6 :=
  {q | ∃ (s : StrictSeed) (H : Had6),
    Matched s H ∧ hadamardQuotient (conjugateHadamard H) = q}

/-- The Fourier representative in upstream's affine-Fourier indexing. -/
def fourierHadamard : Had6 :=
  ⟨affineFourierMatrix standardOmega 1 1,
    affineFourierMatrix_isHadamard standardOmega_isPrimitiveCubicPhase
      (by norm_num) (by norm_num)⟩

def fourierClass : HadamardClass6 := hadamardQuotient fourierHadamard

/-- G-density. The non-Tao classes lie in the closure of the two matched
images with the Fourier class adjoined. This is independent of all Records. -/
def MatchedDensityReach : Prop :=
  ∀ q : HadamardClass6, ¬ TaoClass q →
    q ∈ closure (({fourierClass} ∪ MatchedClasses) ∪ ConjugateMatchedClasses)

/-- The stronger, pointwise reach statement supplied by the intended dossier.
It implies `MatchedDensityReach`; it is not assumed by the assembly theorem. -/
def MatchedExactReach : Prop :=
  ∀ H : Had6, ¬ IsTaoOrbit H.1 →
    Equivalent H.1 fourierHadamard.1 ∨
    ∃ (s : StrictSeed) (K : Had6), Matched s K ∧
      (Equivalent H.1 K.1 ∨ Equivalent H.1 (conjM K.1))

/-- Step 1's finite maximum census is a separate input. -/
def MaximumCensus (anchors : Finset StrictSeed) : Prop :=
  ∀ (p : Seed) (hp : 0 < seedR p), IsLocalMax seedR p →
    (⟨p, hp⟩ : StrictSeed) ∈ anchors

@[fun_prop] theorem continuous_seedR : Continuous seedR := by
  unfold seedR seedG seedEta seedChi seedP seedJ seedX seedY seedZ seedS seedT seedRho
  fun_prop

@[fun_prop] theorem continuous_seedChi : Continuous seedChi := by
  unfold seedChi seedP seedJ seedX seedY seedZ seedS seedT seedRho
  fun_prop

@[fun_prop] theorem continuous_seedCorner : Continuous seedCorner := by
  apply continuous_pi
  intro i
  apply continuous_pi
  intro j
  fin_cases i <;> fin_cases j <;> simp [seedCorner, corner] <;> fun_prop

@[fun_prop] theorem continuous_leadingBlock : Continuous leadingBlock := by
  unfold leadingBlock
  fun_prop

@[fun_prop] theorem continuous_rightBlock : Continuous rightBlock := by
  unfold rightBlock
  fun_prop

@[fun_prop] theorem continuous_lowerBlock : Continuous lowerBlock := by
  unfold lowerBlock
  fun_prop

@[fun_prop] theorem continuous_permanent3 : Continuous permanent3 := by
  unfold permanent3
  fun_prop

@[fun_prop] theorem continuous_sideSignature : Continuous sideSignature := by
  unfold sideSignature
  fun_prop

/-- Closedness of the matched graph is elementary polynomial topology. -/
theorem isClosed_matched :
    IsClosed {z : StrictSeed × Had6 | Matched z.1 z.2} := by
  have hval : Continuous (fun z : StrictSeed × Had6 => z.2.1) :=
    continuous_subtype_val.comp continuous_snd
  unfold Matched Dephased
  simp only [Set.ofPred_and, Set.ofPred_forall]
  refine ((isClosed_iInter fun j => isClosed_eq
    ((continuous_apply_apply (Sum.inl (0 : I3)) j).comp hval) continuous_const).inter
    (isClosed_iInter fun i => isClosed_eq
      ((continuous_apply_apply i (Sum.inl (0 : I3))).comp hval) continuous_const)).inter ?_
  refine (isClosed_eq (by fun_prop) (by fun_prop)).inter ?_
  exact (isClosed_eq (by fun_prop) (by fun_prop)).inter
    (isClosed_eq (by fun_prop) (by fun_prop))

def matchedClassMap (hE : MatchedExistence) : StrictSeed → HadamardClass6 :=
  Step2.TopologyCore.relationValue Matched hE hadamardQuotient

theorem matchedClassMap_eq (hE : MatchedExistence) (hU : MatchedUniqueness)
    (s : StrictSeed) (H : Had6) (hH : Matched s H) :
    hadamardQuotient H = matchedClassMap hE s := by
  apply Quotient.sound
  exact hU s H (Classical.choose (hE s)) hH (Classical.choose_spec (hE s))

/-- Claim C, derived from L1 and L2 without auxiliary branch analysis. -/
theorem continuous_matchedClassMap (hE : MatchedExistence) (hU : MatchedUniqueness) :
    Continuous (matchedClassMap hE) := by
  apply Step2.TopologyCore.continuous_relationValue Matched isClosed_matched
    hadamardQuotient continuous_hadamardQuotient hE
  intro s H K hH hK
  exact Quotient.sound (hU s H K hH hK)

theorem exactReach_implies_densityReach (h : MatchedExactReach) : MatchedDensityReach := by
  intro q hq
  induction q using Quotient.inductionOn with
  | _ H =>
    apply subset_closure
    rcases h H hq with hF | ⟨s, K, hK, hHK | hHK⟩
    · exact Or.inl (Or.inl (Quotient.sound hF))
    · exact Or.inl (Or.inr ⟨s, K, hK, (Quotient.sound hHK).symm⟩)
    · exact Or.inr ⟨s, K, hK, (Quotient.sound hHK).symm⟩

def CoveredMatrix (Ball : Mat6 → Prop) (H : Mat6) : Prop :=
  ∃ G K, InGamma H G ∧ Ball K ∧ Equivalent G K

theorem equivalent_conjugate {H K : Mat6} (h : Equivalent H K) :
    Equivalent (conjM H) (conjM K) := by
  rcases h with ⟨σ, τ, r, c, hr, hc, h⟩
  refine ⟨σ, τ, (fun i => star (r i)), (fun j => star (c j)), ?_, ?_, ?_⟩
  · intro i
    simpa only [Complex.star_def, Complex.normSq_conj] using hr i
  · intro j
    simpa only [Complex.star_def, Complex.normSq_conj] using hc j
  · intro i j
    simpa [conjM, map_mul] using congrArg (starRingEnd ℂ) (h i j)

theorem equivalent_transposed {H K : Mat6} (h : Equivalent H K) :
    Equivalent Hᵀ Kᵀ := by
  rcases h with ⟨σ, τ, r, c, hr, hc, h⟩
  refine ⟨τ, σ, c, r, hc, hr, ?_⟩
  intro i j
  change K j i = c i * H (σ j) (τ i) * r j
  rw [h]
  ring

theorem coveredMatrix_of_equivalent {Ball : Mat6 → Prop} {H J : Mat6}
    (hHJ : Equivalent H J) (hJ : CoveredMatrix Ball J) : CoveredMatrix Ball H := by
  rcases hJ with ⟨G, K, hG, hK, hGK⟩
  rcases hG with rfl | rfl | rfl | rfl
  · exact ⟨H, K, Or.inl rfl, hK, equivalent_trans hHJ hGK⟩
  · exact ⟨conjM H, K, Or.inr (Or.inl rfl), hK,
      equivalent_trans (equivalent_conjugate hHJ) hGK⟩
  · exact ⟨Hᵀ, K, Or.inr (Or.inr (Or.inl rfl)), hK,
      equivalent_trans (equivalent_transposed hHJ) hGK⟩
  · exact ⟨conjM Hᵀ, K, Or.inr (Or.inr (Or.inr rfl)), hK,
      equivalent_trans (equivalent_conjugate (equivalent_transposed hHJ)) hGK⟩

@[simp] theorem conjugate_conjugate (H : Mat6) : conjM (conjM H) = H := by
  ext i j
  simp [conjM]

@[simp] theorem conjugate_transpose (H : Mat6) : conjM Hᵀ = (conjM H)ᵀ := rfl

theorem inGamma_after_conjugation {H G : Mat6} (h : InGamma H G) :
    InGamma (conjM H) G := by
  rcases h with rfl | rfl | rfl | rfl <;>
    simp [InGamma, conjugate_conjugate, conjugate_transpose]

theorem coveredMatrix_conjugate {Ball : Mat6 → Prop} {H : Mat6}
    (h : CoveredMatrix Ball H) : CoveredMatrix Ball (conjM H) := by
  rcases h with ⟨G, K, hG, hK, hGK⟩
  exact ⟨G, K, inGamma_after_conjugation hG, hK, hGK⟩

def CoveredClass (Ball : Mat6 → Prop) : HadamardClass6 → Prop :=
  Quotient.lift (fun H : Had6 => CoveredMatrix Ball H.1) (by
    intro H K hHK
    apply propext
    exact ⟨coveredMatrix_of_equivalent (equivalent_symm hHK),
      coveredMatrix_of_equivalent hHK⟩)

def CoveredClasses (Ball : Mat6 → Prop) : Set HadamardClass6 := {q | CoveredClass Ball q}

@[simp] theorem coveredClass_mk (Ball : Mat6 → Prop) (H : Had6) :
    CoveredClass Ball (hadamardQuotient H) ↔ CoveredMatrix Ball H.1 := Iff.rfl

/-- Supplied by the full Record boundary-transfer certificate and finite
compact Record images. It is deliberately on all classes, including Tao. -/
def RecordClopen (Ball : Mat6 → Prop) : Prop := IsClopen (CoveredClasses Ball)

/-- The Fourier class lies in a Record (`nonempty.py`); in the direct coverage route
`coverage_of_matched_density` (`Step2/FourierAnchor.lean`) it is the one membership input. -/
def FourierAnchorCertificate (Ball : Mat6 → Prop) : Prop :=
  CoveredMatrix Ball fourierHadamard.1

end NoFourMUBs.Step2
