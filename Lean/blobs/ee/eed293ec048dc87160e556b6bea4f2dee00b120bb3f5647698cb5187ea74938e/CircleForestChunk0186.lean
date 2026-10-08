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
def state_982144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
def hex_982144 : String := "44084243080608"
theorem cover_982144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_982144)
  decide +kernel
#print axioms cover_982144

def state_982155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 98 else 40)))
def hex_982155 : String := "4041440A0A080A"
theorem cover_982155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_982155)
  decide +kernel
#print axioms cover_982155

def state_982163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 99 else 40)))
def hex_982163 : String := "4144424340410A060A400607430A404109060A424340410A4406060A404144060506410A0A430A4041090A0A44420608424340060A06430840060A"
theorem cover_982163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_982163)
  decide +kernel
#print axioms cover_982163

def state_982222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 99 else 40)))
def hex_982222 : String := "410A44070A"
theorem cover_982222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_982222)
  decide +kernel
#print axioms cover_982222

def state_982227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 49 else 40)))
def hex_982227 : String := "4340080A4041440A0A080A"
theorem cover_982227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_982227)
  decide +kernel
#print axioms cover_982227

def state_982240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 98 else 41)))
def hex_982240 : String := "404144424305050A054408420508410A0A"
theorem cover_982240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_982240)
  decide +kernel
#print axioms cover_982240

def state_982257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 32 else (if j.val < 4 then 99 else 41)))
def hex_982257 : String := "4041444205430A404109440A0A0A0544424340414406050641050840064105064308404144060806410A0842054340080A404105080541440A05440A05"
theorem cover_982257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982257 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_982257)
  decide +kernel
#print axioms cover_982257

def state_982318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 33 else (if j.val < 4 then 49 else 41)))
def hex_982318 : String := "4340410A080A4041440A07440842430840080A08410A0A"
theorem cover_982318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_982318)
  decide +kernel
#print axioms cover_982318

def state_982341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 16 else (if j.val < 4 then 49 else 20)))
def hex_982341 : String := "4442430840080708424340084144080A0840414442060842430806080841440742050A0743084008410A08"
theorem cover_982341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982341 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_982341)
  decide +kernel
#print axioms cover_982341
end Mub6.Numerical.CircleFullD0.Forest
