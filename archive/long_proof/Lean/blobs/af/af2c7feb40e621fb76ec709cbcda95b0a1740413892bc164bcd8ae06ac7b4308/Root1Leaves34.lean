import ParametricAngularLeaf
import Root0Arcs01
import Root0Arcs02
import Root0Arcs04
import Root0Arcs05
import Root0Arcs06
import Root0Arcs07
import Root0Arcs09
import Root0Arcs10
import Root0Arcs12
import Root0Arcs13
import Root1CertificateData
import Root1NewArcs00
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem leaf0816 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(49/256),(25/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0120 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0120_checked .re (by decide +kernel)
#print axioms leaf0816
theorem leaf0817 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(3/16),(49/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0114 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0114_checked .re (by decide +kernel)
#print axioms leaf0817
theorem leaf0818 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(3/16),(25/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0115 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0115_checked .re (by decide +kernel)
#print axioms leaf0818
theorem leaf0819 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(3/16),(13/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0116 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0116_checked .re (by decide +kernel)
#print axioms leaf0819
theorem leaf0820 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(5/32),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0034 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0034_checked .re (by decide +kernel)
#print axioms leaf0820
theorem leaf0821 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(11/64),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0073 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0073_checked .re (by decide +kernel)
#print axioms leaf0821
theorem leaf0822 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(5/32),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0033 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0033_checked .re (by decide +kernel)
#print axioms leaf0822
theorem leaf0823 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(5/32),(11/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0033 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0033_checked .re (by decide +kernel)
#print axioms leaf0823
theorem leaf0824 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(1/8),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0019 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0019_checked .re (by decide +kernel)
#print axioms leaf0824
theorem leaf0825 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(9/64),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0025 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0025_checked .re (by decide +kernel)
#print axioms leaf0825
theorem leaf0826 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(9/64),(5/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0025 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0025_checked .re (by decide +kernel)
#print axioms leaf0826
theorem leaf0827 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(1/8),(9/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0018 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0018_checked .re (by decide +kernel)
#print axioms leaf0827
theorem leaf0828 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(17/128),(9/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0022 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0022_checked .re (by decide +kernel)
#print axioms leaf0828
theorem leaf0829 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(1/8),(17/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0017 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0017_checked .re (by decide +kernel)
#print axioms leaf0829
theorem leaf0830 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(23/128),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0104 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0104_checked .re (by decide +kernel)
#print axioms leaf0830
theorem leaf0831 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(47/256),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0111 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0111_checked .re (by decide +kernel)
#print axioms leaf0831
theorem leaf0832 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(23/128),(47/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0103 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0103_checked .re (by decide +kernel)
#print axioms leaf0832
theorem leaf0833 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(11/64),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0072 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0072_checked .re (by decide +kernel)
#print axioms leaf0833
theorem leaf0834 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(45/256),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0088 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0088_checked .re (by decide +kernel)
#print axioms leaf0834
theorem leaf0835 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(11/64),(45/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0071 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0071_checked .re (by decide +kernel)
#print axioms leaf0835
theorem leaf0836 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(95/512),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0112 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0112_checked .re (by decide +kernel)
#print axioms leaf0836
theorem leaf0837 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(95/512),(3/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0112 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0112_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0837
theorem leaf0838 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(47/256),(95/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0110 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0110_checked .re (by decide +kernel)
#print axioms leaf0838
theorem leaf0839 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(189/1024),(95/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 arcNew0005 Root0Angular20261003.arc0204_checked arcNew0005_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0839
end ShoulderRoot1Angular20261003
