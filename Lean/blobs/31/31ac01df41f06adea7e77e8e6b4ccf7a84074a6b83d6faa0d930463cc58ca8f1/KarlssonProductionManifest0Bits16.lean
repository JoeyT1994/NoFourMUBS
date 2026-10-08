import KarlssonExportedCover

import KarlssonCell1239c2eb451be994

import KarlssonCelldc4f95066c735b59

import KarlssonCell2ed3eae29faeaeb0

import KarlssonCell7603fdb3ea1ec9cb

import KarlssonCell093c7871b331c1ef

import KarlssonCelleae6cc7900c6bb98

import KarlssonCell06ef2580b6222600

import KarlssonCella10260feafd30085

import KarlssonCell1bf3d17cce59f8dd

import KarlssonCellee4d8fc2af40ae95

import KarlssonCellf311ac6f7b3c4878

import KarlssonCelld53f813f3491d701

import KarlssonCell1c1e267ed6f9baea

import KarlssonCell9a9f63fad2db23a4

import KarlssonCella6b76ee0c58a6d69

import KarlssonCell1f7759ee7f7a5213

import KarlssonCellfa77f922defea7c4

import KarlssonCell4d3c79154e599349

import KarlssonCellba6c5123b708dfc1

import KarlssonCell0faa96cec5c1a933

import KarlssonCell810517ec935e958f

import KarlssonCell977de6340a58014f

import KarlssonCell3864de72d596a1f2

import KarlssonCell475e849cb4c8c71a

import KarlssonCell1b421997a74043ac

import KarlssonCell570e647775625bd0

set_option autoImplicit false

set_option maxHeartbeats 4000000

set_option maxRecDepth 16384

namespace KarlssonProductionManifest0Bits16

open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonCompiler Mub6.Classification.KarlssonCover

noncomputable section

def rt : Interval := ⟨(113511/65536),(14189/8192)⟩

theorem sqrt_valid : sqrt3Valid rt := KarlssonCell1239c2eb451be994.sqrt_valid

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

def roots (d : RawDescriptor) := if d = rawD0 then KarlssonCell1239c2eb451be994.input.roots else if d = rawD1 then KarlssonCelldc4f95066c735b59.input.roots else if d = rawD2 then KarlssonCell2ed3eae29faeaeb0.input.roots else if d = rawD3 then KarlssonCell7603fdb3ea1ec9cb.input.roots else if d = rawD4 then KarlssonCell093c7871b331c1ef.input.roots else if d = rawD5 then KarlssonCelleae6cc7900c6bb98.input.roots else if d = rawD6 then KarlssonCell06ef2580b6222600.input.roots else if d = rawD7 then KarlssonCella10260feafd30085.input.roots else if d = rawD8 then KarlssonCell1bf3d17cce59f8dd.input.roots else if d = rawD9 then KarlssonCellee4d8fc2af40ae95.input.roots else fun _ : Fin 4 => (⟨1,0,2⟩ : RootRecipe)

def rawOut (d : RawDescriptor) := if d = rawD0 then KarlssonCell1239c2eb451be994.carrier else if d = rawD1 then KarlssonCelldc4f95066c735b59.carrier else if d = rawD2 then KarlssonCell2ed3eae29faeaeb0.carrier else if d = rawD3 then KarlssonCell7603fdb3ea1ec9cb.carrier else if d = rawD4 then KarlssonCell093c7871b331c1ef.carrier else if d = rawD5 then KarlssonCelleae6cc7900c6bb98.carrier else if d = rawD6 then KarlssonCell06ef2580b6222600.carrier else if d = rawD7 then KarlssonCella10260feafd30085.carrier else if d = rawD8 then KarlssonCell1bf3d17cce59f8dd.carrier else if d = rawD9 then KarlssonCellee4d8fc2af40ae95.carrier else KarlssonCell1239c2eb451be994.carrier

def seamOut (d : SeamDescriptor) := if d = seamD0 then KarlssonCellf311ac6f7b3c4878.carrier else if d = seamD1 then KarlssonCelld53f813f3491d701.carrier else if d = seamD2 then KarlssonCell1c1e267ed6f9baea.carrier else if d = seamD3 then KarlssonCell9a9f63fad2db23a4.carrier else if d = seamD4 then KarlssonCella6b76ee0c58a6d69.carrier else if d = seamD5 then KarlssonCell1f7759ee7f7a5213.carrier else if d = seamD6 then KarlssonCellfa77f922defea7c4.carrier else if d = seamD7 then KarlssonCell4d3c79154e599349.carrier else if d = seamD8 then KarlssonCellba6c5123b708dfc1.carrier else if d = seamD9 then KarlssonCell0faa96cec5c1a933.carrier else if d = seamD10 then KarlssonCell810517ec935e958f.carrier else if d = seamD11 then KarlssonCell977de6340a58014f.carrier else if d = seamD12 then KarlssonCell3864de72d596a1f2.carrier else if d = seamD13 then KarlssonCell475e849cb4c8c71a.carrier else if d = seamD14 then KarlssonCell1b421997a74043ac.carrier else if d = seamD15 then KarlssonCell570e647775625bd0.carrier else KarlssonCellf311ac6f7b3c4878.carrier

theorem raw_bounds : ∀ d ∈ Manifest0.emittedRaw, ∀ i j,

    RectangleIncludes ((decodeRaw d rt (roots d)).output i j) (rawOut d i j) := by

  intro d hd

  simp only [Manifest0.emittedRaw,List.mem_cons,List.not_mem_nil,or_false] at hd

  rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl

  · exact KarlssonCell1239c2eb451be994.output_valid

  · exact KarlssonCelldc4f95066c735b59.output_valid

  · exact KarlssonCell2ed3eae29faeaeb0.output_valid

  · exact KarlssonCell7603fdb3ea1ec9cb.output_valid

  · exact KarlssonCell093c7871b331c1ef.output_valid

  · exact KarlssonCelleae6cc7900c6bb98.output_valid

  · exact KarlssonCell06ef2580b6222600.output_valid

  · exact KarlssonCella10260feafd30085.output_valid

  · exact KarlssonCell1bf3d17cce59f8dd.output_valid

  · exact KarlssonCellee4d8fc2af40ae95.output_valid

theorem seam_bounds : ∀ d ∈ Manifest0.emittedSeam, ∀ i j,

    RectangleIncludes ((decodeSeam d rt).output i j) (seamOut d i j) := by

  intro d hd

  simp only [Manifest0.emittedSeam,List.mem_cons,List.not_mem_nil,or_false] at hd

  rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl

  · exact KarlssonCellf311ac6f7b3c4878.output_valid

  · exact KarlssonCelld53f813f3491d701.output_valid

  · exact KarlssonCell1c1e267ed6f9baea.output_valid

  · exact KarlssonCell9a9f63fad2db23a4.output_valid

  · exact KarlssonCella6b76ee0c58a6d69.output_valid

  · exact KarlssonCell1f7759ee7f7a5213.output_valid

  · exact KarlssonCellfa77f922defea7c4.output_valid

  · exact KarlssonCell4d3c79154e599349.output_valid

  · exact KarlssonCellba6c5123b708dfc1.output_valid

  · exact KarlssonCell0faa96cec5c1a933.output_valid

  · exact KarlssonCell810517ec935e958f.output_valid

  · exact KarlssonCell977de6340a58014f.output_valid

  · exact KarlssonCell3864de72d596a1f2.output_valid

  · exact KarlssonCell475e849cb4c8c71a.output_valid

  · exact KarlssonCell1b421997a74043ac.output_valid

  · exact KarlssonCell570e647775625bd0.output_valid

def carriers : List CarrierRegion := Manifest0.emittedRaw.map rawOut ++ Manifest0.emittedSeam.map seamOut

theorem literal_binding : carriers = [KarlssonCell1239c2eb451be994.carrier,KarlssonCelldc4f95066c735b59.carrier,KarlssonCell2ed3eae29faeaeb0.carrier,KarlssonCell7603fdb3ea1ec9cb.carrier,KarlssonCell093c7871b331c1ef.carrier,KarlssonCelleae6cc7900c6bb98.carrier,KarlssonCell06ef2580b6222600.carrier,KarlssonCella10260feafd30085.carrier,KarlssonCell1bf3d17cce59f8dd.carrier,KarlssonCellee4d8fc2af40ae95.carrier,KarlssonCellf311ac6f7b3c4878.carrier,KarlssonCelld53f813f3491d701.carrier,KarlssonCell1c1e267ed6f9baea.carrier,KarlssonCell9a9f63fad2db23a4.carrier,KarlssonCella6b76ee0c58a6d69.carrier,KarlssonCell1f7759ee7f7a5213.carrier,KarlssonCellfa77f922defea7c4.carrier,KarlssonCell4d3c79154e599349.carrier,KarlssonCellba6c5123b708dfc1.carrier,KarlssonCell0faa96cec5c1a933.carrier,KarlssonCell810517ec935e958f.carrier,KarlssonCell977de6340a58014f.carrier,KarlssonCell3864de72d596a1f2.carrier,KarlssonCell475e849cb4c8c71a.carrier,KarlssonCell1b421997a74043ac.carrier,KarlssonCell570e647775625bd0.carrier] := by rfl

theorem carrier_count : carriers.length=26 := by decide +kernel

theorem physical_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6,
      OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical K)) ∧
      ∃ b ∈ carriers, CarrierBox b (ClassificationCover.toNumerical K) :=
  exported_quartet_cover 0 Manifest0.emittedRaw Manifest0.emittedSeam
    Manifest0.emitted_raw_complete Manifest0.emitted_seam_complete
    rt sqrt_valid roots rawOut seamOut raw_bounds seam_bounds hH h₂

#print axioms sqrt_valid

#print axioms raw_bounds

#print axioms seam_bounds

#print axioms literal_binding

#print axioms carrier_count

#print axioms physical_cover

end

end KarlssonProductionManifest0Bits16
