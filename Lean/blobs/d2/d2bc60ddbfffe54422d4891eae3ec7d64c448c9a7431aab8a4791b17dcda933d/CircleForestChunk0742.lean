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
def state_1478968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 90 else 59)))
def hex_1478968 : String := "41444240430505434105054106064005430505054442400543054105050505"
theorem cover_1478968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1478968)
  decide +kernel
#print axioms cover_1478968

def state_1479000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 59)))
def hex_1479000 : String := "4442404341444205050505414407054442070505434106060640430541050543410905410944424005060505420605"
theorem cover_1479000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479000 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1479000)
  decide +kernel
#print axioms cover_1479000

def state_1479047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 89) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 59)))
def hex_1479047 : String := "44424043054105054341060541060640054305410505420505"
theorem cover_1479047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 25) (hex := hex_1479047)
  decide +kernel
#print axioms cover_1479047

def state_1479072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 45 else 59)))
def hex_1479072 : String := "404305054341050541444240054305410505050505"
theorem cover_1479072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1479072)
  decide +kernel
#print axioms cover_1479072

def state_1479093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
def hex_1479093 : String := "43444240090808420505444240094143080A09400908424005414305444240050A0505094005410505"
theorem cover_1479093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1479093)
  decide +kernel
#print axioms cover_1479093

def state_1479136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 44 else 29)))
def hex_1479136 : String := "440807"
theorem cover_1479136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479136 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1479136)
  decide +kernel
#print axioms cover_1479136

def state_1479140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 58)))
def hex_1479140 : String := "424043410808414408420908080808"
theorem cover_1479140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1479140)
  decide +kernel
#print axioms cover_1479140

def state_1479155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 45 else 59)))
def hex_1479155 : String := "424043414442060806444206070641444206404309090606444206404308080606430606404341070741440842400506054408420505430708"
theorem cover_1479155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1479155)
  decide +kernel
#print axioms cover_1479155
end Mub6.Numerical.CircleFullD0.Forest
