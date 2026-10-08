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
def state_946343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 205 else (if j.val < 4 then 68 else 107)))
def hex_946343 : String := "41444305404241064405050642074144050505430640064241060606440543054006420505"
theorem cover_946343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946343 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_946343)
  decide +kernel
#print axioms cover_946343

def state_946380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 107)))
def hex_946380 : String := "424144070744054305074144050A05"
theorem cover_946380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_946380)
  decide +kernel
#print axioms cover_946380

def state_946397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 204 else (if j.val < 4 then 69 else 107)))
def hex_946397 : String := "4144070944074340090707"
theorem cover_946397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_946397)
  decide +kernel
#print axioms cover_946397

def state_946409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 170) else (if j.val < 3 then 205 else (if j.val < 4 then 69 else 107)))
def hex_946409 : String := "444340424107074144070644074306070740420741070707434042090642074107440706400907"
theorem cover_946409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_946409)
  decide +kernel
#print axioms cover_946409

def state_946448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 171) else (if j.val < 3 then 205 else (if j.val < 4 then 69 else 107)))
def hex_946448 : String := "44434042410705410805420705404207080743404241094443050709410644430540060506424107074144070744054305074042094109440809420707"
theorem cover_946448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_946448)
  decide +kernel
#print axioms cover_946448

def state_946509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 107)))
def hex_946509 : String := "420741440707440707"
theorem cover_946509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_946509)
  decide +kernel
#print axioms cover_946509

def state_946521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 103 else (if j.val < 4 then 68 else 106)))
def hex_946521 : String := "40424441080541430640060A430540064205054405410605424405410A0509"
theorem cover_946521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_946521)
  decide +kernel
#print axioms cover_946521

def state_946552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 106)))
def hex_946552 : String := "4042440841434008070843400808084408414340060808084244070744094107430907"
theorem cover_946552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946552 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_946552)
  decide +kernel
#print axioms cover_946552
end Mub6.Numerical.CircleFullD0.Forest
