Shader "Custom/WhiteNoise" {
    Properties {
    }
    SubShader {
        Tags{ "RenderType"="Opaque" "Queue"="Geometry"}

        CGPROGRAM

        #pragma surface surf Standard fullforwardshadows
        #pragma target 3.0

        #include "Random.cginc"

        struct Input {
            float3 worldPos;
        };

        void surf (Input i, inout SurfaceOutputStandard o) {
            float3 value = i.worldPos;
            o.Albedo = rand3dTo3d(value);
        }
        ENDCG
    }
    FallBack "Standard"
}