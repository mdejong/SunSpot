SunSpot is an iOS 8 app that demonstrates playback with AVKit with a 1080p video.

Inspired by:

https://www.youtube.com/watch?v=ipvfwPqh3V4

Original 4K images downloaded from:

http://sdo.gsfc.nasa.gov/

http://www.helioviewer.org/

http://www.thesuntoday.org/

The h.264 video was encoded with x264 from the original 4K video frames.
The original video data is something like 4 gigs uncompressed and 70 megs
after x264 compression with default quality settings.

The video was encoded at 1080x1080 (square pixels) and can be viewed in
either portrait or landscape on an iPad device.

This example will run on newer 64bit iPad devices and it may still run
on devices as old as an iPad2.

The video will playback at high resolution with only about 1% CPU usage
on an iPad. While the video is very high resolution, it plays back at only
2 FPS so that detail of each frame can be seen.

On a 64bit iPad, the native screen resolution is 2048x1536 so the 1080x1080
video is scaled up to 1536x1536 (about 30%) at runtime.

