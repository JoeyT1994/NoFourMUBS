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
def state_158432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 15)))
def hex_158432 : String := "4043414244090A09424409060941424440434107424405060507090844090642444005430905400643060844050643094109424409404309080909"
theorem cover_158432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_158432)
  decide +kernel
#print axioms cover_158432

def state_158492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
def hex_158492 : String := "4440434244050705420A0543070A4043420741444006070607420A414440050A400643060A44050643074207410A07"
theorem cover_158492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158492 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_158492)
  decide +kernel
#print axioms cover_158492

def state_158539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
def hex_158539 : String := "4440050940434142440506050541424405060505430941424409404307410A0507094244050705"
theorem cover_158539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_158539)
  decide +kernel
#print axioms cover_158539

def state_158580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 7)))
def hex_158580 : String := "444043414244060A4440050640074341060A08420A440540050A41420A4407070A430A0A404341420A08420A4440430A0A0A0A41080A0A"
theorem cover_158580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158580 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_158580)
  decide +kernel
#print axioms cover_158580

def state_158635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 7)))
def hex_158635 : String := "444043414405070541070543094109054043410842444005430505084405060808"
theorem cover_158635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_158635)
  decide +kernel
#print axioms cover_158635

def state_158668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
def hex_158668 : String := "42440A0A4405404305054341420A05050A"
theorem cover_158668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158668 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_158668)
  decide +kernel
#print axioms cover_158668
end Mub6.Numerical.CircleFullPrototype.Forest
