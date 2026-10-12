import NoFourMUBs.Step2.Frames
import NoFourMUBs.Step2.AnchorTransport

/-! Connect the frame hypothesis to actual complementary blocks. The existing
phase-invariance theorem supplies the entire dephasing argument, including
singular blocks. No determinant is divided out. -/

open Matrix Hadamard6 ComplexConjugate
noncomputable section
namespace NoFourMUBs.Step2

theorem sideSignature_dephase_submatrix {H : Mat6} (hH : EntrywiseUnit H)
    (r c : Fin 3 → I6) :
    sideSignature ((dephase H).submatrix r c) = sideSignature (H.submatrix r c) := by
  exact sideSignature_scale (H.submatrix r c)
    (fun i => dephaseRowFactor H (r i)) (fun j => dephaseColumnFactor H (c j))
    (fun i => by rw [Complex.mul_conj, dephaseRowFactor_unit hH, Complex.ofReal_one])
    (fun j => by rw [Complex.mul_conj, dephaseColumnFactor_unit hH, Complex.ofReal_one])

theorem frameRight_raw (H : Had6) (f : Frame) :
    frameRight H f = sideSignature (rightBlock (permuted H f).1) :=
  sideSignature_dephase_submatrix (permuted H f).2.1 Sum.inl Sum.inr

theorem frameLower_raw (H : Had6) (f : Frame) :
    frameLower H f = sideSignature (lowerBlock (permuted H f).1) :=
  sideSignature_dephase_submatrix (permuted H f).2.1 Sum.inr Sum.inl

theorem sameLabels_raw {H : Had6} (h : SameLabels H) (f : Frame) :
    sideSignature (rightBlock (permuted H f).1) =
      sideSignature (lowerBlock (permuted H f).1) := by
  simpa only [frameRight_raw, frameLower_raw] using h f

/-- Swapping the column halves turns the two adjacent side blocks into an
arbitrary complementary diagonal pair. This is the hypothesis used by the
existing complementary-Psi certificate, in the repository's matrix model. -/
theorem sameLabels_complementary {H : Had6} (h : SameLabels H)
    (p q : Equiv.Perm I6) :
    sideSignature (fun i j => H.1 (p (.inl i)) (q (.inl j))) =
      sideSignature (fun i j => H.1 (p (.inr i)) (q (.inr j))) := by
  exact sameLabels_raw h ⟨p, (Equiv.sumComm (Fin 3) (Fin 3)).trans q⟩

end NoFourMUBs.Step2
