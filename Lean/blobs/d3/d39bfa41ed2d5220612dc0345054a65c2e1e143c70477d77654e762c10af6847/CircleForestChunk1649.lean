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
def state_2268992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 44 else 29)))
def hex_2268992 : String := "414044420805080840444207090744424307410807430541090908"
theorem cover_2268992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2268992)
  decide +kernel
#print axioms cover_2268992

def state_2269019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 45 else 29)))
def hex_2269019 : String := "414044420843090A0844420843080808404442430906090644424341060606434109094106064206430806"
theorem cover_2269019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 43) (hex := hex_2269019)
  decide +kernel
#print axioms cover_2269019

def state_2269066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
def hex_2269066 : String := "4044050808"
theorem cover_2269066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2269066)
  decide +kernel
#print axioms cover_2269066

def state_2269072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
def hex_2269072 : String := "4442434105404405070841084044430A0A0844430842060A08430541054044054243054106064305054405420805420843084108400808"
theorem cover_2269072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269072 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2269072)
  decide +kernel
#print axioms cover_2269072

def state_2269127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
def hex_2269127 : String := "44424305410840080843050508"
theorem cover_2269127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_2269127)
  decide +kernel
#print axioms cover_2269127

def state_2269141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 28)))
def hex_2269141 : String := "40444342080542080708440708"
theorem cover_2269141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2269141)
  decide +kernel
#print axioms cover_2269141

def state_2269158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 88 else (if j.val < 4 then 90 else 56)))
def hex_2269158 : String := "414008084044060606"
theorem cover_2269158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2269158)
  decide +kernel
#print axioms cover_2269158

def state_2269167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 89 else (if j.val < 4 then 90 else 56)))
def hex_2269167 : String := "4140444305424105060543080644050840444342414006050605420641400605064342064106060644434241050605420641050643420641050606"
theorem cover_2269167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2269167)
  decide +kernel
#print axioms cover_2269167

def state_2269226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 91 else 56)))
def hex_2269226 : String := "42410606414044434206070606074044060606"
theorem cover_2269226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2269226)
  decide +kernel
#print axioms cover_2269226

def state_2269245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 57)))
def hex_2269245 : String := "434206410840060606"
theorem cover_2269245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2269245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2269245)
  decide +kernel
#print axioms cover_2269245
end Mub6.Numerical.CircleFullD0.Forest
