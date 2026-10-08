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
def state_1037348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 15)))
def hex_1037348 : String := "41434440080740084205410705440A400A4207410A0808"
theorem cover_1037348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1037348)
  decide +kernel
#print axioms cover_1037348

def state_1037374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
def hex_1037374 : String := "40084241430508084143080808"
theorem cover_1037374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037374 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1037374)
  decide +kernel
#print axioms cover_1037374

def state_1037388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
def hex_1037388 : String := "08"
theorem cover_1037388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1037388)
  decide +kernel
#print axioms cover_1037388

def state_1037390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 31)))
def hex_1037390 : String := "414344054006054440084205084008420741430544054008050508"
theorem cover_1037390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_1037390)
  decide +kernel
#print axioms cover_1037390

def state_1037417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 31)))
def hex_1037417 : String := "41434440080540064205094440084208094008424143440540060544084008420808084143094408840808"
theorem cover_1037417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037417 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1037417)
  decide +kernel
#print axioms cover_1037417

def state_1037461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 30)))
def hex_1037461 : String := "4008420A410A08"
theorem cover_1037461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037461 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1037461)
  decide +kernel
#print axioms cover_1037461

def state_1037468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
def hex_1037468 : String := "404208410A08424143440A40084207410A080A084143444008420A410A0840420808424143440A4008420A840A08414344400842080884440A84080A08"
theorem cover_1037468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1037468)
  decide +kernel
#print axioms cover_1037468

def state_1037529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
def hex_1037529 : String := "08"
theorem cover_1037529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037529 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1037529)
  decide +kernel
#print axioms cover_1037529

def state_1037531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 7)))
def hex_1037531 : String := "440940414208070809"
theorem cover_1037531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037531 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1037531)
  decide +kernel
#print axioms cover_1037531

def state_1037541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_1037541 : String := "404142080808414243090A0909"
theorem cover_1037541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1037541)
  decide +kernel
#print axioms cover_1037541

def state_1037555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_1037555 : String := "4142430844084007080708"
theorem cover_1037555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1037555)
  decide +kernel
#print axioms cover_1037555

def state_1037569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 15)))
def hex_1037569 : String := "44400809404142080708414243094409404142080708090909"
theorem cover_1037569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037569 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1037569)
  decide +kernel
#print axioms cover_1037569

def state_1037595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 30)))
def hex_1037595 : String := "40410A0841424344084008090A0908"
theorem cover_1037595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1037595 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_1037595)
  decide +kernel
#print axioms cover_1037595
end Mub6.Numerical.CircleFullD0.Forest
