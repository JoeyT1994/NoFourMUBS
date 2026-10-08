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
def state_1480900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 15)))
def hex_1480900 : String := "43424440070740070607424443404142064408064206080840410942064408060606444308404108080843400506400506"
theorem cover_1480900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480900 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1480900)
  decide +kernel
#print axioms cover_1480900

def state_1480949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 15)))
def hex_1480949 : String := "430742444143084042060806080644084143050805"
theorem cover_1480949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1480949)
  decide +kernel
#print axioms cover_1480949

def state_1480970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
def hex_1480970 : String := "41434244404107070707440707420944430809094307424441430840440509050841090644084143074042060707430708"
theorem cover_1480970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1480970)
  decide +kernel
#print axioms cover_1480970

def state_1481020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
def hex_1481020 : String := "44404107424407070741070707"
theorem cover_1481020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1481020)
  decide +kernel
#print axioms cover_1481020

def state_1481034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
def hex_1481034 : String := "404142430808080808"
theorem cover_1481034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481034 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1481034)
  decide +kernel
#print axioms cover_1481034

def state_1481043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
def hex_1481043 : String := "404142430A44404308410A4244060A0608400A0A0A42434407074440410806084041430A420505430542050541430708084307084142430708074243070807"
theorem cover_1481043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1481043)
  decide +kernel
#print axioms cover_1481043

def state_1481106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_1481106 : String := "4142434408400A07440809430844080842434441050507440841090743440707440808"
theorem cover_1481106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 35) (hex := hex_1481106)
  decide +kernel
#print axioms cover_1481106
end Mub6.Numerical.CircleFullD0.Forest
