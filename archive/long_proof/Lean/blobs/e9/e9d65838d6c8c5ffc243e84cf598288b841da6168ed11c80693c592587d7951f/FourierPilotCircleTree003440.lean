import FourierPilotCircleTree003441
import FourierPilotCircleTree003442
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003440
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, true]
def state : State := ![18, 27, 20, 25, 16]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨3, by decide⟩ FourierPilotCircleTree003441.state FourierPilotCircleTree003442.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003441.covered FourierPilotCircleTree003442.covered
#print axioms covered
end FourierPilotCircleTree003440
