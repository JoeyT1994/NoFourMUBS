import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_994500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 20)))
def hex_994500 : String := "42404108070740414344420740410907074208404108430A080A440708434407420740434144070A0707070741434407080707"
theorem cover_994500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994500 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 51) (hex := hex_994500)
  decide +kernel
#print axioms cover_994500

def state_994552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 21)))
def hex_994552 : String := "05"
theorem cover_994552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_994552)
  decide +kernel
#print axioms cover_994552

def state_994555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 52) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
def hex_994555 : String := "434442054041084344080608080508"
theorem cover_994555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_994555)
  decide +kernel
#print axioms cover_994555

def state_994573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 42)))
def hex_994573 : String := "404341084407080808"
theorem cover_994573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994573 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_994573)
  decide +kernel
#print axioms cover_994573

def state_994583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
def hex_994583 : String := "4341444240430A08080A42080644420740430A07074240434441080741080A440708430A0740430A440A0A0A4144080844074208404344410807080808"
theorem cover_994583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994583 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_994583)
  decide +kernel
#print axioms cover_994583

def state_994644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
def hex_994644 : String := "43410A0A410807"
theorem cover_994644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994644 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_994644)
  decide +kernel
#print axioms cover_994644

def state_994651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 43)))
def hex_994651 : String := "4205404344410842404344080508084043064441060A0606410542050608430608"
theorem cover_994651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994651 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 33) (hex := hex_994651)
  decide +kernel
#print axioms cover_994651

def state_994684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 21)))
def hex_994684 : String := "44420840080808"
theorem cover_994684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994684 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_994684)
  decide +kernel
#print axioms cover_994684

def state_994691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
def hex_994691 : String := "4108434442070A0808"
theorem cover_994691 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994691 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_994691)
  decide +kernel
#print axioms cover_994691

def state_994700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 10)))
def hex_994700 : String := "444207404108070708"
theorem cover_994700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994700 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_994700)
  decide +kernel
#print axioms cover_994700

def state_994711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 20)))
def hex_994711 : String := "07"
theorem cover_994711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994711 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_994711)
  decide +kernel
#print axioms cover_994711

def state_994713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 21)))
def hex_994713 : String := "4043440741050744060807"
theorem cover_994713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994713 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_994713)
  decide +kernel
#print axioms cover_994713

def state_994727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 52 else 42)))
def hex_994727 : String := "4142074043440741420740434407410A07070707070707"
theorem cover_994727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_994727)
  decide +kernel
#print axioms cover_994727
end Mub6.Numerical.CircleFullD0.Forest
