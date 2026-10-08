import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_287804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 94 else (if j.val < 4 then 56 else 34)))
def hex_287804 : String := "414043440942090544074241070641054340050907094043084442064109060609"
theorem cover_287804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287804 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_287804)
  decide +kernel
#print axioms cover_287804

def state_287837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 95 else (if j.val < 4 then 56 else 34)))
def hex_287837 : String := "41400543054409424105400509054043084408084309440942414043084407420908094008094140050908"
theorem cover_287837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_287837)
  decide +kernel
#print axioms cover_287837

def state_287880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 56 else 35)))
def hex_287880 : String := "42414043444206050644420641050606430A44420A4140050A40430A06090A4006430A06A9"
theorem cover_287880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_287880)
  decide +kernel
#print axioms cover_287880

def state_287919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 94 else (if j.val < 4 then 57 else 34)))
def hex_287919 : String := "4107434044070644094205410705400607"
theorem cover_287919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_287919)
  decide +kernel
#print axioms cover_287919

def state_287936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 95 else (if j.val < 4 then 57 else 34)))
def hex_287936 : String := "4143400707074340440A424107060A4442070A42414340070707434044070609400607414340070707434008440942410908080A4007440707"
theorem cover_287936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287936 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_287936)
  decide +kernel
#print axioms cover_287936

def state_287993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 35)))
def hex_287993 : String := "4241434006444241070641074340060707420641430A0706400644070806A9"
theorem cover_287993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_287993 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_287993)
  decide +kernel
#print axioms cover_287993

def state_288025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 56 else 17)))
def hex_288025 : String := "440942410A40430944090A09A9"
theorem cover_288025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288025 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_288025)
  decide +kernel
#print axioms cover_288025
end Mub6.Numerical.CircleFullPrototype.Forest
