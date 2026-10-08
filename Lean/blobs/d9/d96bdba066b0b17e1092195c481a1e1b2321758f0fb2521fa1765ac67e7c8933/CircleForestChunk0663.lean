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
def state_1459853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 14)))
def hex_1459853 : String := "444240074341070707400643414406420706064107074207400743414442070A0A44420740064306074207400743050707"
theorem cover_1459853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1459853)
  decide +kernel
#print axioms cover_1459853

def state_1459902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
def hex_1459902 : String := "40430A0743410A4244400A430A410808080A410A4207444007430A0707"
theorem cover_1459902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459902 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1459902)
  decide +kernel
#print axioms cover_1459902

def state_1459931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 7)))
def hex_1459931 : String := "4440430A410A0643410A4244060A0A4142444006430A44060A0A0A4244064043060643410A424406050641424406070A4244060706060A"
theorem cover_1459931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459931 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 55) (hex := hex_1459931)
  decide +kernel
#print axioms cover_1459931

def state_1459990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
def hex_1459990 : String := "41430944060909"
theorem cover_1459990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459990 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1459990)
  decide +kernel
#print axioms cover_1459990

def state_1459999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 20 else 14)))
def hex_1459999 : String := "444240410A09414407074407074009070A"
theorem cover_1459999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459999 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1459999)
  decide +kernel
#print axioms cover_1459999

def state_1460019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
def hex_1460019 : String := "41434406090609"
theorem cover_1460019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1460019)
  decide +kernel
#print axioms cover_1460019

def state_1460028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 42 else 28)))
def hex_1460028 : String := "444240064107070642400A4107070A"
theorem cover_1460028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460028 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1460028)
  decide +kernel
#print axioms cover_1460028

def state_1460044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 43 else 56)))
def hex_1460044 : String := "42400641060606"
theorem cover_1460044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460044 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1460044)
  decide +kernel
#print axioms cover_1460044

def state_1460052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 43 else 57)))
def hex_1460052 : String := "4041430A44060A0941434442400607060A444286064286400A410A4307440605434442400607064240050709444240064108080642400941860909"
theorem cover_1460052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460052 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1460052)
  decide +kernel
#print axioms cover_1460052
end Mub6.Numerical.CircleFullD0.Forest
