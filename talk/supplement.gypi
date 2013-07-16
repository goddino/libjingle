# This file will be picked up by gyp to initialize some global settings.
# Those settings will override the webrtc setttings, which by default
# disable some of the components for chrome build, for example the audio/video
# capture and render.
{
  'variables': {
    'build_with_chromium': 0,
    'build_with_libjingle': 1,
    'webrtc_root': '<(DEPTH)/third_party/webrtc',
  },
}
