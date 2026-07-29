import canonicalLaneMathlib.AdmissibleClass
import EmbeddingsDifferentialTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure EmbeddingSpacesPackage (A : AdmissibleClass) where
  sourceManifold : Type u
  targetManifold : Type v
  embeddingSpace : Type w
  topologyOnEmbeddingSpace : TopologicalSpace embeddingSpace
  connectedComponents : Prop
  conclusionSpaces : connectedComponents
  witness : conclusionSpaces = A.object.conclusion

structure EmbeddingSpacesEvidence {A : AdmissibleClass} (S : EmbeddingSpacesPackage A) where
  connectedComponentsClosed : S.connectedComponents

def EmbeddingSpacesClosed {A : AdmissibleClass} (S : EmbeddingSpacesPackage A) : Prop :=
  S.connectedComponents

theorem embedding_spaces_closed_from_evidence
    {A : AdmissibleClass} (S : EmbeddingSpacesPackage A)
    (E : EmbeddingSpacesEvidence S) : EmbeddingSpacesClosed S := by
  exact E.connectedComponentsClosed

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse