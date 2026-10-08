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
def state_2260277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
def hex_2260277 : String := "43420A4041440A0A0A0A4240410605410606404144430A42060A430A060A4144430A42060A430A060A"
theorem cover_2260277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260277 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2260277)
  decide +kernel
#print axioms cover_2260277

def state_2260322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 26)))
def hex_2260322 : String := "4341444042094341444042094309090909444042050A42060A400506414409050542064341094409064109090944404205430A05060541444005090505"
theorem cover_2260322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2260322)
  decide +kernel
#print axioms cover_2260322

def state_2260383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 26)))
def hex_2260383 : String := "43410906410906"
theorem cover_2260383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260383 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2260383)
  decide +kernel
#print axioms cover_2260383

def state_2260390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 27)))
def hex_2260390 : String := "400606"
theorem cover_2260390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2260390)
  decide +kernel
#print axioms cover_2260390

def state_2260403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 104)))
def hex_2260403 : String := "42404341440642090644084209064144060908434144070744420906094107440809400607"
theorem cover_2260403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260403 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2260403)
  decide +kernel
#print axioms cover_2260403

def state_2260440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 104) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 105)))
def hex_2260440 : String := "42404341094442090A094109440905094043410644064240080906414406070843410744070707"
theorem cover_2260440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260440 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2260440)
  decide +kernel
#print axioms cover_2260440

def state_2260479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 105) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 52)))
def hex_2260479 : String := "44424008430A08084240430A4144050505430A41090A400843414408420A080808"
theorem cover_2260479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260479 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2260479)
  decide +kernel
#print axioms cover_2260479
end Mub6.Numerical.CircleFullD0.Forest
