import FourierPilotProofBatch0015

import FourierPilotProofBatch0018

import FourierPilotProofBatch0022

import FourierPilotProofBatch0023

import FourierPilotProofBatch0025

import FourierPilotProofBatch0026

import FourierPilotProofBatch0029

import FourierPilotProofBatch0030

import FourierPilotProofBatch0031

import FourierPilotProofBatch0033

import FourierPilotProofBatch0035

import FourierPilotProofBatch0037

import FourierPilotProofBatch0039

import FourierPilotProofBatch0040

import FourierPilotProofBatch0041

import FourierPilotProofBatch0244

import FourierPilotProofBatch0245

/- Preserved declarations from candidate module FourierPilotCircleTree000418. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000418
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![38, 38, 16, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000419.state FourierPilotCircleTree000432.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000419.covered FourierPilotCircleTree000432.covered
#print axioms covered
end FourierPilotCircleTree000418


/- Preserved declarations from candidate module FourierPilotCircleTree000518. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000518
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, false, false]
def state : State := ![57, 57, 31, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000519.state FourierPilotCircleTree000520.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000519.covered FourierPilotCircleTree000520.covered
#print axioms covered
end FourierPilotCircleTree000518


/- Preserved declarations from candidate module FourierPilotCircleTree000541. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000541
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, false]
def state : State := ![1, 1, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000542.state FourierPilotCircleTree000565.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000542.covered FourierPilotCircleTree000565.covered
theorem root_covered : CoveredState tab physicalCarrier T R targets signs rootState := by
  have h : state = rootState := by funext j; fin_cases j <;> rfl
  rw [← h]; exact covered
#print axioms covered
#print axioms root_covered
end FourierPilotCircleTree000541


/- Preserved declarations from candidate module FourierPilotCircleTree000637. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000637
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![46, 45, 41, 30, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000638.state FourierPilotCircleTree000639.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000638.covered FourierPilotCircleTree000639.covered
#print axioms covered
end FourierPilotCircleTree000637


/- Preserved declarations from candidate module FourierPilotCircleTree000666. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000666
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![4, 2, 3, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000667.state FourierPilotCircleTree000668.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000667.covered FourierPilotCircleTree000668.covered
#print axioms covered
end FourierPilotCircleTree000666


/- Preserved declarations from candidate module FourierPilotCircleTree000704. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000704
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![7, 3, 2, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000705.state FourierPilotCircleTree000718.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000705.covered FourierPilotCircleTree000718.covered
#print axioms covered
end FourierPilotCircleTree000704


/- Preserved declarations from candidate module FourierPilotCircleTree000751. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000751
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![49, 50, 54, 17, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree000752.state FourierPilotCircleTree000765.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000752.covered FourierPilotCircleTree000765.covered
#print axioms covered
end FourierPilotCircleTree000751


/- Preserved declarations from candidate module FourierPilotCircleTree000840. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000840
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![45, 46, 41, 52, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000841.state FourierPilotCircleTree000842.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000841.covered FourierPilotCircleTree000842.covered
#print axioms covered
end FourierPilotCircleTree000840


/- Preserved declarations from candidate module FourierPilotCircleTree000870. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000870
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![5, 2, 3, 2, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000871.state FourierPilotCircleTree000884.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000871.covered FourierPilotCircleTree000884.covered
#print axioms covered
end FourierPilotCircleTree000870


/- Preserved declarations from candidate module FourierPilotCircleTree000906. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000906
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![6, 3, 2, 3, 2]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree000907.state FourierPilotCircleTree000908.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000907.covered FourierPilotCircleTree000908.covered
#print axioms covered
end FourierPilotCircleTree000906


/- Preserved declarations from candidate module FourierPilotCircleTree000954. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000954
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![50, 49, 54, 43, 17]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000955.state FourierPilotCircleTree000968.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000955.covered FourierPilotCircleTree000968.covered
#print axioms covered
end FourierPilotCircleTree000954


/- Preserved declarations from candidate module FourierPilotCircleTree001032. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001032
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![38, 38, 31, 52, 52]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001033.state FourierPilotCircleTree001034.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001033.covered FourierPilotCircleTree001034.covered
#print axioms covered
end FourierPilotCircleTree001032


/- Preserved declarations from candidate module FourierPilotCircleTree001092. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001092
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![57, 57, 16, 43, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001093.state FourierPilotCircleTree001106.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001093.covered FourierPilotCircleTree001106.covered
#print axioms covered
end FourierPilotCircleTree001092


/- Preserved declarations from candidate module FourierPilotCircleTree001159. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001159
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![18, 14, 15, 22, 25]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001160.state FourierPilotCircleTree001161.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001160.covered FourierPilotCircleTree001161.covered
#print axioms covered
end FourierPilotCircleTree001159


/- Preserved declarations from candidate module FourierPilotCircleTree001188. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001188
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![4, 6, 7, 7, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree001189.state FourierPilotCircleTree001190.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001189.covered FourierPilotCircleTree001190.covered
#print axioms covered
end FourierPilotCircleTree001188


/- Preserved declarations from candidate module FourierPilotCircleTree001233. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001233
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![40, 55, 31, 61, 34]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001234.state FourierPilotCircleTree001235.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001234.covered FourierPilotCircleTree001235.covered
#print axioms covered
end FourierPilotCircleTree001233

#print axioms FourierPilotCircleTree000418.covered
#print axioms FourierPilotCircleTree000518.covered
#print axioms FourierPilotCircleTree000541.covered
#print axioms FourierPilotCircleTree000541.root_covered
#print axioms FourierPilotCircleTree000637.covered
#print axioms FourierPilotCircleTree000666.covered
#print axioms FourierPilotCircleTree000704.covered
#print axioms FourierPilotCircleTree000751.covered
#print axioms FourierPilotCircleTree000840.covered
#print axioms FourierPilotCircleTree000870.covered
#print axioms FourierPilotCircleTree000906.covered
#print axioms FourierPilotCircleTree000954.covered
#print axioms FourierPilotCircleTree001032.covered
#print axioms FourierPilotCircleTree001092.covered
#print axioms FourierPilotCircleTree001159.covered
#print axioms FourierPilotCircleTree001188.covered
#print axioms FourierPilotCircleTree001233.covered
