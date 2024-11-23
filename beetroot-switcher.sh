#!/bin/sh

WORK_PATH=$(pwd)/dependencies
IMAGE_DIR="~/Pictures"
XWINWRAP_PATH="${WORK_PATH}/xwinwrap"

# Prepare dependencies
if [[ ! -d "${WORK_PATH}" ]]; then
	mkdir "${WORK_PATH}"
	pushd "${WORK_PATH}"
	git clone https://github.com/ujjwal96/xwinwrap.git
	pushd xwinwrap
	make
	popd
	popd
fi

pushd "${XWINWRAP_PATH}"
./xwinwrap -fs -ni -s -st -sp -b -- firefox --kiosk "https://rezmason.github.io/matrix/?numColumns=120&fallSpeed=0.2&url=https://www.pngarts.com/files/5/Beetroot-Free-PNG-Image.png&effect=image&url=https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Beets-Bundle.jpg/1024px-Beets-Bundle.jpg"
popd

#while true; do
#	for IMAGE in "$IMAGE_DIR"/*.{jpg,png}; do
#		[ -f $IMAGE ] || continue
#		gsettings set org.mate.background picture-filename "$IMAGE"
#		sleep 60
#	done
#done
