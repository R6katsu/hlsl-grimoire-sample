// 頂点シェーダーへの入力頂点構造体
struct VSInput
{
    float4 pos : POSITION;
};

// 頂点シェーダーの出力
struct VSOutput
{
    float4 pos : SV_POSITION;
};

// 頂点シェーダー
// 1. 引数は変換前の頂点情報
// 2. 戻り値は変換後の頂点情報
VSOutput VSMain(VSInput In)
{
    VSOutput vsOut = (VSOutput)0;

    // step-1 入力された頂点座標を出力データに代入する
    vsOut.pos = In.pos;
    // step-2 入力された頂点座標を2倍に拡大する
    //vsOut.pos.xyzw *= 2.0f;
    // step-3 入力されたX座標を1.5倍、Y座標を0.5倍にして出力
    vsOut.pos.x *= 1.5f;
    vsOut.pos.y *= 0.5f;
    return vsOut;
}

/// <summary>
/// ピクセルシェーダー
/// 色の変更
/// </summary>
float4 PSMain(VSOutput vsOut) : SV_Target0
{
    //return float4(1.0f, 0.0f, 0.0f, 1.0f); //赤
    //return float4(1.0f, 1.0f, 1.0f, 1.0f); //白
    //return float4(0.0f, 0.0f, 0.0f, 1.0f); //黒
    //return float4(0.5f, 0.5f, 0.5f, 1.0f); //灰
    return float4(0.25f, 0.25f, 0.25f, 1.0f); //濃灰

    //vsOut.pos.x = 0.5f;
    //vsOut.pos.y = 0.5f;
    //vsOut.pos.z = 0.5f;
    //return float4(vsOut.pos.x, vsOut.pos.y, vsOut.pos.z, 1.0f); //座標によって色を変える
}