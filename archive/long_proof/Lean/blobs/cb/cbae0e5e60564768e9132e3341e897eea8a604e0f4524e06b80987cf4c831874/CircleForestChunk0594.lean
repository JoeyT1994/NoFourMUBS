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
def state_1331366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 25)))
def hex_1331366 : String := "4241080541084340084442410843444005070505410743070807400809"
theorem cover_1331366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331366 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_1331366)
  decide +kernel
#print axioms cover_1331366

def state_1331396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
def hex_1331396 : String := "43444108090808"
theorem cover_1331396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331396 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1331396)
  decide +kernel
#print axioms cover_1331396

def state_1331404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 12)))
def hex_1331404 : String := "444105424440094305410506404309410809430741054244430640090607050541074240080707"
theorem cover_1331404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_1331404)
  decide +kernel
#print axioms cover_1331404

def state_1331445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 16) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 24)))
def hex_1331445 : String := "4243050805"
theorem cover_1331445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331445 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1331445)
  decide +kernel
#print axioms cover_1331445

def state_1331453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 48)))
def hex_1331453 : String := "404108424409430808094105424443060A4340410809060A05"
theorem cover_1331453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1331453)
  decide +kernel
#print axioms cover_1331453

def state_1331478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 49)))
def hex_1331478 : String := "4008414208054243444041084208084105064008074440080A4008410842430808084305440505"
theorem cover_1331478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331478 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_1331478)
  decide +kernel
#print axioms cover_1331478

def state_1331517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 24)))
def hex_1331517 : String := "44404108070A400841084243440A40080A0A0A"
theorem cover_1331517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1331517)
  decide +kernel
#print axioms cover_1331517

def state_1331536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 31 else (if j.val < 4 then 23 else 24)))
def hex_1331536 : String := "4305440505"
theorem cover_1331536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1331536)
  decide +kernel
#print axioms cover_1331536

def state_1331541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 25)))
def hex_1331541 : String := "410842434008444107420808070808"
theorem cover_1331541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331541 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1331541)
  decide +kernel
#print axioms cover_1331541

def state_1331558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
def hex_1331558 : String := "4344414205400944090A050A05"
theorem cover_1331558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1331558)
  decide +kernel
#print axioms cover_1331558
end Mub6.Numerical.CircleFullD0.Forest
