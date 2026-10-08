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
def state_286553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_286553 : String := "4441420A0508410A06"
theorem cover_286553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286553 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_286553)
  decide +kernel
#print axioms cover_286553

def state_286565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 8)))
def hex_286565 : String := "4006430A444142064006090606"
theorem cover_286565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_286565)
  decide +kernel
#print axioms cover_286565

def state_286578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 8)))
def hex_286578 : String := "404305440808434408084442414043054407054309440942090540080941050842414005430544420A050A4006430606410540054305440808"
theorem cover_286578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286578 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_286578)
  decide +kernel
#print axioms cover_286578

def state_286635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 8)))
def hex_286635 : String := "420640084308440808"
theorem cover_286635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_286635)
  decide +kernel
#print axioms cover_286635

def state_286644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 9)))
def hex_286644 : String := "414206400643054442064105060606"
theorem cover_286644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_286644)
  decide +kernel
#print axioms cover_286644

def state_286659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_286659 : String := "404106420606410A06"
theorem cover_286659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_286659)
  decide +kernel
#print axioms cover_286659

def state_286671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
def hex_286671 : String := "424344404106060640060644074009074344400542060509440709"
theorem cover_286671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_286671)
  decide +kernel
#print axioms cover_286671

def state_286699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
def hex_286699 : String := "434440414206060641060640414206064206064106064440410742434406060A0A410742050640410942444306090909414206064244050606"
theorem cover_286699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286699 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_286699)
  decide +kernel
#print axioms cover_286699

def state_286756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
def hex_286756 : String := "43444041090841420606060944400941070A09"
theorem cover_286756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286756 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_286756)
  decide +kernel
#print axioms cover_286756

def state_286777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 4)))
def hex_286777 : String := "434440064107420606400606440708"
theorem cover_286777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_286777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_286777)
  decide +kernel
#print axioms cover_286777
end Mub6.Numerical.CircleFullPrototype.Forest
