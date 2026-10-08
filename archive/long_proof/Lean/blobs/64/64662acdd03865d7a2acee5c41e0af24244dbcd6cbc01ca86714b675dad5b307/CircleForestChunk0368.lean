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
def state_1025671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 24)))
def hex_1025671 : String := "41420840444107420A07074441064208060842400A08400A44424143400A06080A4143060643060A42084106430608"
theorem cover_1025671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1025671)
  decide +kernel
#print axioms cover_1025671

def state_1025718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 25)))
def hex_1025718 : String := "434142080742404443410742400708070808444341084208404443070707080808400744430642080607410842084044070708"
theorem cover_1025718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025718 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1025718)
  decide +kernel
#print axioms cover_1025718

def state_1025771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
def hex_1025771 : String := "0A"
theorem cover_1025771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025771 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1025771)
  decide +kernel
#print axioms cover_1025771

def state_1025773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 24)))
def hex_1025773 : String := "4341424006440608400A4443090743414205404443050505054206400A07084206400644064306060A"
theorem cover_1025773 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025773 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_1025773)
  decide +kernel
#print axioms cover_1025773

def state_1025814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 25)))
def hex_1025814 : String := "4341420840440A08084206400A444342064140060806060808"
theorem cover_1025814 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025814 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1025814)
  decide +kernel
#print axioms cover_1025814

def state_1025840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
def hex_1025840 : String := "4443420A0A0A43420A4140074407070A0A"
theorem cover_1025840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025840 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1025840)
  decide +kernel
#print axioms cover_1025840

def state_1025862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 24)))
def hex_1025862 : String := "4443420A0A0A43420A41400A440A0A0A0A"
theorem cover_1025862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1025862)
  decide +kernel
#print axioms cover_1025862

def state_1025880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 48)))
def hex_1025880 : String := "4342414044094309090909414044094309090909420941400A0909"
theorem cover_1025880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025880 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1025880)
  decide +kernel
#print axioms cover_1025880
end Mub6.Numerical.CircleFullD0.Forest
