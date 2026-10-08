import FourierPilotCircleTree001362
import FourierPilotCircleTree001363
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001361
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, true, false]
def state : State := ![29, 18, 16, 51, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001362.state FourierPilotCircleTree001363.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001362.covered FourierPilotCircleTree001363.covered
#print axioms covered
end FourierPilotCircleTree001361
