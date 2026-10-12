import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Model

set_option autoImplicit false
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003
variable {R : Type*} [CommRing R]

/-- Strip the empty leading c row using the existing Horner evaluator. -/
theorem sliceValue_eq_c_mul_tail (b c d : R) (p : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY)
    (h : p.map (fun row => row.headD []) = List.replicate p.length []) :
    sliceValue b c d p = c * sliceValue b c d (p.map List.tail) := by
  have hi : CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d p =
      Coefficients.scale c (CriticalZeroSumAssembly20261003.DenseCoefficients.interpret c d (p.map List.tail)) := by
    induction p with
    | nil => rfl
    | cons row rest ih =>
      change row.headD [] :: rest.map (fun q => q.headD []) =
        [] :: List.replicate rest.length [] at h
      have ht := (List.cons.inj h).2
      cases row with
      | nil =>
        simp only [List.map_cons, List.tail_nil, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
          IntegerReflector.evalII, ih ht, Coefficients.scale, List.map_cons, mul_zero]
      | cons first tail =>
        have hf : first = [] := (List.cons.inj h).1
        subst first
        simp only [List.map_cons, List.tail_cons, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
          IntegerReflector.evalII, IntegerReflector.evalI, zero_add, ih ht,
          Coefficients.scale, List.map_cons]
  unfold sliceValue
  rw [hi, Coefficients.eval_scale]

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
