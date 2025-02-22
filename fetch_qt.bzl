"""qt library fetch"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def fetch_qt6():
    """function which fetch remote prebuild qt libraries or use local qt(in macos)
    """

    http_archive(
        name = "qt_windows_x86_64",
        urls = [
            "https://vertexwahn.de/lfs/v1/qt_6.4.0_windows_desktop_win64_msvc2019_64.zip",
        ],
        sha256 = "e3c20b441ddd8bb803e46de32bf2fc5563fda125409d62dcd12b5647ae5a9c7e",
        strip_prefix = "6.4.0/msvc2019_64",
        build_file = "@rules_qt//:qt_windows_x86_64.BUILD",
    )

    http_archive(
        name = "qt_linux_x86_64",
        integrity = "sha256-EJktWK0aSAokW3kSppYXMeB/NNrE+4IAwaXJyft1Edw=",
        strip_prefix = "6.7.1/gcc_64",
        urls = [
            "https://vault.pkasila.net/qt/6.7.1/qt_linux_x86_64.tar.gz",
        ],
        build_file = "@rules_qt//:qt_linux_x86_64.BUILD",
    )

    http_archive(
        name = "qt_mac_aarch64",
        urls = [
            "https://vertexwahn.de/lfs/v1/qt_6.8.0_mac_aarch64_gamepad.tar.xz",
        ],
        sha256 = "07be3436bfb31b3a2e629907ca39a8652febe563046094cdc7373b7ff28228c4",
        strip_prefix = "Qt-6.8.0",
        build_file = "@rules_qt//:qt_mac_aarch64.BUILD",
    )
