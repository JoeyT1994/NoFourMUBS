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
def state_2251551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 54)))
def hex_2251551 : String := "4142444006430605054406404341064205060A0A4205440640054341050505"
theorem cover_2251551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251551 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_2251551)
  decide +kernel
#print axioms cover_2251551

def state_2251583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 55)))
def hex_2251583 : String := "4341420744400743414207060741420544060A07400743074142050A050741420544050505"
theorem cover_2251583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251583 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_2251583)
  decide +kernel
#print axioms cover_2251583

def state_2251622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 102) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 55)))
def hex_2251622 : String := "4244404307054308050844404341424406080A4207440607410A4205440A0543410A42444007080844060A410A42050A40434108074108054308410805"
theorem cover_2251622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_2251622)
  decide +kernel
#print axioms cover_2251622

def state_2251683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 103) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 55)))
def hex_2251683 : String := "4205444007434142074440074307410A050707414205440505054005430705"
theorem cover_2251683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 31) (hex := hex_2251683)
  decide +kernel
#print axioms cover_2251683

def state_2251714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 33 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 93 else 55)))
def hex_2251714 : String := "414205444043410A05050A0505"
theorem cover_2251714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251714 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2251714)
  decide +kernel
#print axioms cover_2251714

def state_2251727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 27)))
def hex_2251727 : String := "4142444005090544404341064205060A0A4043410A05050A4205444043414205440505050543414205440605050505"
theorem cover_2251727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251727 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2251727)
  decide +kernel
#print axioms cover_2251727

def state_2251776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 27)))
def hex_2251776 : String := "42440908444043410A42440608060A434107420807074043080A08"
theorem cover_2251776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_2251776)
  decide +kernel
#print axioms cover_2251776
end Mub6.Numerical.CircleFullD0.Forest
