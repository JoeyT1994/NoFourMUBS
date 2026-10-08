import ParametricAngularLeaf
import Root0Arcs04
import Root0Arcs05
import Root0Arcs11
import Root0Arcs12
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
theorem leaf0984 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(91/512),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0095 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0095_checked .re (by decide +kernel)
#print axioms leaf0984
theorem leaf0985 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(363/2048),(91/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0092 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0092_checked .re (by decide +kernel)
#print axioms leaf0985
theorem leaf0986 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(181/1024),(363/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0090 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0090_checked .re (by decide +kernel)
#print axioms leaf0986
theorem leaf0987 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(181/1024),(91/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0091 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0091_checked .re (by decide +kernel)
#print axioms leaf0987
theorem leaf0988 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(361/2048),(181/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0089 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0089_checked .re (by decide +kernel)
#print axioms leaf0988
theorem leaf0989 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(45/256),(361/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0085 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0085_checked .re (by decide +kernel)
#print axioms leaf0989
theorem leaf0990 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(45/256),(181/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0086 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0086_checked .re (by decide +kernel)
#print axioms leaf0990
theorem leaf0991 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(45/256),(91/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0087 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0087_checked .re (by decide +kernel)
#print axioms leaf0991
theorem leaf0992 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(45/256),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0088 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0088_checked .re (by decide +kernel)
#print axioms leaf0992
theorem leaf0993 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(359/2048),(45/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0084 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0084_checked .re (by decide +kernel)
#print axioms leaf0993
theorem leaf0994 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(179/1024),(359/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0082 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0082_checked .re (by decide +kernel)
#print axioms leaf0994
theorem leaf0995 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(179/1024),(45/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0083 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0083_checked .re (by decide +kernel)
#print axioms leaf0995
theorem leaf0996 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(357/2048),(179/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0081 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0081_checked .re (by decide +kernel)
#print axioms leaf0996
theorem leaf0997 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(89/512),(357/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0078 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0078_checked .re (by decide +kernel)
#print axioms leaf0997
theorem leaf0998 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(89/512),(179/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0079 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0079_checked .re (by decide +kernel)
#print axioms leaf0998
theorem leaf0999 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(89/512),(45/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0080 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0080_checked .re (by decide +kernel)
#print axioms leaf0999
theorem leaf1000 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(355/2048),(89/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0077 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0077_checked .re (by decide +kernel)
#print axioms leaf1000
theorem leaf1001 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(177/1024),(355/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0075 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0075_checked .re (by decide +kernel)
#print axioms leaf1001
theorem leaf1002 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(177/1024),(89/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0076 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0076_checked .re (by decide +kernel)
#print axioms leaf1002
theorem leaf1003 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(353/2048),(177/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0074 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0074_checked .re (by decide +kernel)
#print axioms leaf1003
theorem leaf1004 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(11/64),(353/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0068 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0068_checked .re (by decide +kernel)
#print axioms leaf1004
theorem leaf1005 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(11/64),(177/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0069 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0069_checked .re (by decide +kernel)
#print axioms leaf1005
theorem leaf1006 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(11/64),(89/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0070 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0070_checked .re (by decide +kernel)
#print axioms leaf1006
theorem leaf1007 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(11/64),(45/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0071 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0071_checked .re (by decide +kernel)
#print axioms leaf1007
end ShoulderRoot1Angular20261003
