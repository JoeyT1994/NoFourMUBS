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
def state_1510359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 31)))
def hex_1510359 : String := "40410842084309084142084344400A410A42430A080A050842434440084108420809080843444009414209090940054105424305080544400841080908"
theorem cover_1510359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1510359)
  decide +kernel
#print axioms cover_1510359

def state_1510421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 15)))
def hex_1510421 : String := "43444009414342070942070909400741434207444007414305070705074307074440090A4007410807"
theorem cover_1510421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_1510421)
  decide +kernel
#print axioms cover_1510421

def state_1510462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 15)))
def hex_1510462 : String := "43444006414209060640414209050641424305440905430509420905444009414209090940414208090941424344094007414207090708430909420909"
theorem cover_1510462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510462 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1510462)
  decide +kernel
#print axioms cover_1510462

def state_1510531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 30)))
def hex_1510531 : String := "44404143420A440A40418843070741060A420544054008060A41430A060A404143420644404106070606064342064440070A060706"
theorem cover_1510531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1510531)
  decide +kernel
#print axioms cover_1510531

def state_1510590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 120)))
def hex_1510590 : String := "40418843440A420A40060A0A41880A"
theorem cover_1510590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1510590)
  decide +kernel
#print axioms cover_1510590

def state_1510607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 176) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 121)))
def hex_1510607 : String := "88"
theorem cover_1510607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1510607)
  decide +kernel
#print axioms cover_1510607
end Mub6.Numerical.CircleFullD0.Forest
