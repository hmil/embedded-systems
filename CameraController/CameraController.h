#ifndef CAMERA_CONTROLLER_H
#define CAMERA_CONTROLLER_H

  // Registers

  // 16bit address to first byte of the image buffer array
  #define CAM_BUFFER_START    0x00
  // Number of frames in the buffer
  // Actual buffer size is BUFFER_LEN * FRAME_WIDTH * FRAME_HEIGHT * 2
  #define CAM_BUFFER_LEN      0x04
  // Address to the first byte of the next ready image
  #define CAM_CURRENT_FRAME   0x08
  // Control register 1
  #define CAM_CTRL_1          0x0c

  // Operation control segment (CAM_CTRL)
  #define CAM_START           0x0010
  #define CAM_STOP            0x0020
  #define CAM_RESET           0x0040

  // Preset segment (CAM_CTRL)
  #define CAM_PRESET          0x000f

  typedef int CamPresetID;

  // Values
  // cf. TRDB-D5M_Hardware_specification_v0.2 tables 1.7 & 1.8
  // Always use binning for subsampling when available
  #define CAM_FULL            ((CamPresetID)0x0000)
  #define CAM_QXGA            ((CamPresetID)0x0001)
  #define CAM_UXGA            ((CamPresetID)0x0002)
  #define CAM_SXGA            ((CamPresetID)0x0003)
  #define CAM_XGA             ((CamPresetID)0x0004)
  #define CAM_SVGA            ((CamPresetID)0x0005)
  #define CAM_VGA             ((CamPresetID)0x0006)
  #define CAM_1080p           ((CamPresetID)0x0007)
  #define CAM_720p            ((CamPresetID)0x0008)

  struct CamPreset{
    int width;
    int height;
    float fps;
  };

  // Internal object, not part of the API,
  // use cam_get_preset() instead
  const struct CamPreset cam_presets[] = {
    { 2595, 1944, 15.15f },  // FULL
    { 2048, 1536, 23.0f },   // QXGA
    { 1600, 1200, 35.2f },   // UXGA
    { 1280, 1024, 40.1f },   // SXGA
    { 1024, 768, 59.7 },     // XGA
    { 800, 600, 85.2f },     // SVGA
    { 640, 480, 77.4f },     // VGA
    { 1920, 1080, 34.1f },   // 1920p
    { 1280, 720, 56.4f }     // 720p
  };

  inline struct CamPreset cam_get_preset(CamPresetID id)
  {
    return cam_presets[id];
  }


#endif
