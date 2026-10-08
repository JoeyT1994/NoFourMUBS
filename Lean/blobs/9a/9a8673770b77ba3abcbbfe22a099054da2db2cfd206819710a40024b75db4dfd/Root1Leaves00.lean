import ParametricAngularLeaf
import Root0Arcs00
import Root0Arcs01
import Root0Arcs08
import Root0Arcs14
import Root0Arcs15
import Root0Arcs19
import Root0Arcs20
import Root1CertificateData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem leaf0000 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(7/8),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0327 Root0Angular20261003.arc0327 Root0Angular20261003.arc0327_checked Root0Angular20261003.arc0327_checked .re (by decide +kernel)
#print axioms leaf0000
theorem leaf0001 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(3/4),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0327 Root0Angular20261003.arc0317 Root0Angular20261003.arc0327_checked Root0Angular20261003.arc0317_checked .re (by decide +kernel)
#print axioms leaf0001
theorem leaf0002 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0327 Root0Angular20261003.arc0252 Root0Angular20261003.arc0327_checked Root0Angular20261003.arc0252_checked .s (by decide +kernel)
#print axioms leaf0002
theorem leaf0003 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/2),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0327 Root0Angular20261003.arc0237 Root0Angular20261003.arc0327_checked Root0Angular20261003.arc0237_checked .s (by decide +kernel)
#print axioms leaf0003
theorem leaf0004 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(3/8),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0327 Root0Angular20261003.arc0224 Root0Angular20261003.arc0327_checked Root0Angular20261003.arc0224_checked .s (by decide +kernel)
#print axioms leaf0004
theorem leaf0005 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/4),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0327 Root0Angular20261003.arc0135 Root0Angular20261003.arc0327_checked Root0Angular20261003.arc0135_checked .s (by decide +kernel)
#print axioms leaf0005
theorem leaf0006 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨(1/8),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0327 Root0Angular20261003.arc0021 Root0Angular20261003.arc0327_checked Root0Angular20261003.arc0021_checked .re (by decide +kernel)
#print axioms leaf0006
theorem leaf0007 : LeafStatement cap moments EX EY hull0 hull1 ⟨(7/8),1⟩ ⟨0,(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0327 Root0Angular20261003.arc0003 Root0Angular20261003.arc0327_checked Root0Angular20261003.arc0003_checked .re (by decide +kernel)
#print axioms leaf0007
theorem leaf0008 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(7/8),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0317 Root0Angular20261003.arc0327 Root0Angular20261003.arc0317_checked Root0Angular20261003.arc0327_checked .s (by decide +kernel)
#print axioms leaf0008
theorem leaf0009 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(3/4),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0317 Root0Angular20261003.arc0317 Root0Angular20261003.arc0317_checked Root0Angular20261003.arc0317_checked .re (by decide +kernel)
#print axioms leaf0009
theorem leaf0010 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0317 Root0Angular20261003.arc0252 Root0Angular20261003.arc0317_checked Root0Angular20261003.arc0252_checked .s (by decide +kernel)
#print axioms leaf0010
theorem leaf0011 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/2),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0317 Root0Angular20261003.arc0237 Root0Angular20261003.arc0317_checked Root0Angular20261003.arc0237_checked .s (by decide +kernel)
#print axioms leaf0011
theorem leaf0012 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(3/8),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0317 Root0Angular20261003.arc0224 Root0Angular20261003.arc0317_checked Root0Angular20261003.arc0224_checked .s (by decide +kernel)
#print axioms leaf0012
theorem leaf0013 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/4),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0317 Root0Angular20261003.arc0135 Root0Angular20261003.arc0317_checked Root0Angular20261003.arc0135_checked .s (by decide +kernel)
#print axioms leaf0013
theorem leaf0014 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨(1/8),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0317 Root0Angular20261003.arc0021 Root0Angular20261003.arc0317_checked Root0Angular20261003.arc0021_checked .s (by decide +kernel)
#print axioms leaf0014
theorem leaf0015 : LeafStatement cap moments EX EY hull0 hull1 ⟨(3/4),(7/8)⟩ ⟨0,(1/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0317 Root0Angular20261003.arc0003 Root0Angular20261003.arc0317_checked Root0Angular20261003.arc0003_checked .s (by decide +kernel)
#print axioms leaf0015
theorem leaf0016 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(7/8),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0311 Root0Angular20261003.arc0327 Root0Angular20261003.arc0311_checked Root0Angular20261003.arc0327_checked .re (by decide +kernel)
#print axioms leaf0016
theorem leaf0017 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(15/16),1⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0251 Root0Angular20261003.arc0334 Root0Angular20261003.arc0251_checked Root0Angular20261003.arc0334_checked .re (by decide +kernel)
#print axioms leaf0017
theorem leaf0018 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(7/8),(15/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0251 Root0Angular20261003.arc0326 Root0Angular20261003.arc0251_checked Root0Angular20261003.arc0326_checked .re (by decide +kernel)
#print axioms leaf0018
theorem leaf0019 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(3/4),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0311 Root0Angular20261003.arc0317 Root0Angular20261003.arc0311_checked Root0Angular20261003.arc0317_checked .re (by decide +kernel)
#print axioms leaf0019
theorem leaf0020 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(13/16),(7/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0251 Root0Angular20261003.arc0320 Root0Angular20261003.arc0251_checked Root0Angular20261003.arc0320_checked .re (by decide +kernel)
#print axioms leaf0020
theorem leaf0021 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(3/4),(13/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0251 Root0Angular20261003.arc0316 Root0Angular20261003.arc0251_checked Root0Angular20261003.arc0316_checked .re (by decide +kernel)
#print axioms leaf0021
theorem leaf0022 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(5/8),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0311 Root0Angular20261003.arc0252 Root0Angular20261003.arc0311_checked Root0Angular20261003.arc0252_checked .re (by decide +kernel)
#print axioms leaf0022
theorem leaf0023 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(11/16),(3/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0251 Root0Angular20261003.arc0311 Root0Angular20261003.arc0251_checked Root0Angular20261003.arc0311_checked .re (by decide +kernel)
#print axioms leaf0023
end ShoulderRoot1Angular20261003
