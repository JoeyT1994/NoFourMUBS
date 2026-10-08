import FourierPilotCircleTree001628
import FourierPilotCircleTree001657
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001627
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![2, 3, 3, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001628.state FourierPilotCircleTree001657.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001628.covered FourierPilotCircleTree001657.covered
#print axioms covered
end FourierPilotCircleTree001627
