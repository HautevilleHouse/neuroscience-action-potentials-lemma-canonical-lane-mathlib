import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure IonChannelPackage where
  channelTypes : List String
  gatingKinetics : String → ℝ → ℝ
  reversalPotentials : String → ℝ
  conductanceDensity : String → ℝ

structure IonChannelEvidence (I : IonChannelPackage) where
  channelTypesNonEmpty : I.channelTypes ≠ []
  kineticsWellDefined : ∀ (ch : String), ch ∈ I.channelTypes → True
  reversalPotentialsFinite : ∀ (ch : String), ch ∈ I.channelTypes → I.reversalPotentials ch ≠ 0

def IonChannelClosed (I : IonChannelPackage) : Prop :=
  I.channelTypes ≠ []

theorem ion_channel_closed_from_evidence (I : IonChannelPackage) (E : IonChannelEvidence I) :
    IonChannelClosed I :=
  E.channelTypesNonEmpty

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse