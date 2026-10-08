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
def state_286302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 9)))
def hex_286302 : String := "404142430A4440080808430644060642434440410605050A440540414442050608050543064440060540060641420A06420506"
theorem cover_286302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286302 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_286302)
  decide +kernel
#print axioms cover_286302

def state_286353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 4)))
def hex_286353 : String := "4440414208070505404142084443404106420806060708424405434008050844434041420506050540414205090505434009410605400905410805"
theorem cover_286353 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286353 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_286353)
  decide +kernel
#print axioms cover_286353

def state_286412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 4)))
def hex_286412 : String := "41084205434405410A0505"
theorem cover_286412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_286412)
  decide +kernel
#print axioms cover_286412

def state_286423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 5)))
def hex_286423 : String := "4041084442430A084340410A44420A06090A4041084442080908084208090A"
theorem cover_286423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_286423)
  decide +kernel
#print axioms cover_286423

def state_286457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_286457 : String := "41424306064305054243064406064308444006414206050606"
theorem cover_286457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286457 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_286457)
  decide +kernel
#print axioms cover_286457

def state_286483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_286483 : String := "42430A4440414206430506060A0643054442404105430544070641430507430A444241070A41054043050709420A41050A40050542404105060A4005410505"
theorem cover_286483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286483 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_286483)
  decide +kernel
#print axioms cover_286483

def state_286547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_286547 : String := "4306440606"
theorem cover_286547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_286547)
  decide +kernel
#print axioms cover_286547
end Mub6.Numerical.CircleFullPrototype.Forest
