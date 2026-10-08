import AngularLeaf
import Root0CoverData
import Root0Arcs00
import Root0Arcs01
import Root0Arcs08
import Root0Arcs14
import Root0Arcs15
import Root0Arcs19
import Root0Arcs20
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem leaf0000 : LeafStatement moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(7/8),1⟩ := by
  exact moment_leaf arc0327 arc0327 arc0327_checked arc0327_checked .re (by decide +kernel)
#print axioms leaf0000
theorem leaf0001 : LeafStatement moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(3/4),(7/8)⟩ := by
  exact moment_leaf arc0327 arc0317 arc0327_checked arc0317_checked .re (by decide +kernel)
#print axioms leaf0001
theorem leaf0002 : LeafStatement moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf arc0327 arc0252 arc0327_checked arc0252_checked .s (by decide +kernel)
#print axioms leaf0002
theorem leaf0003 : LeafStatement moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/2),(5/8)⟩ := by
  exact moment_leaf arc0327 arc0237 arc0327_checked arc0237_checked .s (by decide +kernel)
#print axioms leaf0003
theorem leaf0004 : LeafStatement moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(3/8),(1/2)⟩ := by
  exact moment_leaf arc0327 arc0224 arc0327_checked arc0224_checked .s (by decide +kernel)
#print axioms leaf0004
theorem leaf0005 : LeafStatement moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/4),(3/8)⟩ := by
  exact moment_leaf arc0327 arc0135 arc0327_checked arc0135_checked .s (by decide +kernel)
#print axioms leaf0005
theorem leaf0006 : LeafStatement moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/8),(1/4)⟩ := by
  exact moment_leaf arc0327 arc0021 arc0327_checked arc0021_checked .re (by decide +kernel)
#print axioms leaf0006
theorem leaf0007 : LeafStatement moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨0,(1/8)⟩ := by
  exact moment_leaf arc0327 arc0003 arc0327_checked arc0003_checked .re (by decide +kernel)
#print axioms leaf0007
theorem leaf0008 : LeafStatement moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(7/8),1⟩ := by
  exact moment_leaf arc0317 arc0327 arc0317_checked arc0327_checked .s (by decide +kernel)
#print axioms leaf0008
theorem leaf0009 : LeafStatement moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(3/4),(7/8)⟩ := by
  exact moment_leaf arc0317 arc0317 arc0317_checked arc0317_checked .re (by decide +kernel)
#print axioms leaf0009
theorem leaf0010 : LeafStatement moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf arc0317 arc0252 arc0317_checked arc0252_checked .s (by decide +kernel)
#print axioms leaf0010
theorem leaf0011 : LeafStatement moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/2),(5/8)⟩ := by
  exact moment_leaf arc0317 arc0237 arc0317_checked arc0237_checked .s (by decide +kernel)
#print axioms leaf0011
theorem leaf0012 : LeafStatement moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(3/8),(1/2)⟩ := by
  exact moment_leaf arc0317 arc0224 arc0317_checked arc0224_checked .s (by decide +kernel)
#print axioms leaf0012
theorem leaf0013 : LeafStatement moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/4),(3/8)⟩ := by
  exact moment_leaf arc0317 arc0135 arc0317_checked arc0135_checked .s (by decide +kernel)
#print axioms leaf0013
theorem leaf0014 : LeafStatement moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/8),(1/4)⟩ := by
  exact moment_leaf arc0317 arc0021 arc0317_checked arc0021_checked .s (by decide +kernel)
#print axioms leaf0014
theorem leaf0015 : LeafStatement moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨0,(1/8)⟩ := by
  exact moment_leaf arc0317 arc0003 arc0317_checked arc0003_checked .s (by decide +kernel)
#print axioms leaf0015
theorem leaf0016 : LeafStatement moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(7/8),1⟩ := by
  exact moment_leaf arc0311 arc0327 arc0311_checked arc0327_checked .re (by decide +kernel)
#print axioms leaf0016
theorem leaf0017 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf arc0251 arc0334 arc0251_checked arc0334_checked .re (by decide +kernel)
#print axioms leaf0017
theorem leaf0018 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(7/8),(15/16)⟩ := by
  exact moment_leaf arc0251 arc0326 arc0251_checked arc0326_checked .re (by decide +kernel)
#print axioms leaf0018
theorem leaf0019 : LeafStatement moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(3/4),(7/8)⟩ := by
  exact moment_leaf arc0311 arc0317 arc0311_checked arc0317_checked .re (by decide +kernel)
#print axioms leaf0019
theorem leaf0020 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf arc0251 arc0320 arc0251_checked arc0320_checked .re (by decide +kernel)
#print axioms leaf0020
theorem leaf0021 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf arc0251 arc0316 arc0251_checked arc0316_checked .re (by decide +kernel)
#print axioms leaf0021
theorem leaf0022 : LeafStatement moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf arc0311 arc0252 arc0311_checked arc0252_checked .re (by decide +kernel)
#print axioms leaf0022
theorem leaf0023 : LeafStatement moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(11/16),(3/4)⟩ := by
  exact moment_leaf arc0251 arc0311 arc0251_checked arc0311_checked .re (by decide +kernel)
#print axioms leaf0023
end Root0Angular20261003
