import FourPhasePrecision
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourPhaseCelld01c66fc6016c460
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.SharedSeedIntervals Mub6.Classification.SharedSeedSheetIntervals
open Mub6.Classification.FourPhaseWorker Mub6.Classification.KarlssonCompiler
noncomputable section
def input : Cell := ⟨![true,true,true,true],![⟨(-37/64),(-295/512)⟩,⟨(295/512),(37/64)⟩,⟨(295/512),(37/64)⟩,⟨(-37/64),(-295/512)⟩]⟩
def omegaBounds : RationalRectangle := rationalOmegaBox (3547/4096) (887/1024)
theorem omega_valid : MemRectangle omegaBounds Hadamard6Extensions.FourPhaseRoots.omega := rationalOmegaBox_sound (by decide +kernel)
def sqrtLower : ℚ := (0)
def sqrtUpper : ℚ := (5641/2048)
theorem sqrt_valid : SheetSqrtCertificate (sharedRadicandInterval input.seedBoxes) sqrtLower sqrtUpper := by decide +kernel
def horizontal0 : SideBoxRecipe := {
  moments := { s := ⟨(-9/4096),(13/4096),(-9/2048),(9/2048)⟩, t := ⟨(-9/4096),(13/4096),(-9/2048),(9/2048)⟩, u := ⟨(-2),(2),(-2),(2)⟩, v := ⟨(-2),(2),(-2),(2)⟩, r := ⟨(-23/2048),(19/2048),(-37/4096),(37/4096)⟩, W := ⟨(-12499/4096),(12499/4096),(-12499/4096),(12499/4096)⟩, omega := ⟨(-1/2),(-1/2),(3547/4096),(887/1024)⟩ }
  deltaRe := (11/2048)
  deltaIm := (0)
  deltaRadius := (31533/2048)
  tauRe := (fun s => if s then (1/2048) else (1/2048))
  tauIm := (fun s => if s then (1/1024) else (1/1024))
  tauRadius := (fun s => if s then (67605/2048) else (67605/2048))
}
theorem horizontal0_valid : horizontal0.Valid := by
  constructor
  · exact ⟨by decide +kernel, by decide +kernel⟩
  · intro s; cases s <;> exact ⟨by decide +kernel, by decide +kernel⟩
theorem horizontal0_moments : MomentIncludes (horizontalMomentsIn input sqrtLower sqrtUpper false omegaBounds) horizontal0.moments := by decide +kernel
def horizontal1 : SideBoxRecipe := {
  moments := { s := ⟨(-9/4096),(13/4096),(-9/2048),(9/2048)⟩, t := ⟨(-9/4096),(13/4096),(-9/2048),(9/2048)⟩, u := ⟨(-2),(2),(-2),(2)⟩, v := ⟨(-2),(2),(-2),(2)⟩, r := ⟨(-23/2048),(19/2048),(-37/4096),(37/4096)⟩, W := ⟨(-12499/4096),(12499/4096),(-12499/4096),(12499/4096)⟩, omega := ⟨(-1/2),(-1/2),(3547/4096),(887/1024)⟩ }
  deltaRe := (11/2048)
  deltaIm := (0)
  deltaRadius := (31533/2048)
  tauRe := (fun s => if s then (1/2048) else (1/2048))
  tauIm := (fun s => if s then (1/1024) else (1/1024))
  tauRadius := (fun s => if s then (67605/2048) else (67605/2048))
}
theorem horizontal1_valid : horizontal1.Valid := by
  constructor
  · exact ⟨by decide +kernel, by decide +kernel⟩
  · intro s; cases s <;> exact ⟨by decide +kernel, by decide +kernel⟩
theorem horizontal1_moments : MomentIncludes (horizontalMomentsIn input sqrtLower sqrtUpper true omegaBounds) horizontal1.moments := by decide +kernel
def vertical0 : SideBoxRecipe := {
  moments := { s := ⟨(-9/4096),(13/4096),(-9/2048),(9/2048)⟩, t := ⟨(-9/4096),(13/4096),(-9/2048),(9/2048)⟩, u := ⟨(-2),(2),(-2),(2)⟩, v := ⟨(-2),(2),(-2),(2)⟩, r := ⟨(-23/2048),(19/2048),(-37/4096),(37/4096)⟩, W := ⟨(-12499/4096),(12499/4096),(-12499/4096),(12499/4096)⟩, omega := ⟨(-1/2),(-1/2),(3547/4096),(887/1024)⟩ }
  deltaRe := (11/2048)
  deltaIm := (0)
  deltaRadius := (31533/2048)
  tauRe := (fun s => if s then (1/2048) else (1/2048))
  tauIm := (fun s => if s then (1/1024) else (1/1024))
  tauRadius := (fun s => if s then (67605/2048) else (67605/2048))
}
theorem vertical0_valid : vertical0.Valid := by
  constructor
  · exact ⟨by decide +kernel, by decide +kernel⟩
  · intro s; cases s <;> exact ⟨by decide +kernel, by decide +kernel⟩
theorem vertical0_moments : MomentIncludes (verticalMomentsIn input sqrtLower sqrtUpper false omegaBounds) vertical0.moments := by decide +kernel
def vertical1 : SideBoxRecipe := {
  moments := { s := ⟨(-9/4096),(13/4096),(-9/2048),(9/2048)⟩, t := ⟨(-9/4096),(13/4096),(-9/2048),(9/2048)⟩, u := ⟨(-2),(2),(-2),(2)⟩, v := ⟨(-2),(2),(-2),(2)⟩, r := ⟨(-23/2048),(19/2048),(-37/4096),(37/4096)⟩, W := ⟨(-12499/4096),(12499/4096),(-12499/4096),(12499/4096)⟩, omega := ⟨(-1/2),(-1/2),(3547/4096),(887/1024)⟩ }
  deltaRe := (11/2048)
  deltaIm := (0)
  deltaRadius := (31533/2048)
  tauRe := (fun s => if s then (1/2048) else (1/2048))
  tauIm := (fun s => if s then (1/1024) else (1/1024))
  tauRadius := (fun s => if s then (67605/2048) else (67605/2048))
}
theorem vertical1_valid : vertical1.Valid := by
  constructor
  · exact ⟨by decide +kernel, by decide +kernel⟩
  · intro s; cases s <;> exact ⟨by decide +kernel, by decide +kernel⟩
theorem vertical1_moments : MomentIncludes (verticalMomentsIn input sqrtLower sqrtUpper true omegaBounds) vertical1.moments := by decide +kernel
def recipe : Recipes := ⟨(fun s => if s then horizontal1 else horizontal0),(fun s => if s then vertical1 else vertical0)⟩
theorem recipe_valid : recipe.Valid := by
  constructor <;> intro s <;> cases s
  · exact horizontal0_valid
  · exact horizontal1_valid
  · exact vertical0_valid
  · exact vertical1_valid
theorem moment_cover : MomentCover input (fun s => (recipe.horizontal s).moments) (fun s => (recipe.vertical s).moments) := by
  apply moment_cover_mono (precision_moment_cover input sqrt_valid omega_valid)
  · intro s; cases s
    · exact horizontal0_moments
    · exact horizontal1_moments
  · intro s; cases s
    · exact vertical0_moments
    · exact vertical1_moments
def carrier0 : CarrierRegion := ![![⟨(1),(1),(0),(0)⟩,⟨(1),(1),(0),(0)⟩,⟨(1),(1),(0),(0)⟩,⟨(1),(1),(0),(0)⟩,⟨(1),(1),(0),(0)⟩,⟨(1),(1),(0),(0)⟩],![⟨(1),(1),(0),(0)⟩,⟨(-2055/4096),(-2043/4096),(3537/4096),(889/1024)⟩,⟨(-2055/4096),(-2043/4096),(-889/1024),(-3537/4096)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩],![⟨(1),(1),(0),(0)⟩,⟨(-2055/4096),(-2043/4096),(-889/1024),(-3537/4096)⟩,⟨(-2055/4096),(-2043/4096),(3537/4096),(889/1024)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩],![⟨(1),(1),(0),(0)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩],![⟨(1),(1),(0),(0)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩],![⟨(1),(1),(0),(0)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩,⟨(-1),(1),(-1),(1)⟩]]
theorem branch0_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((false,false),(false,false)) i j) (carrier0 i j) := by decide +kernel
theorem branch1_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((false,false),(false,true)) i j) (carrier0 i j) := by decide +kernel
theorem branch2_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((false,false),(true,false)) i j) (carrier0 i j) := by decide +kernel
theorem branch3_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((false,false),(true,true)) i j) (carrier0 i j) := by decide +kernel
theorem branch4_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((false,true),(false,false)) i j) (carrier0 i j) := by decide +kernel
theorem branch5_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((false,true),(false,true)) i j) (carrier0 i j) := by decide +kernel
theorem branch6_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((false,true),(true,false)) i j) (carrier0 i j) := by decide +kernel
theorem branch7_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((false,true),(true,true)) i j) (carrier0 i j) := by decide +kernel
theorem branch8_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((true,false),(false,false)) i j) (carrier0 i j) := by decide +kernel
theorem branch9_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((true,false),(false,true)) i j) (carrier0 i j) := by decide +kernel
theorem branch10_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((true,false),(true,false)) i j) (carrier0 i j) := by decide +kernel
theorem branch11_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((true,false),(true,true)) i j) (carrier0 i j) := by decide +kernel
theorem branch12_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((true,true),(false,false)) i j) (carrier0 i j) := by decide +kernel
theorem branch13_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((true,true),(false,true)) i j) (carrier0 i j) := by decide +kernel
theorem branch14_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((true,true),(true,false)) i j) (carrier0 i j) := by decide +kernel
theorem branch15_includes : ∀ i j, RectangleIncludes (physicalOutput input recipe ((true,true),(true,true)) i j) (carrier0 i j) := by decide +kernel
def outputs (b : Branch) : CarrierRegion := match b with
  | ((false,false),(false,false)) => carrier0
  | ((false,false),(false,true)) => carrier0
  | ((false,false),(true,false)) => carrier0
  | ((false,false),(true,true)) => carrier0
  | ((false,true),(false,false)) => carrier0
  | ((false,true),(false,true)) => carrier0
  | ((false,true),(true,false)) => carrier0
  | ((false,true),(true,true)) => carrier0
  | ((true,false),(false,false)) => carrier0
  | ((true,false),(false,true)) => carrier0
  | ((true,false),(true,false)) => carrier0
  | ((true,false),(true,true)) => carrier0
  | ((true,true),(false,false)) => carrier0
  | ((true,true),(false,true)) => carrier0
  | ((true,true),(true,false)) => carrier0
  | ((true,true),(true,true)) => carrier0
theorem output_includes : ∀ b i j, RectangleIncludes (physicalOutput input recipe b i j) (outputs b i j) := by
  rintro ⟨⟨hs,hd⟩,⟨vs,vd⟩⟩
  cases hs <;> cases hd <;> cases vs <;> cases vd
  · exact branch0_includes
  · exact branch1_includes
  · exact branch2_includes
  · exact branch3_includes
  · exact branch4_includes
  · exact branch5_includes
  · exact branch6_includes
  · exact branch7_includes
  · exact branch8_includes
  · exact branch9_includes
  · exact branch10_includes
  · exact branch11_includes
  · exact branch12_includes
  · exact branch13_includes
  · exact branch14_includes
  · exact branch15_includes
theorem closes (certificates : ∀ b, Mub6.Classification.KarlssonLedger.CarrierExcluded (outputs b)) : ¬ Live input :=
  compiled_cell_closes recipe_valid moment_cover outputs output_includes certificates
#print axioms FourPhaseCelld01c66fc6016c460.omega_valid
#print axioms FourPhaseCelld01c66fc6016c460.sqrt_valid
#print axioms FourPhaseCelld01c66fc6016c460.horizontal0_valid
#print axioms FourPhaseCelld01c66fc6016c460.horizontal0_moments
#print axioms FourPhaseCelld01c66fc6016c460.horizontal1_valid
#print axioms FourPhaseCelld01c66fc6016c460.horizontal1_moments
#print axioms FourPhaseCelld01c66fc6016c460.vertical0_valid
#print axioms FourPhaseCelld01c66fc6016c460.vertical0_moments
#print axioms FourPhaseCelld01c66fc6016c460.vertical1_valid
#print axioms FourPhaseCelld01c66fc6016c460.vertical1_moments
#print axioms FourPhaseCelld01c66fc6016c460.recipe_valid
#print axioms FourPhaseCelld01c66fc6016c460.moment_cover
#print axioms FourPhaseCelld01c66fc6016c460.branch0_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch1_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch2_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch3_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch4_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch5_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch6_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch7_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch8_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch9_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch10_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch11_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch12_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch13_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch14_includes
#print axioms FourPhaseCelld01c66fc6016c460.branch15_includes
#print axioms FourPhaseCelld01c66fc6016c460.output_includes
#print axioms FourPhaseCelld01c66fc6016c460.closes
end
end FourPhaseCelld01c66fc6016c460
