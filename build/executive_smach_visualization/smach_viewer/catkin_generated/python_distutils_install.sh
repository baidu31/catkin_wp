#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/nic/catkin_wp/src/executive_smach_visualization/smach_viewer"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/nic/catkin_wp/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/nic/catkin_wp/install/lib/python2.7/dist-packages:/home/nic/catkin_wp/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/nic/catkin_wp/build" \
    "/usr/bin/python" \
    "/home/nic/catkin_wp/src/executive_smach_visualization/smach_viewer/setup.py" \
    build --build-base "/home/nic/catkin_wp/build/executive_smach_visualization/smach_viewer" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/nic/catkin_wp/install" --install-scripts="/home/nic/catkin_wp/install/bin"
