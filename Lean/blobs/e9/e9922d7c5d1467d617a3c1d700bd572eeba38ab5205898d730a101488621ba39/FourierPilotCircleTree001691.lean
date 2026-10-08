import FourierPilotCircleTree001692
import FourierPilotCircleTree001693
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001691
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, false]
def state : State := ![20, 15, 13, 13, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree001692.state FourierPilotCircleTree001693.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001692.covered FourierPilotCircleTree001693.covered
#print axioms covered
end FourierPilotCircleTree001691
