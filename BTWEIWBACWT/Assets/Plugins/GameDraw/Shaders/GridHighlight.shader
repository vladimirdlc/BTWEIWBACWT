Shader "GameDraw/GridHighlight" {
    // a single color property
    Properties {
        _Color ("Main Color", Color) = (1,1,1,1)
        _Emission ("Emmisive Color", Color) = (1,1,1,1)
        _Ambient ("Ambient Color", Color) = (1,1,1,1)
    }
    // define one subshader
    SubShader {
        Pass {
        Tags { "Queue" = "Background" }
           Blend SrcAlpha OneMinusSrcAlpha
            Material {
                Diffuse [_Color]
                Ambient [_Ambient]
                 Emission [_Emission]
            }
            Lighting On
            ZWrite Off
            ZTest Always
            
        }
    }
} 