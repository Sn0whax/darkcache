DarkCache

DarkCache is an atomic Fedora-based desktop image built with BlueBuild, designed for users who want a fast, modern, and heavily customized KDE Plasma experience.

Built on Fedora Atomic technologies and enhanced with the CachyOS kernel, DarkCache combines performance-focused optimizations, useful desktop enhancements, carefully selected packages, and a polished Plasma setup out of the box.

Variants
darkcache-desktop

Designed for desktop systems and gaming rigs.

NVIDIA drivers included and configured
CachyOS kernel and performance optimizations
KDE Plasma with curated themes and desktop enhancements
Additional quality-of-life applications and utilities
darkcache-laptop

Optimized for portable devices and battery life.

Uses the scx_bpfland scheduler in power-saving mode by default
Laptop-specific power and suspend improvements
Better behavior when docked or connected to external displays
Same KDE Plasma experience with mobile-focused optimizations
Philosophy

DarkCache aims to provide a comfortable and visually appealing Plasma desktop while still embracing the Atomic desktop model.

Included by default:

KDE Plasma desktop
Curated themes, icons, and appearance tweaks
Performance-focused kernel and system optimizations
Useful desktop applications and utilities
Distrobox for containerized development environments

Unlike minimal Atomic images, DarkCache comes with a thoughtfully selected set of packages and customizations so users can be productive immediately after installation.

Installation
Disable Secure Boot in your system firmware (BIOS/UEFI).
Boot into a Fedora Atomic-based distribution.
Switch to the latest DarkCache image:
Shell
bootc switch ghcr.io/sn0whax/darkcache-desktop:latest

Show more lines
Reboot:
Shell
systemctl reboot

Show more lines
If prompted, enroll the MOK key during boot.
Re-enable Secure Boot if desired.
Updates

The latest tag always points to the newest DarkCache build.

DarkCache follows the Fedora release version specified in its build recipe, ensuring you won't be unexpectedly upgraded to a newer Fedora major release without explicitly choosing to do so.

Verification

DarkCache images are signed using Sigstore Cosign.

To verify an image signature, download the cosign.pub key from this repository and run:

Shell
cosign verify --key cosign.pub ghcr.io/sn0whax/darkcache-desktop

Show more lines
Why DarkCache?
KDE Plasma-first experience
CachyOS performance enhancements
NVIDIA-ready desktop images
Atomic reliability with BlueBuild
Beautiful themes and desktop customization
Preselected packages that make sense without unnecessary bloat
Ideal for gaming, development, and everyday computing

DarkCache brings together Fedora Atomic stability, CachyOS performance, and a polished KDE Plasma experience in one image.
