import ParametricAngularLeaf
import Root0Arcs06
import Root0Arcs07
import Root0Arcs12
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
theorem leaf0840 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(47/256),(189/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 arcNew0004 Root0Angular20261003.arc0204_checked arcNew0004_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0840
theorem leaf0841 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(95/512),(3/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0112 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0112_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0841
theorem leaf0842 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(47/256),(95/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0110 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0110_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0842
theorem leaf0843 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(47/256),(95/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0110 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0110_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0843
theorem leaf0844 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(93/512),(47/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0108 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0108_checked .re (by decide +kernel)
#print axioms leaf0844
theorem leaf0845 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(187/1024),(47/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0109 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0109_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0845
theorem leaf0846 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(93/512),(187/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0107 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0107_checked .re (by decide +kernel)
#print axioms leaf0846
theorem leaf0847 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(93/512),(187/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0107 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0107_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0847
theorem leaf0848 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(23/128),(93/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0102 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0102_checked .re (by decide +kernel)
#print axioms leaf0848
theorem leaf0849 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(185/1024),(93/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0106 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0106_checked .re (by decide +kernel)
#print axioms leaf0849
theorem leaf0850 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(371/2048),(93/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 arcNew0003 Root0Angular20261003.arc0203_checked arcNew0003_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0850
theorem leaf0851 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(185/1024),(371/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 arcNew0002 Root0Angular20261003.arc0203_checked arcNew0002_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0851
theorem leaf0852 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(23/128),(185/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0101 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0101_checked .re (by decide +kernel)
#print axioms leaf0852
theorem leaf0853 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(1369/4096)⟩ ⟨(369/2048),(185/1024)⟩ := by
  exact corner_leaf cap arcNew0008 Root0Angular20261003.arc0105 arcNew0008_checked Root0Angular20261003.arc0105_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0853
theorem leaf0854 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1369/4096),(685/2048)⟩ ⟨(369/2048),(185/1024)⟩ := by
  exact moment_leaf cap arcNew0009 Root0Angular20261003.arc0105 arcNew0009_checked Root0Angular20261003.arc0105_checked .re (by decide +kernel)
#print axioms leaf0854
theorem leaf0855 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(23/128),(369/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0100 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0100_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0855
theorem leaf0856 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(187/1024),(47/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0109 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0109_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0856
theorem leaf0857 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(93/512),(187/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0107 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0107_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0857
theorem leaf0858 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(187/1024),(47/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0109 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0109_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0858
theorem leaf0859 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(93/512),(187/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0107 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0107_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0859
theorem leaf0860 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(185/1024),(371/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 arcNew0002 Root0Angular20261003.arc0202_checked arcNew0002_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0860
theorem leaf0861 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(371/2048),(93/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 arcNew0003 Root0Angular20261003.arc0202_checked arcNew0003_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0861
theorem leaf0862 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(185/1024),(93/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0106 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0106_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0862
theorem leaf0863 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(369/2048),(185/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0105 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0105_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0863
end ShoulderRoot1Angular20261003
