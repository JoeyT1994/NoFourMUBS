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
def state_1598016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
def hex_1598016 : String := "434041070741444243414007440842070708084341070741050742434107074107070744080840084144420841050642070608"
theorem cover_1598016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_1598016)
  decide +kernel
#print axioms cover_1598016

def state_1598067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
def hex_1598067 : String := "434007414244070707074006410607"
theorem cover_1598067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1598067)
  decide +kernel
#print axioms cover_1598067

def state_1598082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
def hex_1598082 : String := "434208444143080808414305070508"
theorem cover_1598082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1598082)
  decide +kernel
#print axioms cover_1598082

def state_1598100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 25)))
def hex_1598100 : String := "44404305414205444043064106050505050505"
theorem cover_1598100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1598100)
  decide +kernel
#print axioms cover_1598100

def state_1598122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 56 else 50)))
def hex_1598122 : String := "4144064205404306414409420507060506"
theorem cover_1598122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598122 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1598122)
  decide +kernel
#print axioms cover_1598122

def state_1598141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 57 else 100)))
def hex_1598141 : String := "424043410606414442060942404306090609440642054008050640434109094109440942400709074306410944064206400906"
theorem cover_1598141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1598141)
  decide +kernel
#print axioms cover_1598141

def state_1598193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 57 else 101)))
def hex_1598193 : String := "404341444205400905050541444205400705050505"
theorem cover_1598193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1598193)
  decide +kernel
#print axioms cover_1598193

def state_1598214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 57 else 101)))
def hex_1598214 : String := "4043414409420707444205070541440907444207070743414406050541444240090509420508444205404305070505"
theorem cover_1598214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598214 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1598214)
  decide +kernel
#print axioms cover_1598214
end Mub6.Numerical.CircleFullD0.Forest
