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
def state_1537800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
def hex_1537800 : String := "40410A434244400A410A064041084342440A0508084143070A43424406400505060A0A0A414307094342440640410706070642440643400A09090A"
theorem cover_1537800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537800 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 59) (hex := hex_1537800)
  decide +kernel
#print axioms cover_1537800

def state_1537859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
def hex_1537859 : String := "40414308084344424041050541074305440A050505444240084341080A0808084143070943074442434041070A07090A420907"
theorem cover_1537859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537859 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1537859)
  decide +kernel
#print axioms cover_1537859

def state_1537917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 4)))
def hex_1537917 : String := "4408404208414408090608"
theorem cover_1537917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1537917)
  decide +kernel
#print axioms cover_1537917

def state_1537929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
def hex_1537929 : String := "40420741430844054007080608"
theorem cover_1537929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537929 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1537929)
  decide +kernel
#print axioms cover_1537929

def state_1537944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 9)))
def hex_1537944 : String := "41430844074042074143440740070807070808"
theorem cover_1537944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537944 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1537944)
  decide +kernel
#print axioms cover_1537944

def state_1537965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 9)))
def hex_1537965 : String := "440840424144080A080908"
theorem cover_1537965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1537965)
  decide +kernel
#print axioms cover_1537965

def state_1537977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 18)))
def hex_1537977 : String := "404207414309070708"
theorem cover_1537977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1537977)
  decide +kernel
#print axioms cover_1537977

def state_1537988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 19)))
def hex_1537988 : String := "4143444007084042430A0609420843084108084407400642074143440605060743440740070807"
theorem cover_1537988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1537988)
  decide +kernel
#print axioms cover_1537988
end Mub6.Numerical.CircleFullD0.Forest
