#define LIGHT_PARAMS_FROM 0
#define LIGHT_PARAMS_TYPE 0

static const float lightSize = 1.0;
static const float lightRange = 200.0;
static const float lightAttenuationBulb = 1.0;

static const float3 lightBlink = 0.0;
static const float3 lightColor = float3(1.0, 1.0, 1.0) * 100.0;

static const float2 lightRangeLimits = float2(1.0, 200.0);
static const float2 lightIntensityLimits = float2(100.0, 2000.0);

#define SHADOW_MAP_FROM 1
#define SHADOW_MAP_QUALITY 2

static const float shadowHardness = 0.20;

// NOTICE : DO NOT MODIFY IT IF YOU CANT'T UNDERSTAND WHAT IT IS
static const float sampleRadius = 2;
static const float sampleKernel[5] = {0.1784, 0.210431, 0.222338, 0.210431, 0.1784};

#define IBL_MAP_FROM 2
#define IBL_MAP_MIPMAP_LEVEL 7

#define IBLDIFF_MAP_FILE "texture/skydiff_hdr.dds"
#define IBLSPEC_MAP_FILE "texture/skyspec_hdr.dds"

#include "../sphere_lighting.fxsub"