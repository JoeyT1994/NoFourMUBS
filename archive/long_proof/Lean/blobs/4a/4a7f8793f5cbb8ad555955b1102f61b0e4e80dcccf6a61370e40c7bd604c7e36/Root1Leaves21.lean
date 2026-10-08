import ParametricAngularLeaf
import Root0Arcs11
import Root0Arcs12
import Root0Arcs17
import Root0Arcs18
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
theorem leaf0504 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(343/512),(43/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0302 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0302_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0504
theorem leaf0505 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(171/256),(343/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0300 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0300_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0505
theorem leaf0506 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(341/512),(171/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0295 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0295_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0506
theorem leaf0507 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(85/128),(341/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0287 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0287_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0507
theorem leaf0508 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(85/128),(341/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0287 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0287_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0508
theorem leaf0509 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(341/512),(171/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0295 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0295_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0509
theorem leaf0510 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(171/512)⟩ ⟨(85/128),(341/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0201 Root0Angular20261003.arc0287 Root0Angular20261003.arc0201_checked Root0Angular20261003.arc0287_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0510
theorem leaf0511 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(341/1024)⟩ ⟨(85/128),(341/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0196 Root0Angular20261003.arc0287 Root0Angular20261003.arc0196_checked Root0Angular20261003.arc0287_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0511
theorem leaf0512 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(171/256),(43/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0301 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0301_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0512
theorem leaf0513 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(171/256),(43/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0301 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0301_checked .im (by decide +kernel)
#print axioms leaf0513
theorem leaf0514 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(341/512),(171/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0295 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0295_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0514
theorem leaf0515 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(85/128),(341/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0287 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0287_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0515
theorem leaf0516 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(341/512),(171/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0295 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0295_checked .im (by decide +kernel)
#print axioms leaf0516
theorem leaf0517 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(85/128),(341/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0287 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0287_checked .im (by decide +kernel)
#print axioms leaf0517
theorem leaf0518 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(679/1024),(85/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0285 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0285_checked .im (by decide +kernel)
#print axioms leaf0518
theorem leaf0519 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(339/512),(679/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0283 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0283_checked .im (by decide +kernel)
#print axioms leaf0519
theorem leaf0520 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(679/1024),(85/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0285 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0285_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0520
theorem leaf0521 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(339/512),(679/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0283 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0283_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0521
theorem leaf0522 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(677/1024),(339/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0282 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0282_checked .im (by decide +kernel)
#print axioms leaf0522
theorem leaf0523 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(169/256),(677/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0279 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0279_checked .im (by decide +kernel)
#print axioms leaf0523
theorem leaf0524 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(343/1024)⟩ ⟨(677/1024),(339/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0204 Root0Angular20261003.arc0282 Root0Angular20261003.arc0204_checked Root0Angular20261003.arc0282_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0524
theorem leaf0525 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(169/256),(1353/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 arcNew0010 Root0Angular20261003.arc0206_checked arcNew0010_checked .im (by decide +kernel)
#print axioms leaf0525
theorem leaf0526 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(1353/2048),(677/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 arcNew0011 Root0Angular20261003.arc0206_checked arcNew0011_checked .im (by decide +kernel)
#print axioms leaf0526
theorem leaf0527 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(169/256),(677/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0279 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0279_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0527
end ShoulderRoot1Angular20261003
