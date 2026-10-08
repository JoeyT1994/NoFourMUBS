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
def state_288495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 91) else (if j.val < 3 then 95 else (if j.val < 4 then 57 else 36)))
def hex_288495 : String := "40434442410A064140430A09430A4408084006430A44A906064442064140090840064344080605064344420A410A0A0A440808"
theorem cover_288495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288495 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_288495)
  decide +kernel
#print axioms cover_288495

def state_288546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 45) else (if j.val < 3 then 47 else (if j.val < 4 then 57 else 37)))
def hex_288546 : String := "4206410A40060A"
theorem cover_288546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_288546)
  decide +kernel
#print axioms cover_288546

def state_288553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 28 else 19)))
def hex_288553 : String := "4206410A06"
theorem cover_288553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_288553)
  decide +kernel
#print axioms cover_288553

def state_288558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 29 else 9)))
def hex_288558 : String := "4442410806414009084043444206090606434442084108404344080608080808420609"
theorem cover_288558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_288558)
  decide +kernel
#print axioms cover_288558

def state_288593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 9)))
def hex_288593 : String := "43444241080A41430A08430A404442084108430A0808080A440808"
theorem cover_288593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288593 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_288593)
  decide +kernel
#print axioms cover_288593

def state_288621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 14 else 9)))
def hex_288621 : String := "400605"
theorem cover_288621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_288621)
  decide +kernel
#print axioms cover_288621

def state_288625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 9)))
def hex_288625 : String := "434441420640064344420641400607060644420541400643440506050506060644414205400643440506050506"
theorem cover_288625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_288625)
  decide +kernel
#print axioms cover_288625

def state_288670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 23 else (if j.val < 4 then 14 else 9)))
def hex_288670 : String := "434441420543400A0A4044054205410A050505410A06440541420544050605"
theorem cover_288670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_288670)
  decide +kernel
#print axioms cover_288670

def state_288701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 4)))
def hex_288701 : String := "44414205400708054142084044080808420540444341420540060505050605"
theorem cover_288701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_288701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_288701)
  decide +kernel
#print axioms cover_288701
end Mub6.Numerical.CircleFullPrototype.Forest
