import NoFourMUBs.Reuse.Archive.EndpointSupport

namespace Worker12
set_option maxHeartbeats 4000000
theorem endpoint_0101_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 0 1 0 1 i j) = 1) := by
  have hf : cubicSeed ω 0 1 0 1 3 3 =
      (-1 + ((1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 0 1 0 1 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_0101_nonphysical

theorem endpoint_0110_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 0 1 1 0 i j) = 1) := by
  have hf : cubicSeed ω 0 1 1 0 3 4 =
      ((-2 / 3 : ℂ) + ((-1 / 3 : ℂ)) * ω ^ 1) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 0 1 1 0 3 4 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 4
  rw [hz] at h
  norm_num at h
#print axioms endpoint_0110_nonphysical

theorem endpoint_0122_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 0 1 2 2 i j) = 1) := by
  have hf : cubicSeed ω 0 1 2 2 3 3 =
      ((-2 / 3 : ℂ) + ((1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 0 1 2 2 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_0122_nonphysical

theorem endpoint_0202_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 0 2 0 2 i j) = 1) := by
  have hf : cubicSeed ω 0 2 0 2 3 4 =
      (-1 + ((2 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 0 2 0 2 3 4 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 4
  rw [hz] at h
  norm_num at h
#print axioms endpoint_0202_nonphysical

theorem endpoint_0211_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 0 2 1 1 i j) = 1) := by
  have hf : cubicSeed ω 0 2 1 1 3 3 =
      ((-2 / 3 : ℂ) + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 0 2 1 1 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_0211_nonphysical

theorem endpoint_0220_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 0 2 2 0 i j) = 1) := by
  have hf : cubicSeed ω 0 2 2 0 3 3 =
      (-1 + ((2 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 0 2 2 0 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_0220_nonphysical

theorem endpoint_1001_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 1 0 0 1 i j) = 1) := by
  have hf : cubicSeed ω 1 0 0 1 3 4 =
      (-1 + ((1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 1 0 0 1 3 4 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 4
  rw [hz] at h
  norm_num at h
#print axioms endpoint_1001_nonphysical

theorem endpoint_1010_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 1 0 1 0 i j) = 1) := by
  have hf : cubicSeed ω 1 0 1 0 3 3 =
      (-1 + ((1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 1 0 1 0 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_1010_nonphysical

theorem endpoint_1022_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 1 0 2 2 i j) = 1) := by
  have hf : cubicSeed ω 1 0 2 2 3 3 =
      ((-2 / 3 : ℂ) + ((1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 1 0 2 2 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_1022_nonphysical

theorem endpoint_1102_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 1 1 0 2 i j) = 1) := by
  have hf : cubicSeed ω 1 1 0 2 3 3 =
      ((-2 / 3 : ℂ) + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 1 1 0 2 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_1102_nonphysical

theorem endpoint_1111_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 1 1 1 1 i j) = 1) := by
  have hf : cubicSeed ω 1 1 1 1 3 4 =
      ((-1 / 3 : ℂ) + ((-1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 1 1 1 1 3 4 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 4
  rw [hz] at h
  norm_num at h
#print axioms endpoint_1111_nonphysical

theorem endpoint_1120_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 1 1 2 0 i j) = 1) := by
  have hf : cubicSeed ω 1 1 2 0 3 3 =
      ((-2 / 3 : ℂ) + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 1 1 2 0 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_1120_nonphysical

theorem endpoint_2002_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 2 0 0 2 i j) = 1) := by
  have hf : cubicSeed ω 2 0 0 2 3 3 =
      (-1 + ((2 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 2 0 0 2 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_2002_nonphysical

theorem endpoint_2011_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 2 0 1 1 i j) = 1) := by
  have hf : cubicSeed ω 2 0 1 1 3 3 =
      ((-2 / 3 : ℂ) + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 2 0 1 1 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_2011_nonphysical

theorem endpoint_2020_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 2 0 2 0 i j) = 1) := by
  have hf : cubicSeed ω 2 0 2 0 3 4 =
      ((-2 / 3 : ℂ) + ((1 / 3 : ℂ)) * ω ^ 1 + ((-2 / 3 : ℂ)) * ω ^ 2) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 2 0 2 0 3 4 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 4
  rw [hz] at h
  norm_num at h
#print axioms endpoint_2020_nonphysical

theorem endpoint_2201_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 2 2 0 1 i j) = 1) := by
  have hf : cubicSeed ω 2 2 0 1 3 3 =
      ((-2 / 3 : ℂ) + ((1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 2 2 0 1 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_2201_nonphysical

theorem endpoint_2210_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 2 2 1 0 i j) = 1) := by
  have hf : cubicSeed ω 2 2 1 0 3 3 =
      ((-2 / 3 : ℂ) + ((1 / 3 : ℂ)) * ω ^ 1 + ((-1 / 3 : ℂ)) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 3) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 2 2 1 0 3 3 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 3
  rw [hz] at h
  norm_num at h
#print axioms endpoint_2210_nonphysical

theorem endpoint_2222_nonphysical {ω : ℂ}
    (hω : ω ^ 2 + ω + 1 = 0) :
    ¬ (∀ i j, Complex.normSq (cubicSeed ω 2 2 2 2 i j) = 1) := by
  have hf : cubicSeed ω 2 2 2 2 3 4 =
      ((-1 / 3 : ℂ) + ((1 / 3 : ℂ)) * ω ^ 1 + ((-2 / 3 : ℂ)) * ω ^ 2 + ((-1 / 3 : ℂ)) * ω ^ 4) * (ω ^ 2 + ω + 1) := by
    norm_num [Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail, cubicSeed, unsplitMatrix, NoFourMUBs.Step2.FourierBridge.toOAI, Hadamard6.fourierNormalForm,
      Hadamard6.fourier3, Hadamard6.rowGauge, Hadamard6.columnGauge,
      Hadamard6.fourierParameters, Hadamard6.fourierForcedD,
      Hadamard6.dftEntry₀, Hadamard6.dftEntry₁, Hadamard6.dftEntry₂,
      Hadamard6.dft₀, Hadamard6.dft₁, Hadamard6.dft₂, Hadamard6.zCol₀,
      Hadamard6.zCol₁, Hadamard6.zCol₂, Hadamard6.vHat₀, Hadamard6.vHat₁, Hadamard6.vHat₂] <;>
      ring
  have hz : cubicSeed ω 2 2 2 2 3 4 = 0 := by
    rw [hf, hω, mul_zero]
  intro hu
  have h := hu 3 4
  rw [hz] at h
  norm_num at h
#print axioms endpoint_2222_nonphysical

end Worker12
