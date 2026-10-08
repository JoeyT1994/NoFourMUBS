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
def state_958304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
def hex_958304 : String := "410542434405050543444041054205434440054105090505414205054243444005060505430A050505"
theorem cover_958304 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958304 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_958304)
  decide +kernel
#print axioms cover_958304

def state_958345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 55)))
def hex_958345 : String := "4142050A424344060505434440410A42060A0A0A440505"
theorem cover_958345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_958345)
  decide +kernel
#print axioms cover_958345

def state_958368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
def hex_958368 : String := "4142430A07430A44070A424344060A06434440410A09060A440640410A42060A06"
theorem cover_958368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_958368)
  decide +kernel
#print axioms cover_958368

def state_958401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 27)))
def hex_958401 : String := "4041054243440505054344404105060605054142050506"
theorem cover_958401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_958401)
  decide +kernel
#print axioms cover_958401

def state_958426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 26)))
def hex_958426 : String := "40414409430942404144084342080808440843090841090909440943094240410909090909"
theorem cover_958426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958426 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_958426)
  decide +kernel
#print axioms cover_958426

def state_958463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 19 else 26)))
def hex_958463 : String := "4041444308074342404108080740084107084206084443080643424041080606094206084144060706"
theorem cover_958463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_958463)
  decide +kernel
#print axioms cover_958463

def state_958508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 27 else (if j.val < 4 then 36 else 27)))
def hex_958508 : String := "424440410A4309420A090A0A0A"
theorem cover_958508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958508 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_958508)
  decide +kernel
#print axioms cover_958508
end Mub6.Numerical.CircleFullD0.Forest
