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
def state_2285267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 230) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 126)))
def hex_2285267 : String := "4442434009414442434009410544050A400606430909E54442430A400606430808E5400941444206070644420643080606430909E5"
theorem cover_2285267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_2285267)
  decide +kernel
#print axioms cover_2285267

def state_2285320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 174 else 231) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 126)))
def hex_2285320 : String := "4442434009414408E50840094144080608430808E5"
theorem cover_2285320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285320 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2285320)
  decide +kernel
#print axioms cover_2285320

def state_2285342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 230) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 126)))
def hex_2285342 : String := "44424340414442434005050705E544420A43400805400807E5410744420A07E5404107444206070607434041054408E50707E5"
theorem cover_2285342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285342 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_2285342)
  decide +kernel
#print axioms cover_2285342

def state_2285393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 175 else 231) else (if j.val < 3 then 191 else (if j.val < 4 then 177 else 126)))
def hex_2285393 : String := "44424340414408E5080A4041440806084144070608430808E5"
theorem cover_2285393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2285393)
  decide +kernel
#print axioms cover_2285393

def state_2285418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 88 else 127)))
def hex_2285418 : String := "E5"
theorem cover_2285418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2285418)
  decide +kernel
#print axioms cover_2285418

def state_2285420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 63)))
def hex_2285420 : String := "4144424340060606434009410909400606420643090644424340060606430909420609"
theorem cover_2285420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2285420)
  decide +kernel
#print axioms cover_2285420

def state_2285456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 63)))
def hex_2285456 : String := "44424340060606434041074407E50707420643E506"
theorem cover_2285456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2285456)
  decide +kernel
#print axioms cover_2285456

def state_2285477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 115) else (if j.val < 3 then 95 else (if j.val < 4 then 89 else 63)))
def hex_2285477 : String := "44424340060606434041444206430906E5444206430806E5414407E5444206430806E5400606420643E506"
theorem cover_2285477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2285477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_2285477)
  decide +kernel
#print axioms cover_2285477
end Mub6.Numerical.CircleFullD0.Forest
