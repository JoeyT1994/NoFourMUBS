import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_957803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
def hex_957803 : String := "41424344090A44404142430944090509090940410A420A0A0A430944090A424309440940414243094409050942430944094007090941090909"
theorem cover_957803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_957803)
  decide +kernel
#print axioms cover_957803

def state_957860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 72 else 109)))
def hex_957860 : String := "4142430944090A0909"
theorem cover_957860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957860 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_957860)
  decide +kernel
#print axioms cover_957860

def state_957870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 108)))
def hex_957870 : String := "404142060942060906"
theorem cover_957870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957870 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_957870)
  decide +kernel
#print axioms cover_957870

def state_957881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 174) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
def hex_957881 : String := "42434440414205430905424344060505094142050906400541054205050543440940410542430A05090A44404105420508414205050605"
theorem cover_957881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_957881)
  decide +kernel
#print axioms cover_957881

def state_957937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 175) else (if j.val < 3 then 212 else (if j.val < 4 then 73 else 109)))
def hex_957937 : String := "4344404142060906064041420543440905054243440605054309440605414206430905420609440605"
theorem cover_957937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_957937)
  decide +kernel
#print axioms cover_957937

def state_957978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 175) else (if j.val < 3 then 213 else (if j.val < 4 then 73 else 109)))
def hex_957978 : String := "43440940414243090509090944404109060640410542054309054142050906"
theorem cover_957978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_957978)
  decide +kernel
#print axioms cover_957978

def state_958009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 87) else (if j.val < 3 then 106 else (if j.val < 4 then 73 else 109)))
def hex_958009 : String := "41424344060A06430944060A4206430906"
theorem cover_958009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_958009)
  decide +kernel
#print axioms cover_958009

def state_958026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 107 else (if j.val < 4 then 36 else 54)))
def hex_958026 : String := "4309440940414243094409404105420509410509090909"
theorem cover_958026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958026 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_958026)
  decide +kernel
#print axioms cover_958026
end Mub6.Numerical.CircleFullD0.Forest
