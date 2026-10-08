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
def state_376701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
def hex_376701 : String := "4344404206444107430642060A060606444042094344410742094044430A09430A090709090709"
theorem cover_376701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_376701)
  decide +kernel
#print axioms cover_376701

def state_376741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 12)))
def hex_376741 : String := "44404206414443064206404441060606060644430642064041060606060606"
theorem cover_376741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376741 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_376741)
  decide +kernel
#print axioms cover_376741

def state_376775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 24)))
def hex_376775 : String := "09"
theorem cover_376775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376775 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_376775)
  decide +kernel
#print axioms cover_376775

def state_376777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
def hex_376777 : String := "434442094044414342404441070506060A09434240440506054005050541430609430609444107430605064206404106060609"
theorem cover_376777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_376777)
  decide +kernel
#print axioms cover_376777

def state_376828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 47) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
def hex_376828 : String := "434442404109050640414405430605054106050609"
theorem cover_376828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_376828)
  decide +kernel
#print axioms cover_376828

def state_376849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
def hex_376849 : String := "42064109430609"
theorem cover_376849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376849 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_376849)
  decide +kernel
#print axioms cover_376849

def state_376856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 25)))
def hex_376856 : String := "09"
theorem cover_376856 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376856 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_376856)
  decide +kernel
#print axioms cover_376856

def state_376857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 13)))
def hex_376857 : String := "06"
theorem cover_376857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_376857)
  decide +kernel
#print axioms cover_376857

def state_376858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
def hex_376858 : String := "41430644060606"
theorem cover_376858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_376858)
  decide +kernel
#print axioms cover_376858

def state_376865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_376865 : String := "40410506414305424406050606"
theorem cover_376865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_376865)
  decide +kernel
#print axioms cover_376865

def state_376879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
def hex_376879 : String := "4440410842440A060A0A06"
theorem cover_376879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_376879)
  decide +kernel
#print axioms cover_376879

def state_376893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_376893 : String := "42430A44430A440A4008080808"
theorem cover_376893 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376893 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_376893)
  decide +kernel
#print axioms cover_376893

def state_376908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 6)))
def hex_376908 : String := "44410A440A404206060606"
theorem cover_376908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_376908)
  decide +kernel
#print axioms cover_376908

def state_376921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
def hex_376921 : String := "430A444042430A44410A4042430A09080A410840080A080A40080A"
theorem cover_376921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 27) (hex := hex_376921)
  decide +kernel
#print axioms cover_376921
end Mub6.Numerical.CircleFullPrototype.Forest
