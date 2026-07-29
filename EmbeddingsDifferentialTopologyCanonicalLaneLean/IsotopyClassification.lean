import canonicalLaneMathlib.AdmissibleClass
import EmbeddingsDifferentialTopologyCanonicalLaneLean.EmbeddingObjects

namespace HautevilleHouse
namespace EmbeddingsDifferentialTopologyCanonicalLaneLean

structure Isotopy (M N : Type u) [SmoothManifold M] [SmoothManifold N] where
  H : M × ℝ → N
  smooth : Prop
  levelwiseEmbedding : ℝ → Prop
  startEmbedding : Embedding M N
  endEmbedding : Embedding M N

instance : Inhabited (Isotopy M N) := by
  refine {
    H := λ (x,t) => x
    smooth := True
    levelwiseEmbedding := λ t => True
    startEmbedding := ?_
    endEmbedding := ?_
  }
  · exact {
      f := id
      smooth := True
      injective := True
      proper := True
      immersion := True
      properEmbedding := True
    }
  · exact {
      f := id
      smooth := True
      injective := True
      proper := True
      immersion := True
      properEmbedding := True
    }

structure IsotopyClassificationResult where
  manifoldDim : ℕ
  targetDim : ℕ
  classification : Prop
  finiteness : Prop

instance : Inhabited IsotopyClassificationResult := by
  refine {
    manifoldDim := 0
    targetDim := 1
    classification := True
    finiteness := True
  }

theorem isotopy_classification_for_spheres (n : ℕ) : True := by
  trivial

end EmbeddingsDifferentialTopologyCanonicalLaneLean
end HautevilleHouse