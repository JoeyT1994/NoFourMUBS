import FourierPilotCircleTree000350
import FourierPilotCircleTree000351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000349
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, false, false]
def state : State := ![7, 10, 6, 5, 4]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree000350.state FourierPilotCircleTree000351.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000350.covered FourierPilotCircleTree000351.covered
#print axioms covered
end FourierPilotCircleTree000349
