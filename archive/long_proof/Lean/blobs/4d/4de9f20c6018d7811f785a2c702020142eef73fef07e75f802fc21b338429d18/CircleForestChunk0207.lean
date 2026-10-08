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
def state_71101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 95 else 41)))
def hex_71101 : String := "40414206440843060642060A414244434006B84041420644080606B843064006B844430A400AB843400AB840414206090AB84244430606060A"
theorem cover_71101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_71101)
  decide +kernel
#print axioms cover_71101

def state_71158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 47 else 20)))
def hex_71158 : String := "424443060606440A0A"
theorem cover_71158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_71158)
  decide +kernel
#print axioms cover_71158

def state_71167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 21)))
def hex_71167 : String := "400643414442064006430809060641444206434006414442060907064006414442060907070706"
theorem cover_71167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_71167)
  decide +kernel
#print axioms cover_71167

def state_71206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 10)))
def hex_71206 : String := "44400A430A4142440A430A400A4142440A09090A0A0A4043094142440A0609074341090941424443094009090709420709"
theorem cover_71206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_71206)
  decide +kernel
#print axioms cover_71206

def state_71257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
def hex_71257 : String := "424441084043084208080808444106400A0608"
theorem cover_71257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71257 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_71257)
  decide +kernel
#print axioms cover_71257

def state_71279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 48) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 20)))
def hex_71279 : String := "43404208070740424407080707"
theorem cover_71279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71279 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_71279)
  decide +kernel
#print axioms cover_71279

def state_71293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 49) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 20)))
def hex_71293 : String := "404244410743084042084407080808440741080808"
theorem cover_71293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71293 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_71293)
  decide +kernel
#print axioms cover_71293
end Mub6.Numerical.CircleFullPrototype.Forest
