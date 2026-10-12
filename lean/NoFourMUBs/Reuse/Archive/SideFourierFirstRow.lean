import NoFourMUBs.Reuse.Archive.SideFourierMatrixAlgebra

/-! The normalized first row, proved without any reconstruction or analytic constants. -/
set_option autoImplicit false
namespace StrictReconstruction20261007
noncomputable section

theorem phaseFourier_first_row (M : Hadamard6.Mat3) (omega w : ℂ)
    (hquad : omega^2+omega+1=0) (h0 : M 0 0 = 1) (h1 : M 0 1 = 0) (h2 : M 0 2 = 0) :
    ∀ j, phaseFourierMatrix M omega w 0 j = 1 := by
  obtain ⟨e0,e1,e2⟩ := phaseFourier_row_entries M omega w hquad 0
  intro j
  fin_cases j
  · exact e0.trans (by simp [SideDFT.dft₀,h0,h1,h2])
  · exact e1.trans (by simp [SideDFT.dft₁,h0,h1,h2])
  · exact e2.trans (by simp [SideDFT.dft₂,h0,h1,h2])

#print axioms phaseFourier_first_row
end
end StrictReconstruction20261007
