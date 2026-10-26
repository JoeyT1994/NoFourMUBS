import KernelAtlas.WholeBall.SideBounds
import KernelAtlas.WholeBall.Scalar

/-! Finite centre norm certificates for both terms of the side Taylor bound. -/

open Matrix NoFourMUBs
open NoFourMUBs.SeedAtlas.Method.WholeBall
set_option backward.isDefEq.respectTransparency false

namespace NoFourMUBs.KernelAtlas.WholeBall

structure SideNormData where
  AU : MatrixBox 9 4
  AH2 : MatrixBox 9 16
  AX : MatrixBox 9 21
  gU : MatrixBox 1 4
  gH2 : MatrixBox 1 16
  gX : MatrixBox 1 21

def sideNormCheck (vertical : Bool) (G : MatrixBox 1 9)
    (U : MatrixBox 36 4) (H : MatrixBox 36 16) (X : Matrix (Fin 36) (Fin 21) ℚ)
    (D : SideNormData) (S : SideBounds ℚ) : Bool :=
  let A := MatrixBox.exact (sideProjection vertical)
  (A.mul U).enclosesCheck D.AU && (A.mul H).enclosesCheck D.AH2 &&
  (A.mul (MatrixBox.exact X)).enclosesCheck D.AX &&
  (G.mul D.AU).enclosesCheck D.gU && (G.mul D.AH2).enclosesCheck D.gH2 &&
  (G.mul D.AX).enclosesCheck D.gX &&
  D.AU.normCheck S.AU && D.AH2.normCheck S.AH2 && D.AX.normCheck S.AX &&
  D.gU.normCheck S.gU && D.gH2.normCheck S.gH2 && D.gX.normCheck S.gX

theorem sideNormCheck_sound {vertical : Bool} {Q : RMat6} {G : MatrixBox 1 9}
    {U : MatrixBox 36 4} {H : MatrixBox 36 16} {X : Matrix (Fin 36) (Fin 21) ℚ}
    {u : PhaseSeed} {h₂ : Matrix (Fin 36) (Fin 16) ℝ}
    (hg : G.Has (fun _ j => signatureGradient (sidePhase vertical Q) j))
    (hu : U.Has u) (hh : H.Has h₂) {D : SideNormData} {S : SideBounds ℚ}
    (h : sideNormCheck vertical G U H X D S = true) :
    SideFiniteBounds vertical Q u h₂ (realMatrix X) (realSide S) := by
  simp only [sideNormCheck, Bool.and_eq_true] at h
  rcases h with ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hAU, hAH⟩, hAX⟩, hgU⟩, hgH⟩, hgX⟩, nAU⟩, nAH⟩, nAX⟩, ngU⟩, ngH⟩, ngX⟩
  have hau := ((MatrixBox.has_exact (sideProjection vertical)).mul hu).enlarge hAU
  have hah := ((MatrixBox.has_exact (sideProjection vertical)).mul hh).enlarge hAH
  have hax := ((MatrixBox.has_exact (sideProjection vertical)).mul (MatrixBox.has_exact X)).enlarge hAX
  have hgu := (hg.mul hau).enlarge hgU
  have hgh := (hg.mul hah).enlarge hgH
  have hgx := (hg.mul hax).enlarge hgX
  refine ⟨MatrixBox.normCheck_sound hau nAU, MatrixBox.normCheck_sound hah nAH,
    MatrixBox.normCheck_sound hax nAX, ?_, ?_, ?_⟩
  · convert! MatrixBox.normCheck_sound hgu ngU using 1 <;> simp [Matrix.mul_assoc, realSide]
  · convert! MatrixBox.normCheck_sound hgh ngH using 1 <;> simp [Matrix.mul_assoc, realSide]
  · convert! MatrixBox.normCheck_sound hgx ngX using 1 <;> simp [Matrix.mul_assoc, realSide]

end NoFourMUBs.KernelAtlas.WholeBall
