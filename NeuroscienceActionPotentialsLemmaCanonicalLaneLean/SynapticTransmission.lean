import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure SynapticTransmissionPackage where
  neurotransmitterRelease : Type u
  receptorBinding : Type v
  postsynapticPotential : Type w
  vesicleFusion : Prop
  ligandGating : Prop
  summationIntegration : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  vesicleFusionClosed : S.vesicleFusion
  ligandGatingClosed : S.ligandGating
  summationIntegrationClosed : S.summationIntegration

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.vesicleFusion ∧ S.ligandGating ∧ S.summationIntegration

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmissionPackage)
    (E : SynapticTransmissionEvidence S) : SynapticTransmissionClosed S := by
  exact And.intro E.vesicleFusionClosed
    (And.intro E.ligandGatingClosed E.summationIntegrationClosed)

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse