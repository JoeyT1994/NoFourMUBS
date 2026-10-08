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
def state_7245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 17)))
def hex_7245 : String := "414344070A44074206404106430A0706430A44074207400907"
theorem cover_7245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_7245)
  decide +kernel
#print axioms cover_7245

def state_7272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 8)))
def hex_7272 : String := "4406400641424406430640060A0606"
theorem cover_7272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7272 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_7272)
  decide +kernel
#print axioms cover_7272

def state_7288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 16)))
def hex_7288 : String := "40064142430644064006090606"
theorem cover_7288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7288 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_7288)
  decide +kernel
#print axioms cover_7288

def state_7302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
def hex_7302 : String := "41424306440640054105060606"
theorem cover_7302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_7302)
  decide +kernel
#print axioms cover_7302

def state_7318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 17)))
def hex_7318 : String := "444006414243064406400641424306090606060640414244060A0606414244430A4041420A060641420A06060A440606420A06"
theorem cover_7318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_7318)
  decide +kernel
#print axioms cover_7318

def state_7370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 34)))
def hex_7370 : String := "404142430609060641424344094041090641090609094243060606"
theorem cover_7370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_7370)
  decide +kernel
#print axioms cover_7370

def state_7397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 35)))
def hex_7397 : String := "40414205430605424306050641424344404105420506414205434406050542430A0506050543440607440905424344060A44080506"
theorem cover_7397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_7397)
  decide +kernel
#print axioms cover_7397

def state_7450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 55 else (if j.val < 4 then 17 else 17)))
def hex_7450 : String := "4306440606"
theorem cover_7450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_7450)
  decide +kernel
#print axioms cover_7450

def state_7455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 55) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
def hex_7455 : String := "42430644060606"
theorem cover_7455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7455 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_7455)
  decide +kernel
#print axioms cover_7455

def state_7463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 16 else 8)))
def hex_7463 : String := "4405404142440543054041420A4405080A4108050606410505"
theorem cover_7463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_7463)
  decide +kernel
#print axioms cover_7463
end Mub6.Numerical.CircleFullPrototype.Forest
