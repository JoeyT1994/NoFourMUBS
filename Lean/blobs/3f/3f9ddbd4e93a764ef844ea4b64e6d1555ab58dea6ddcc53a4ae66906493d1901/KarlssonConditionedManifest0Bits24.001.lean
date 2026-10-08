import KarlssonConditionedExport

import KarlssonConditionedCella80d9290da6eda19

import KarlssonConditionedCell5a0de2bc145c20b5

import KarlssonConditionedCelld1b4b95866a8997a

import KarlssonConditionedCellf68adeab26c573db

import KarlssonConditionedCellb63f6cdf201602a2

import KarlssonConditionedCell55b1b83ba927c786

import KarlssonConditionedCell178264642840b610

import KarlssonConditionedCelle34647e6c017bbc1

import KarlssonConditionedCelle2b4c571f4eafc9b

import KarlssonConditionedCellae19dccf3d6ecff0

import KarlssonConditionedCellad3fe71ac2a31c3d

import KarlssonConditionedCelleacb82b02e98e3ca

import KarlssonConditionedCell972921e2a64c93ad

import KarlssonConditionedCellc5d9ec0a8ad82425

import KarlssonConditionedCellbec45e7ad259c598

import KarlssonConditionedCell74452479c531d33f

import KarlssonConditionedCell678315416daf29a5

import KarlssonConditionedCell1c83755d267f8ed7

import KarlssonConditionedCell9e1c74815d19e6f3

import KarlssonConditionedCellfcef06c4e6adc657

import KarlssonConditionedCellde5291c0a7739ddc

import KarlssonConditionedCell5a1bc921615d104a

import KarlssonConditionedCell5263f98f7cfebee8

import KarlssonConditionedCelld0811b494a63191f

import KarlssonConditionedCell59b784eb13f2b28a

import KarlssonConditionedCelldd44f60d19f53a4e

set_option autoImplicit false

set_option maxHeartbeats 4000000

set_option maxRecDepth 16384

namespace KarlssonConditionedManifest0Bits24

open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonConditioning
open Mub6.Classification.KarlssonCompiler Mub6.Classification.KarlssonCover

noncomputable section

def rt : Interval := ⟨(14529495/8388608),(29058991/16777216)⟩

theorem sqrt_valid : sqrt3Valid rt := KarlssonConditionedCella80d9290da6eda19.sqrt_valid

def rawD0 : RawDescriptor := ((.regular,false),(0,1),(-1,1),(-1,1))

def rawD1 : RawDescriptor := ((.regular,true),(0,1),(-1,1),(-1,1))

def rawD2 : RawDescriptor := ((.singularAInput,false),(0,1),(-1,1),(-1,1))

def rawD3 : RawDescriptor := ((.singularAInput,true),(0,1),(-1,1),(-1,1))

def rawD4 : RawDescriptor := ((.singularAOutput,false),(0,1),(-1,1),(-1,1))

def rawD5 : RawDescriptor := ((.singularAOutput,true),(0,1),(-1,1),(-1,1))

def rawD6 : RawDescriptor := ((.singularBInput,false),(0,1),(-1,1),(-1,1))

def rawD7 : RawDescriptor := ((.singularBInput,true),(0,1),(-1,1),(-1,1))

def rawD8 : RawDescriptor := ((.singularBOutput,false),(0,1),(-1,1),(-1,1))

def rawD9 : RawDescriptor := ((.singularBOutput,true),(0,1),(-1,1),(-1,1))

def seamD0 : SeamDescriptor := ((false,false,false,false),(-1,1),(-1,1))

def seamD1 : SeamDescriptor := ((false,false,false,true),(-1,1),(-1,1))

def seamD2 : SeamDescriptor := ((false,false,true,false),(-1,1),(-1,1))

def seamD3 : SeamDescriptor := ((false,false,true,true),(-1,1),(-1,1))

def seamD4 : SeamDescriptor := ((false,true,false,false),(-1,1),(-1,1))

def seamD5 : SeamDescriptor := ((false,true,false,true),(-1,1),(-1,1))

def seamD6 : SeamDescriptor := ((false,true,true,false),(-1,1),(-1,1))

def seamD7 : SeamDescriptor := ((false,true,true,true),(-1,1),(-1,1))

def seamD8 : SeamDescriptor := ((true,false,false,false),(-1,1),(-1,1))

def seamD9 : SeamDescriptor := ((true,false,false,true),(-1,1),(-1,1))

def seamD10 : SeamDescriptor := ((true,false,true,false),(-1,1),(-1,1))

def seamD11 : SeamDescriptor := ((true,false,true,true),(-1,1),(-1,1))

def seamD12 : SeamDescriptor := ((true,true,false,false),(-1,1),(-1,1))

def seamD13 : SeamDescriptor := ((true,true,false,true),(-1,1),(-1,1))

def seamD14 : SeamDescriptor := ((true,true,true,false),(-1,1),(-1,1))

def seamD15 : SeamDescriptor := ((true,true,true,true),(-1,1),(-1,1))

def roots (d : RawDescriptor) := if d = rawD0 then KarlssonConditionedCella80d9290da6eda19.input.roots else if d = rawD1 then KarlssonConditionedCell5a0de2bc145c20b5.input.roots else if d = rawD2 then KarlssonConditionedCelld1b4b95866a8997a.input.roots else if d = rawD3 then KarlssonConditionedCellf68adeab26c573db.input.roots else if d = rawD4 then KarlssonConditionedCellb63f6cdf201602a2.input.roots else if d = rawD5 then KarlssonConditionedCell55b1b83ba927c786.input.roots else if d = rawD6 then KarlssonConditionedCell178264642840b610.input.roots else if d = rawD7 then KarlssonConditionedCelle34647e6c017bbc1.input.roots else if d = rawD8 then KarlssonConditionedCelle2b4c571f4eafc9b.input.roots else if d = rawD9 then KarlssonConditionedCellae19dccf3d6ecff0.input.roots else fun _ : Fin 4 => (⟨1,0,2⟩ : RootRecipe)

def rawOut (d : RawDescriptor) := if d = rawD0 then KarlssonConditionedCella80d9290da6eda19.carrier else if d = rawD1 then KarlssonConditionedCell5a0de2bc145c20b5.carrier else if d = rawD2 then KarlssonConditionedCelld1b4b95866a8997a.carrier else if d = rawD3 then KarlssonConditionedCellf68adeab26c573db.carrier else if d = rawD4 then KarlssonConditionedCellb63f6cdf201602a2.carrier else if d = rawD5 then KarlssonConditionedCell55b1b83ba927c786.carrier else if d = rawD6 then KarlssonConditionedCell178264642840b610.carrier else if d = rawD7 then KarlssonConditionedCelle34647e6c017bbc1.carrier else if d = rawD8 then KarlssonConditionedCelle2b4c571f4eafc9b.carrier else if d = rawD9 then KarlssonConditionedCellae19dccf3d6ecff0.carrier else KarlssonConditionedCella80d9290da6eda19.carrier

def seamOut (d : SeamDescriptor) := if d = seamD0 then KarlssonConditionedCellad3fe71ac2a31c3d.carrier else if d = seamD1 then KarlssonConditionedCelleacb82b02e98e3ca.carrier else if d = seamD2 then KarlssonConditionedCell972921e2a64c93ad.carrier else if d = seamD3 then KarlssonConditionedCellc5d9ec0a8ad82425.carrier else if d = seamD4 then KarlssonConditionedCellbec45e7ad259c598.carrier else if d = seamD5 then KarlssonConditionedCell74452479c531d33f.carrier else if d = seamD6 then KarlssonConditionedCell678315416daf29a5.carrier else if d = seamD7 then KarlssonConditionedCell1c83755d267f8ed7.carrier else if d = seamD8 then KarlssonConditionedCell9e1c74815d19e6f3.carrier else if d = seamD9 then KarlssonConditionedCellfcef06c4e6adc657.carrier else if d = seamD10 then KarlssonConditionedCellde5291c0a7739ddc.carrier else if d = seamD11 then KarlssonConditionedCell5a1bc921615d104a.carrier else if d = seamD12 then KarlssonConditionedCell5263f98f7cfebee8.carrier else if d = seamD13 then KarlssonConditionedCelld0811b494a63191f.carrier else if d = seamD14 then KarlssonConditionedCell59b784eb13f2b28a.carrier else if d = seamD15 then KarlssonConditionedCelldd44f60d19f53a4e.carrier else KarlssonConditionedCellad3fe71ac2a31c3d.carrier

theorem raw_bounds : ∀ d ∈ Manifest0.emittedRaw, ∀ i j,

    RectangleIncludes (conditionedOutput (decodeRaw d rt (roots d)) i j) (rawOut d i j) := by

  intro d hd

  simp only [Manifest0.emittedRaw,List.mem_cons,List.not_mem_nil,or_false] at hd

  rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl

  · exact KarlssonConditionedCella80d9290da6eda19.output_valid

  · exact KarlssonConditionedCell5a0de2bc145c20b5.output_valid

  · exact KarlssonConditionedCelld1b4b95866a8997a.output_valid

  · exact KarlssonConditionedCellf68adeab26c573db.output_valid

  · exact KarlssonConditionedCellb63f6cdf201602a2.output_valid

  · exact KarlssonConditionedCell55b1b83ba927c786.output_valid

  · exact KarlssonConditionedCell178264642840b610.output_valid

  · exact KarlssonConditionedCelle34647e6c017bbc1.output_valid

  · exact KarlssonConditionedCelle2b4c571f4eafc9b.output_valid

  · exact KarlssonConditionedCellae19dccf3d6ecff0.output_valid

theorem seam_bounds : ∀ d ∈ Manifest0.emittedSeam, ∀ i j,

    RectangleIncludes ((decodeSeam d rt).output i j) (seamOut d i j) := by

  intro d hd

  simp only [Manifest0.emittedSeam,List.mem_cons,List.not_mem_nil,or_false] at hd

  rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl

  · exact KarlssonConditionedCellad3fe71ac2a31c3d.output_valid

  · exact KarlssonConditionedCelleacb82b02e98e3ca.output_valid

  · exact KarlssonConditionedCell972921e2a64c93ad.output_valid

  · exact KarlssonConditionedCellc5d9ec0a8ad82425.output_valid

  · exact KarlssonConditionedCellbec45e7ad259c598.output_valid

  · exact KarlssonConditionedCell74452479c531d33f.output_valid

  · exact KarlssonConditionedCell678315416daf29a5.output_valid

  · exact KarlssonConditionedCell1c83755d267f8ed7.output_valid

  · exact KarlssonConditionedCell9e1c74815d19e6f3.output_valid

  · exact KarlssonConditionedCellfcef06c4e6adc657.output_valid

  · exact KarlssonConditionedCellde5291c0a7739ddc.output_valid

  · exact KarlssonConditionedCell5a1bc921615d104a.output_valid

  · exact KarlssonConditionedCell5263f98f7cfebee8.output_valid

  · exact KarlssonConditionedCelld0811b494a63191f.output_valid

  · exact KarlssonConditionedCell59b784eb13f2b28a.output_valid

  · exact KarlssonConditionedCelldd44f60d19f53a4e.output_valid

def carriers : List CarrierRegion := Manifest0.emittedRaw.map rawOut ++ Manifest0.emittedSeam.map seamOut

theorem literal_binding : carriers = [KarlssonConditionedCella80d9290da6eda19.carrier,KarlssonConditionedCell5a0de2bc145c20b5.carrier,KarlssonConditionedCelld1b4b95866a8997a.carrier,KarlssonConditionedCellf68adeab26c573db.carrier,KarlssonConditionedCellb63f6cdf201602a2.carrier,KarlssonConditionedCell55b1b83ba927c786.carrier,KarlssonConditionedCell178264642840b610.carrier,KarlssonConditionedCelle34647e6c017bbc1.carrier,KarlssonConditionedCelle2b4c571f4eafc9b.carrier,KarlssonConditionedCellae19dccf3d6ecff0.carrier,KarlssonConditionedCellad3fe71ac2a31c3d.carrier,KarlssonConditionedCelleacb82b02e98e3ca.carrier,KarlssonConditionedCell972921e2a64c93ad.carrier,KarlssonConditionedCellc5d9ec0a8ad82425.carrier,KarlssonConditionedCellbec45e7ad259c598.carrier,KarlssonConditionedCell74452479c531d33f.carrier,KarlssonConditionedCell678315416daf29a5.carrier,KarlssonConditionedCell1c83755d267f8ed7.carrier,KarlssonConditionedCell9e1c74815d19e6f3.carrier,KarlssonConditionedCellfcef06c4e6adc657.carrier,KarlssonConditionedCellde5291c0a7739ddc.carrier,KarlssonConditionedCell5a1bc921615d104a.carrier,KarlssonConditionedCell5263f98f7cfebee8.carrier,KarlssonConditionedCelld0811b494a63191f.carrier,KarlssonConditionedCell59b784eb13f2b28a.carrier,KarlssonConditionedCelldd44f60d19f53a4e.carrier] := by rfl

theorem carrier_count : carriers.length=26 := by decide +kernel

theorem physical_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6,
      OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical K)) ∧
      ∃ b ∈ carriers, CarrierBox b (ClassificationCover.toNumerical K) :=
  exported_conditioned_quartet_cover 0 Manifest0.emittedRaw Manifest0.emittedSeam
    Manifest0.emitted_raw_complete Manifest0.emitted_seam_complete
    rt sqrt_valid roots rawOut seamOut raw_bounds seam_bounds hH h₂

#print axioms sqrt_valid

#print axioms raw_bounds

#print axioms seam_bounds

#print axioms literal_binding

#print axioms carrier_count

#print axioms physical_cover

end

end KarlssonConditionedManifest0Bits24
