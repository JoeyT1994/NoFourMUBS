import Worker12.InjectedRouting

/-! Exact target propositions, not axioms or discharged imports.
Every definition below states an obligation; only separately proved theorems
may be used as evidence of that obligation. -/

namespace Worker12

def unsplitMatrix (H : Hadamard6.Mat6) : Mub6.BasisMatrix :=
  fun i j ↦ H (splitIndex.symm i) (splitIndex.symm j)

def PrimitiveCubicPhase (ω : ℂ) : Prop :=
  Complex.normSq ω = 1 ∧ ω ^ 2 + ω + 1 = 0

def fourier3 (ω : ℂ) : Hadamard6.Mat3 :=
  !![1, 1, 1; 1, ω, ω ^ 2; 1, ω ^ 2, ω]

def phaseVector (p q : ℂ) : Fin 3 → ℂ := ![1, p, q]

/-- Block representative [F, D(p,q)F; F, -D(p,q)F]. Its binding to a
published Fourier representative is a separate exact equivalence obligation. -/
def fourierPhase (ω p q : ℂ) : Mub6.BasisMatrix :=
  let F := fourier3 ω
  let DF : Hadamard6.Mat3 := fun i j ↦ phaseVector p q i * F i j
  unsplitMatrix (Matrix.fromBlocks F DF F (-DF))

/-- Both primitive roots are retained. -/
def taoPhase (ω : ℂ) : Mub6.BasisMatrix :=
  unsplitMatrix (Matrix.fromBlocks
    !![1, 1, 1; 1, 1, ω; 1, ω, 1]
    !![1, 1, 1; ω, ω ^ 2, ω ^ 2; ω ^ 2, ω ^ 2, ω]
    !![1, ω, ω ^ 2; 1, ω ^ 2, ω ^ 2; 1, ω ^ 2, ω]
    !![1, ω, ω ^ 2; ω, 1, ω; ω ^ 2, ω, 1])

noncomputable def physicalNormalize (H : Mub6.BasisMatrix) : Mub6.BasisMatrix :=
  Mub6.phaseScale (1 / Real.sqrt 6) H

def FourierOrTransposeOrTao (H : Mub6.BasisMatrix) : Prop :=
  (∃ ω p q : ℂ, PrimitiveCubicPhase ω ∧ Complex.normSq p = 1 ∧ Complex.normSq q = 1 ∧
    (Mub6.MonomialEquivalent H (fourierPhase ω p q) ∨
     Mub6.MonomialEquivalent H (Mub6.transposeEdge (fourierPhase ω p q)))) ∨
  (∃ ω : ℂ, PrimitiveCubicPhase ω ∧ Mub6.MonomialEquivalent H (taoPhase ω))

def StrongBoundaryRouting : Prop :=
  ∀ H : Mub6.BasisMatrix, Mub6.IsPhaseHadamard6 H →
    ∀ rows cols : Fin 3 ↪ Fin 6,
    (Complex.normSq (selectedMinor H rows cols).det = 0 ∨
      Complex.normSq (selectedMinor H rows cols).det = 27) →
    FourierOrTransposeOrTao H

def FourierQuartetExclusion : Prop :=
  ∀ ω p q : ℂ, PrimitiveCubicPhase ω → Complex.normSq p = 1 → Complex.normSq q = 1 →
    ¬ Mub6.OccursAsQuartetEdge (physicalNormalize (fourierPhase ω p q))

def TaoQuartetExclusion : Prop :=
  ∀ ω : ℂ, PrimitiveCubicPhase ω →
    ¬ Mub6.OccursAsQuartetEdge (physicalNormalize (taoPhase ω))

def hTimes : Matrix (Fin 6) (Fin 6) ℂ :=
  !![1, 1, 1, 1, 1, 1;
     1, -1, 1, Complex.I, -1, -Complex.I;
     1, -1, -1, -Complex.I, Complex.I, 1;
     1, Complex.I, -Complex.I, -1, -Complex.I, Complex.I;
     1, 1, Complex.I, -Complex.I, -1, -1;
     1, -Complex.I, -1, Complex.I, 1, -1]

def d0ColumnOrder : Fin 6 → Fin 6 := ![3, 5, 4, 0, 2, 1]

def d0Phase : Mub6.BasisMatrix :=
  fun i j ↦ star (hTimes i 3) * hTimes i (d0ColumnOrder j)

def D0QuartetExclusion : Prop :=
  ¬ Mub6.OccursAsQuartetEdge (physicalNormalize d0Phase)

def r0 : Matrix (Fin 3) (Fin 6) ℂ :=
  !![1, 1, 1, 1, 1, 1;
     1, -1, 1, Complex.I, -1, -Complex.I;
     1, -1, -1, -Complex.I, Complex.I, 1]

abbrev PartialPhaseBasis := Matrix (Fin 6) (Fin 3) ℂ

def IsPartialPhaseBasis (A : PartialPhaseBasis) : Prop :=
  Hadamard6.EntrywiseUnit A ∧ A.conjTranspose * A = (6 : ℂ) • 1

def IsStrictPartialPhaseBasis (A : PartialPhaseBasis) : Prop :=
  IsPartialPhaseBasis A ∧ ∀ rows : Fin 3 ↪ Fin 6,
    0 < Complex.normSq (A.submatrix rows id).det ∧
    Complex.normSq (A.submatrix rows id).det < 27

def IsPhaseCompletion (A B : PartialPhaseBasis) : Prop :=
  IsPartialPhaseBasis B ∧ A.conjTranspose * B = 0

def ProjectivelySameCompletion (B C : PartialPhaseBasis) : Prop :=
  ∃ (p : Equiv.Perm (Fin 3)) (c : Fin 3 → ℂ),
    (∀ j, Complex.normSq (c j) = 1) ∧ ∀ i j, C i j = B i (p j) * c j

def StrictCompletionUniqueness : Prop :=
  ∀ A : PartialPhaseBasis, IsStrictPartialPhaseBasis A →
    ∀ B C : PartialPhaseBasis, IsPhaseCompletion A B → IsPhaseCompletion A C →
      ProjectivelySameCompletion B C

def R0CompletionUniqueness : Prop :=
  ∀ B C : PartialPhaseBasis, IsPhaseCompletion r0.transpose B →
    IsPhaseCompletion r0.transpose C → ProjectivelySameCompletion B C

def gridIndex (i : Fin 3) (k : Fin 2) : Fin 6 :=
  ⟨2 * i.val + k.val, by omega⟩

def HasKarlssonGrid (H : Mub6.BasisMatrix) : Prop :=
  ∃ p q : Equiv.Perm (Fin 6), ∀ i j : Fin 3,
    Hadamard6.IsHadamard2 (fun k l ↦ H (p (gridIndex i k)) (q (gridIndex j l)))

def KarlssonGridExistence : Prop :=
  ∀ H : Mub6.BasisMatrix, Mub6.IsPhaseHadamard6 H → HasHadamardTwoByTwo H →
    HasKarlssonGrid H

end Worker12
