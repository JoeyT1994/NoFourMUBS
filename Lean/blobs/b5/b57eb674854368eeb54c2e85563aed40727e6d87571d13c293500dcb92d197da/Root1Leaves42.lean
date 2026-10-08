import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs02
import Root0Arcs03
import Root0Arcs04
import Root0Arcs12
import Root0Arcs13
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
theorem leaf1008 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(21/128),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0044 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0044_checked .re (by decide +kernel)
#print axioms leaf1008
theorem leaf1009 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(43/256),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0056 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0056_checked .re (by decide +kernel)
#print axioms leaf1009
theorem leaf1010 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(43/256),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0056 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0056_checked .re (by decide +kernel)
#print axioms leaf1010
theorem leaf1011 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(21/128),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0043 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0043_checked .re (by decide +kernel)
#print axioms leaf1011
theorem leaf1012 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(21/128),(43/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0043 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0043_checked .re (by decide +kernel)
#print axioms leaf1012
theorem leaf1013 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(5/32),(21/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0032 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0032_checked .re (by decide +kernel)
#print axioms leaf1013
theorem leaf1014 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(41/256),(21/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0037 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0037_checked .re (by decide +kernel)
#print axioms leaf1014
theorem leaf1015 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(83/512),(21/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0039 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0039_checked .re (by decide +kernel)
#print axioms leaf1015
theorem leaf1016 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(41/256),(83/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0036 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0036_checked .re (by decide +kernel)
#print axioms leaf1016
theorem leaf1017 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(5/32),(41/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0031 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0031_checked .re (by decide +kernel)
#print axioms leaf1017
theorem leaf1018 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(81/512),(41/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0035 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0035_checked .re (by decide +kernel)
#print axioms leaf1018
theorem leaf1019 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(5/32),(81/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0030 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0030_checked .re (by decide +kernel)
#print axioms leaf1019
theorem leaf1020 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(87/512),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0063 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0063_checked .re (by decide +kernel)
#print axioms leaf1020
theorem leaf1021 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(175/1024),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0066 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0066_checked .re (by decide +kernel)
#print axioms leaf1021
theorem leaf1022 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(351/2048),(11/64)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0067 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0067_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1022
theorem leaf1023 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(175/1024),(351/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0065 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0065_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1023
theorem leaf1024 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(87/512),(175/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0062 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0062_checked .re (by decide +kernel)
#print axioms leaf1024
theorem leaf1025 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(349/2048),(175/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0064 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0064_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1025
theorem leaf1026 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(87/512),(349/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0061 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0061_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1026
theorem leaf1027 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(43/256),(87/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0055 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0055_checked .re (by decide +kernel)
#print axioms leaf1027
theorem leaf1028 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(173/1024),(87/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0059 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0059_checked .re (by decide +kernel)
#print axioms leaf1028
theorem leaf1029 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(347/2048),(87/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0060 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0060_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1029
theorem leaf1030 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(173/1024),(347/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0058 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0058_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf1030
theorem leaf1031 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(43/256),(173/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0054 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0054_checked .re (by decide +kernel)
#print axioms leaf1031
end ShoulderRoot1Angular20261003
