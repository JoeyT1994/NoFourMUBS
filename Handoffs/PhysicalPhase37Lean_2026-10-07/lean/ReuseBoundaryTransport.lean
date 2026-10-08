import Mub6.Basic
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Analysis.Real.Sqrt

/-! B02 UNVERIFIED DRAFT integration overlay.

The shared physical definitions and rephasing theorems are imported once from
`Mub6.Basic`.  The Worker12-specific public API below is the exact bundled
suffix beginning at `Mub6.conjugateBasis`; no classification or published
nonextension premise is added here. -/
namespace Mub6

def conjugateBasis (B : BasisMatrix) : BasisMatrix := fun r i => star (B r i)

def transposeEdge (H : BasisMatrix) : BasisMatrix := fun i j => H j i

def adjointEdge (H : BasisMatrix) : BasisMatrix := fun i j => star (H j i)

theorem conjugateBasis_involutive (B : BasisMatrix) :
    conjugateBasis (conjugateBasis B) = B := by
  funext r i
  simp [conjugateBasis]

theorem transposeEdge_involutive (H : BasisMatrix) :
    transposeEdge (transposeEdge H) = H := rfl

theorem overlap_conjugate (B C : BasisMatrix) (i j : Fin 6) :
    overlap (conjugateBasis B) (conjugateBasis C) i j =
      star (overlap B C i j) := by
  simp [overlap, conjugateBasis]

theorem orthonormal_conjugate {B : BasisMatrix} (h : IsOrthonormalBasis B) :
    IsOrthonormalBasis (conjugateBasis B) := by
  intro i j
  rw [overlap_conjugate, h i j]
  split_ifs <;> simp

theorem unbiased_conjugate {B C : BasisMatrix} (h : IsUnbiased B C) :
    IsUnbiased (conjugateBasis B) (conjugateBasis C) := by
  intro i j
  rw [overlap_conjugate]
  simpa using h i j

theorem quartet_conjugate {B : Fin 4 → BasisMatrix} (h : IsMUBQuartet B) :
    IsMUBQuartet (fun a => conjugateBasis (B a)) := by
  exact ⟨fun a => orthonormal_conjugate (h.1 a),
    fun a b hab => unbiased_conjugate (h.2 a b hab)⟩

/-- Conjugate the physical configuration and reverse its two reference bases.
The resulting transition matrix is the transpose, with no rephasing hypothesis. -/
theorem conjugate_reverse_overlap (B C : BasisMatrix) :
    overlap (conjugateBasis C) (conjugateBasis B) = transposeEdge (overlap B C) := by
  funext i j
  rw [overlap_conjugate, overlap_swap]
  simp [transposeEdge]

/-- A normalized matrix is an actual ordered edge of some physical quartet. -/
def OccursAsQuartetEdge (H : BasisMatrix) : Prop :=
  ∃ B : Fin 4 → BasisMatrix, IsMUBQuartet B ∧
    ∃ a b : Fin 4, a ≠ b ∧ overlap (B a) (B b) = H

theorem occursAsQuartetEdge_transpose {H : BasisMatrix}
    (h : OccursAsQuartetEdge H) : OccursAsQuartetEdge (transposeEdge H) := by
  rcases h with ⟨B, hB, a, b, hab, hedge⟩
  refine ⟨(fun c => conjugateBasis (B c)), quartet_conjugate hB,
    b, a, Ne.symm hab, ?_⟩
  rw [conjugate_reverse_overlap, hedge]

theorem occursAsQuartetEdge_transpose_iff (H : BasisMatrix) :
    OccursAsQuartetEdge (transposeEdge H) ↔ OccursAsQuartetEdge H := by
  constructor
  · intro h
    exact occursAsQuartetEdge_transpose h
  · exact occursAsQuartetEdge_transpose

/-- A Fourier-family exclusion, once bound to actual normalized edges,
automatically excludes the transposed family. The exclusion is a premise. -/
theorem quartet_exclusion_transpose {H : BasisMatrix}
    (hexcluded : ¬ OccursAsQuartetEdge H) :
    ¬ OccursAsQuartetEdge (transposeEdge H) := by
  exact fun h => hexcluded ((occursAsQuartetEdge_transpose_iff H).1 h)

theorem occursAsQuartetEdge_conjugate {H : BasisMatrix}
    (h : OccursAsQuartetEdge H) : OccursAsQuartetEdge (conjugateBasis H) := by
  rcases h with ⟨B, hB, a, b, hab, hedge⟩
  refine ⟨(fun c => conjugateBasis (B c)), quartet_conjugate hB, a, b, hab, ?_⟩
  funext i j
  rw [overlap_conjugate]
  exact congrArg star (congrFun (congrFun hedge i) j)

theorem occursAsQuartetEdge_adjoint {H : BasisMatrix}
    (h : OccursAsQuartetEdge H) : OccursAsQuartetEdge (adjointEdge H) := by
  rcases h with ⟨B, hB, a, b, hab, hedge⟩
  refine ⟨B, hB, b, a, Ne.symm hab, ?_⟩
  funext i j
  rw [overlap_swap]
  exact congrArg star (congrFun (congrFun hedge j) i)

#print axioms conjugateBasis_involutive
#print axioms transposeEdge_involutive
#print axioms overlap_conjugate
#print axioms orthonormal_conjugate
#print axioms unbiased_conjugate
#print axioms quartet_conjugate
#print axioms conjugate_reverse_overlap
#print axioms occursAsQuartetEdge_transpose
#print axioms occursAsQuartetEdge_transpose_iff
#print axioms quartet_exclusion_transpose
#print axioms occursAsQuartetEdge_conjugate
#print axioms occursAsQuartetEdge_adjoint

def identityBasis : BasisMatrix := fun i j => if i = j then 1 else 0

abbrev Matrix6 := Matrix (Fin 6) (Fin 6) ℂ

theorem overlap_eq_conjTranspose_mul (B C : BasisMatrix) :
    overlap B C = (Matrix.conjTranspose (Matrix.of B)) * Matrix.of C := rfl

theorem orthonormal_columnGram {B : BasisMatrix} (h : IsOrthonormalBasis B) :
    (Matrix.conjTranspose (Matrix.of B)) * Matrix.of B = 1 := by
  ext i j
  exact h i j

theorem orthonormal_rowGram {B : BasisMatrix} (h : IsOrthonormalBasis B) :
    Matrix.of B * (Matrix.conjTranspose (Matrix.of B)) = 1 :=
  mul_eq_one_comm.mp (orthonormal_columnGram h)

/-- Common change to any actual orthonormal reference basis preserves every
complex overlap, not just its modulus. -/
theorem overlap_rebase {A : BasisMatrix} (hA : IsOrthonormalBasis A)
    (B C : BasisMatrix) :
    overlap (overlap A B) (overlap A C) = overlap B C := by
  change (Matrix.conjTranspose ((Matrix.conjTranspose (Matrix.of A)) * Matrix.of B)) *
    ((Matrix.conjTranspose (Matrix.of A)) * Matrix.of C) =
      (Matrix.conjTranspose (Matrix.of B)) * Matrix.of C
  rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose]
  calc
    _ = (Matrix.conjTranspose (Matrix.of B)) *
        ((Matrix.of A * Matrix.conjTranspose (Matrix.of A)) * Matrix.of C) := by
      simp only [Matrix.mul_assoc]
    _ = _ := by rw [orthonormal_rowGram hA, Matrix.one_mul]

theorem quartet_rebase {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (a : Fin 4) : IsMUBQuartet (fun c => overlap (B a) (B c)) := by
  constructor
  · intro c i j
    change overlap (overlap (B a) (B c)) (overlap (B a) (B c)) i j = _
    rw [overlap_rebase (hB.1 a)]
    exact hB.1 c i j
  · intro c d hcd i j
    change Complex.normSq
      (overlap (overlap (B a) (B c)) (overlap (B a) (B d)) i j) = _
    rw [overlap_rebase (hB.1 a)]
    exact hB.2 c d hcd i j

theorem overlap_self_eq_identity {B : BasisMatrix} (hB : IsOrthonormalBasis B) :
    overlap B B = identityBasis := by
  funext i j
  exact hB i j

theorem overlap_identity_left (H : BasisMatrix) : overlap identityBasis H = H := by
  funext i j
  simp [overlap, identityBasis]

/-- The usual published pair-extension formulation, with arbitrary labels
for the distinguished two bases; all four bases remain present. -/
def ExtendsStandardPair (H : BasisMatrix) : Prop :=
  ∃ B : Fin 4 → BasisMatrix, IsMUBQuartet B ∧
    ∃ a b : Fin 4, a ≠ b ∧ B a = identityBasis ∧ B b = H

/-- Exact physical binding of a published standard-pair exclusion to any
actual ordered transition edge. No classification or exclusion is assumed. -/
theorem occursAsQuartetEdge_iff_extendsStandardPair (H : BasisMatrix) :
    OccursAsQuartetEdge H ↔ ExtendsStandardPair H := by
  constructor
  · rintro ⟨B, hB, a, b, hab, hedge⟩
    exact ⟨(fun c => overlap (B a) (B c)), quartet_rebase hB a,
      a, b, hab, overlap_self_eq_identity (hB.1 a), hedge⟩
  · rintro ⟨B, hB, a, b, hab, ha, hb⟩
    refine ⟨B, hB, a, b, hab, ?_⟩
    rw [ha, hb, overlap_identity_left]

theorem extendsStandardPair_transpose_iff (H : BasisMatrix) :
    ExtendsStandardPair (transposeEdge H) ↔ ExtendsStandardPair H := by
  rw [← occursAsQuartetEdge_iff_extendsStandardPair,
    ← occursAsQuartetEdge_iff_extendsStandardPair,
    occursAsQuartetEdge_transpose_iff]

/-- Apply this to each normalized Fourier matrix. The sole research premise
here is the published standard-pair exclusion itself. -/
theorem standardPair_exclusion_transpose {H : BasisMatrix}
    (hexcluded : ¬ ExtendsStandardPair H) :
    ¬ ExtendsStandardPair (transposeEdge H) :=
  fun h => hexcluded ((extendsStandardPair_transpose_iff H).1 h)

#print axioms overlap_eq_conjTranspose_mul
#print axioms orthonormal_columnGram
#print axioms orthonormal_rowGram
#print axioms overlap_rebase
#print axioms quartet_rebase
#print axioms overlap_self_eq_identity
#print axioms overlap_identity_left
#print axioms occursAsQuartetEdge_iff_extendsStandardPair
#print axioms extendsStandardPair_transpose_iff
#print axioms standardPair_exclusion_transpose

def relabelColumns (p : Equiv.Perm (Fin 6)) (B : BasisMatrix) : BasisMatrix :=
  fun r i => B r (p i)

theorem overlap_relabelColumns (B C : BasisMatrix)
    (p q : Equiv.Perm (Fin 6)) (i j : Fin 6) :
    overlap (relabelColumns p B) (relabelColumns q C) i j =
      overlap B C (p i) (q j) := rfl

theorem orthonormal_relabelColumns {B : BasisMatrix} (hB : IsOrthonormalBasis B)
    (p : Equiv.Perm (Fin 6)) : IsOrthonormalBasis (relabelColumns p B) := by
  intro i j
  rw [overlap_relabelColumns, hB]
  simp only [p.injective.eq_iff]

theorem quartet_relabelColumns {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (p : Fin 4 → Equiv.Perm (Fin 6)) :
    IsMUBQuartet (fun a => relabelColumns (p a) (B a)) := by
  constructor
  · exact fun a => orthonormal_relabelColumns (hB.1 a) (p a)
  · intro a b hab i j
    exact hB.2 a b hab (p a i) (p b j)

def monomialEdge (p q : Equiv.Perm (Fin 6)) (r c : Fin 6 → ℂ)
    (H : BasisMatrix) : BasisMatrix := fun i j => r i * H (p i) (q j) * c j

/-- Row/column monomials on an edge are independent relabelings and ray
phases of its two actual reference bases. All other bases are retained. -/
theorem occursAsQuartetEdge_monomial {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (p q : Equiv.Perm (Fin 6)) (r c : Fin 6 → ℂ)
    (hr : ∀ i, Complex.normSq (r i) = 1)
    (hc : ∀ j, Complex.normSq (c j) = 1) :
    OccursAsQuartetEdge (monomialEdge p q r c H) := by
  rcases hH with ⟨B, hB, a, b, hab, hedge⟩
  let perms : Fin 4 → Equiv.Perm (Fin 6) :=
    fun k => if k = a then p else if k = b then q else Equiv.refl _
  let phases : Fin 4 → Fin 6 → ℂ :=
    fun k i => if k = a then star (r i) else if k = b then c i else 1
  have hphases : ∀ k i, Complex.normSq (phases k i) = 1 := by
    intro k i
    dsimp [phases]
    split_ifs <;> simp [hr, hc]
  let B' : Fin 4 → BasisMatrix :=
    fun k => rephase (fun _ => 1) (phases k) (relabelColumns (perms k) (B k))
  have hB' : IsMUBQuartet B' :=
    quartet_rephase (quartet_relabelColumns hB perms) (fun _ => 1) phases
      (by intro i; simp) hphases
  refine ⟨B', hB', a, b, hab, ?_⟩
  funext i j
  change overlap (rephase (fun _ => 1) (phases a) (relabelColumns (perms a) (B a)))
    (rephase (fun _ => 1) (phases b) (relabelColumns (perms b) (B b))) i j = _
  rw [overlap_rephase _ _ _ _ _ (by intro k; simp), overlap_relabelColumns, hedge]
  simp [phases, perms, hab, Ne.symm hab, monomialEdge]

def MonomialEquivalent (H K : BasisMatrix) : Prop :=
  ∃ (p q : Equiv.Perm (Fin 6)) (r c : Fin 6 → ℂ),
    (∀ i, Complex.normSq (r i) = 1) ∧
    (∀ j, Complex.normSq (c j) = 1) ∧ K = monomialEdge p q r c H

/-- Only the exclusion of the target representative is a research premise.
The monomial witness is explicit and physically realized on the quartet. -/
theorem quartet_exclusion_of_monomialEquivalent {H K : BasisMatrix}
    (hHK : MonomialEquivalent H K) (hK : ¬ OccursAsQuartetEdge K) :
    ¬ OccursAsQuartetEdge H := by
  rcases hHK with ⟨p, q, r, c, hr, hc, rfl⟩
  exact fun hH => hK (occursAsQuartetEdge_monomial hH p q r c hr hc)

theorem standardPair_exclusion_of_monomialEquivalent {H K : BasisMatrix}
    (hHK : MonomialEquivalent H K) (hK : ¬ ExtendsStandardPair K) :
    ¬ ExtendsStandardPair H := by
  rw [← occursAsQuartetEdge_iff_extendsStandardPair] at hK ⊢
  exact quartet_exclusion_of_monomialEquivalent hHK hK

#print axioms overlap_relabelColumns
#print axioms orthonormal_relabelColumns
#print axioms quartet_relabelColumns
#print axioms occursAsQuartetEdge_monomial
#print axioms quartet_exclusion_of_monomialEquivalent
#print axioms standardPair_exclusion_of_monomialEquivalent

def phaseScale (s : ℝ) (H : BasisMatrix) : BasisMatrix :=
  fun i j => (s : ℂ) * H i j

/-- The phase-matrix convention used in the analytic boundary packet. -/
def IsPhaseHadamard6 (H : BasisMatrix) : Prop :=
  (∀ i j, Complex.normSq (H i j) = 1) ∧
    Matrix.of H * Matrix.conjTranspose (Matrix.of H) = (6 : ℂ) • (1 : Matrix6)

/-- The normalization bridge retains the actual complex overlap and requires
exactly s²=6. No numerical square-root computation enters the proof. -/
theorem actual_edge_phaseHadamard {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) (s : ℝ) (hs : s ^ 2 = 6) :
    IsPhaseHadamard6 (phaseScale s (overlap (B a) (B b))) := by
  have hEdge : IsOrthonormalBasis (overlap (B a) (B b)) :=
    (quartet_rebase hB a).1 b
  constructor
  · intro i j
    simp only [phaseScale, Complex.normSq_mul, Complex.normSq_ofReal]
    rw [hB.2 a b hab i j]
    have hs' : s * s = 6 := by simpa only [pow_two] using hs
    rw [hs']
    norm_num
  · change ((s : ℂ) • Matrix.of (overlap (B a) (B b))) *
      Matrix.conjTranspose ((s : ℂ) • Matrix.of (overlap (B a) (B b))) = _
    simp only [Matrix.conjTranspose_smul, Matrix.smul_mul, Matrix.mul_smul,
      smul_smul, Complex.star_def, Complex.conj_ofReal]
    rw [orthonormal_rowGram hEdge]
    have hsC : (s : ℂ) * (s : ℂ) = 6 := by
      exact_mod_cast (show s * s = 6 by simpa only [pow_two] using hs)
    rw [hsC]

theorem phaseScale_transpose (s : ℝ) (H : BasisMatrix) :
    phaseScale s (transposeEdge H) = transposeEdge (phaseScale s H) := rfl

theorem phaseScale_monomial (s : ℝ) (H : BasisMatrix)
    (p q : Equiv.Perm (Fin 6)) (r c : Fin 6 → ℂ) :
    phaseScale s (monomialEdge p q r c H) =
      monomialEdge p q r c (phaseScale s H) := by
  funext i j
  simp only [phaseScale, monomialEdge]
  ring

theorem actual_edge_sqrt_six_phaseHadamard
    {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) :
    IsPhaseHadamard6 (phaseScale (Real.sqrt 6) (overlap (B a) (B b))) := by
  exact actual_edge_phaseHadamard hB a b hab (Real.sqrt 6)
    (Real.sq_sqrt (by norm_num))

theorem phaseScale_injective {s : ℝ} (hs : s ≠ 0) :
    Function.Injective (phaseScale s) := by
  have hsC : (s : ℂ) ≠ 0 := by exact_mod_cast hs
  intro H K h
  funext i j
  exact mul_left_cancel₀ hsC (congrFun (congrFun h i) j)

/-- A phase-matrix monomial witness transfers to normalized matrices with
the very same permutations and phases; the nonzero scale is the only guard. -/
theorem monomialEquivalent_of_phaseScale {s : ℝ} (hs : s ≠ 0)
    {H K : BasisMatrix} (hHK : MonomialEquivalent (phaseScale s H) (phaseScale s K)) :
    MonomialEquivalent H K := by
  rcases hHK with ⟨p, q, r, c, hr, hc, heq⟩
  refine ⟨p, q, r, c, hr, hc, phaseScale_injective hs ?_⟩
  rw [phaseScale_monomial]
  exact heq

#print axioms actual_edge_phaseHadamard
#print axioms phaseScale_transpose
#print axioms phaseScale_monomial
#print axioms actual_edge_sqrt_six_phaseHadamard
#print axioms phaseScale_injective
#print axioms monomialEquivalent_of_phaseScale

end Mub6
