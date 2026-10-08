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
def state_49507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 26)))
def hex_49507 : String := "424308440840410808084308440840410842080808"
theorem cover_49507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_49507)
  decide +kernel
#print axioms cover_49507

def state_49529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 26)))
def hex_49529 : String := "434406400605440640414206430606060A"
theorem cover_49529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_49529)
  decide +kernel
#print axioms cover_49529

def state_49547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 26)))
def hex_49547 : String := "440840410842050908"
theorem cover_49547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_49547)
  decide +kernel
#print axioms cover_49547

def state_49557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 52)))
def hex_49557 : String := "4041080608"
theorem cover_49557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49557 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_49557)
  decide +kernel
#print axioms cover_49557

def state_49565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 34 else (if j.val < 4 then 47 else 53)))
def hex_49565 : String := "4344064041080608444006064041420643080906410806"
theorem cover_49565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_49565)
  decide +kernel
#print axioms cover_49565

def state_49588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 35 else (if j.val < 4 then 47 else 53)))
def hex_49588 : String := "4344084041084206080844084041424308440891430805424306440606434408914407914108420808"
theorem cover_49588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49588 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_49588)
  decide +kernel
#print axioms cover_49588

def state_49629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
def hex_49629 : String := "4206434406400606440640414206060641420643060606"
theorem cover_49629 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49629 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_49629)
  decide +kernel
#print axioms cover_49629

def state_49652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 53)))
def hex_49652 : String := "41084205430844084041080505"
theorem cover_49652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49652 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_49652)
  decide +kernel
#print axioms cover_49652

def state_49667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 18) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 27)))
def hex_49667 : String := "42434041074442090A07070943400A41070A4041054442090508414442090507444243400941074442074307090709430A05424307090A"
theorem cover_49667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49667 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 55) (hex := hex_49667)
  decide +kernel
#print axioms cover_49667

def state_49723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 16 else (if j.val < 4 then 23 else 27)))
def hex_49723 : String := "4341400A444206430A41400A070607400A44050541400844420943410940060609084008440608"
theorem cover_49723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49723 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_49723)
  decide +kernel
#print axioms cover_49723

def state_49763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 27)))
def hex_49763 : String := "0A"
theorem cover_49763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_49763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_49763)
  decide +kernel
#print axioms cover_49763
end Mub6.Numerical.CircleFullPrototype.Forest
