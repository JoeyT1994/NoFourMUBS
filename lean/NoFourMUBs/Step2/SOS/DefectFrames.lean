import NoFourMUBs.Step2.SOS.TargetFrames

/-! The defect in the coverage theorem is the average of the same raw
complementary-block defect. The only index change is the existing column
half-swap; the finite average is transported by Mathlib's equivalence. -/

noncomputable section
open scoped BigOperators
open Hadamard6 OAI.MUB6
namespace NoFourMUBs.Step2.SOS

def signatureDefect (H : CMatrix) (s : (Coord ↪ Coord) × (Coord ↪ Coord)) : ℝ :=
  Complex.normSq (sideSignature (sampledBlock H s.1 s.2 false) -
    star (sideSignature (sampledBlock H s.1 s.2 true)))

theorem physical_defect_average (H : Had6) :
    frameWeight * (∑ f : Frame,
      Complex.normSq (frameRight H f - star (frameLower H f))) =
      average (signatureDefect (FourierBridge.toOAI H.1)) := by
  let e : ((Coord ↪ Coord) × (Coord ↪ Coord)) ≃ Frame :=
    sampledFrame.trans (Equiv.prodCongr (Equiv.refl _)
      (Equiv.mulRight (Equiv.sumComm (Fin 3) (Fin 3))))
  change average (fun f : Frame =>
    Complex.normSq (frameRight H f - star (frameLower H f))) = _
  rw [← average_equiv e (fun f : Frame =>
    Complex.normSq (frameRight H f - star (frameLower H f)))]
  apply average_congr
  intro s
  simp only [Function.comp_apply, frameRight_raw, frameLower_raw]
  rfl

theorem signatureDefect_transpose (H : CMatrix)
    (s : (Coord ↪ Coord) × (Coord ↪ Coord)) :
    signatureDefect H.transpose s = signatureDefect H (s.2, s.1) := by
  change Complex.normSq
    (sideSignature (sampledBlock H s.2 s.1 false).transpose -
      star (sideSignature (sampledBlock H s.2 s.1 true).transpose)) = _
  simp only [sideSignature_transpose, signatureDefect]

theorem signatureDefect_average_transpose (H : CMatrix) :
    average (signatureDefect H.transpose) = average (signatureDefect H) := by
  calc
    _ = average (fun s : (Coord ↪ Coord) × (Coord ↪ Coord) =>
        signatureDefect H (s.2, s.1)) :=
      average_congr (signatureDefect_transpose H)
    _ = _ := average_equiv (Equiv.prodComm _ _) (signatureDefect H)

end NoFourMUBs.Step2.SOS
