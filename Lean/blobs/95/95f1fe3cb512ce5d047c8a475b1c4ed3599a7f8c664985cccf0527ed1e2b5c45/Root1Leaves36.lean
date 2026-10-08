import ParametricAngularLeaf
import Root0Arcs05
import Root0Arcs06
import Root0Arcs07
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
theorem leaf0864 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(23/128),(369/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0100 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0100_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0864
theorem leaf0865 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(369/2048),(185/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0105 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0105_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0865
theorem leaf0866 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(23/128),(369/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0100 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0100_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0866
theorem leaf0867 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(185/1024),(93/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0106 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0106_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0867
theorem leaf0868 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(185/1024),(93/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0106 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0106_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0868
theorem leaf0869 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(369/2048),(185/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0105 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0105_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0869
theorem leaf0870 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(23/128),(369/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0100 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0100_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0870
theorem leaf0871 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(369/2048),(185/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0105 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0105_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0871
theorem leaf0872 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(23/128),(369/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0100 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0100_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0872
theorem leaf0873 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(95/512),(3/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0112 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0112_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0873
theorem leaf0874 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(47/256),(95/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0110 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0110_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0874
theorem leaf0875 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(47/256),(95/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0110 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0110_checked .re (by decide +kernel)
#print axioms leaf0875
theorem leaf0876 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(47/256),(3/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0111 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0111_checked .re (by decide +kernel)
#print axioms leaf0876
theorem leaf0877 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(187/1024),(47/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0109 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0109_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0877
theorem leaf0878 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(93/512),(187/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0107 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0107_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0878
theorem leaf0879 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(93/512),(47/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0108 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0108_checked .re (by decide +kernel)
#print axioms leaf0879
theorem leaf0880 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(85/256)⟩ ⟨(185/1024),(93/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0193 Root0Angular20261003.arc0106 Root0Angular20261003.arc0193_checked Root0Angular20261003.arc0106_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0880
theorem leaf0881 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(23/128),(369/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0100 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0100_checked .re (by decide +kernel)
#print axioms leaf0881
theorem leaf0882 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(369/2048),(185/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0105 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0105_checked .re (by decide +kernel)
#print axioms leaf0882
theorem leaf0883 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(23/128),(185/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0101 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0101_checked .re (by decide +kernel)
#print axioms leaf0883
theorem leaf0884 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(339/1024)⟩ ⟨(23/128),(93/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0190 Root0Angular20261003.arc0102 Root0Angular20261003.arc0190_checked Root0Angular20261003.arc0102_checked .re (by decide +kernel)
#print axioms leaf0884
theorem leaf0885 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(23/128),(47/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0103 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0103_checked .re (by decide +kernel)
#print axioms leaf0885
theorem leaf0886 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(91/512),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0095 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0095_checked .re (by decide +kernel)
#print axioms leaf0886
theorem leaf0887 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(183/1024),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0098 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0098_checked .re (by decide +kernel)
#print axioms leaf0887
end ShoulderRoot1Angular20261003
