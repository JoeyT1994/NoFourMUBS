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
def state_11110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 9)))
def hex_11110 : String := "4240414344080505084143094408050940414344080808084143444041434442080609080841434442094008090944420808090909440808430908"
theorem cover_11110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_11110)
  decide +kernel
#print axioms cover_11110

def state_11169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
def hex_11169 : String := "4344420906094442080809"
theorem cover_11169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_11169)
  decide +kernel
#print axioms cover_11169

def state_11180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_11180 : String := "42440A094440414309050841090909"
theorem cover_11180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_11180)
  decide +kernel
#print axioms cover_11180

def state_11197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
def hex_11197 : String := "43400841440808084005414442050505444207430740050605"
theorem cover_11197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_11197)
  decide +kernel
#print axioms cover_11197

def state_11222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
def hex_11222 : String := "43404108084144420808420843080844080840410544430805054144430809054443084240050808430805"
theorem cover_11222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_11222)
  decide +kernel
#print axioms cover_11222

def state_11265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
def hex_11265 : String := "4205434440054105080505"
theorem cover_11265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_11265)
  decide +kernel
#print axioms cover_11265

def state_11279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 4)))
def hex_11279 : String := "414243064406070606"
theorem cover_11279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_11279)
  decide +kernel
#print axioms cover_11279

def state_11291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 8 else 4)))
def hex_11291 : String := "440640410706414244430606070606"
theorem cover_11291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_11291)
  decide +kernel
#print axioms cover_11291

def state_11307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 9 else 8)))
def hex_11307 : String := "404142080606414243440606080606"
theorem cover_11307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_11307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_11307)
  decide +kernel
#print axioms cover_11307
end Mub6.Numerical.CircleFullPrototype.Forest
