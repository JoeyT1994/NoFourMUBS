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
def state_2332168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 7)))
def hex_2332168 : String := "444240050505424041054344054240050505444243050505424340050540090A0541054344054240050505440542404305050505400505"
theorem cover_2332168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2332168)
  decide +kernel
#print axioms cover_2332168

def state_2332224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 14)))
def hex_2332224 : String := "424340410544054243054405400905050540410744070707430507"
theorem cover_2332224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_2332224)
  decide +kernel
#print axioms cover_2332224

def state_2332251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 15)))
def hex_2332251 : String := "424340410A444243400905400941050909424340090A0A0941054442430507054243400A050A0A404107440A0A07434005050A"
theorem cover_2332251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332251 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2332251)
  decide +kernel
#print axioms cover_2332251

def state_2332302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
def hex_2332302 : String := "430544050A"
theorem cover_2332302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2332302)
  decide +kernel
#print axioms cover_2332302

def state_2332307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
def hex_2332307 : String := "41424305050542434405404241054305050505440707430505"
theorem cover_2332307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_2332307)
  decide +kernel
#print axioms cover_2332307

def state_2332332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
def hex_2332332 : String := "4344050505"
theorem cover_2332332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2332332)
  decide +kernel
#print axioms cover_2332332

def state_2332339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
def hex_2332339 : String := "444042084405410506420808404241430644424006060642400606064306440807064241430644400606060606"
theorem cover_2332339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2332339)
  decide +kernel
#print axioms cover_2332339

def state_2332385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
def hex_2332385 : String := "404243440541420805080808420808"
theorem cover_2332385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2332385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_2332385)
  decide +kernel
#print axioms cover_2332385
end Mub6.Numerical.CircleFullD0.Forest
