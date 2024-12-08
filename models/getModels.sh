# ------------------------- BODY, FOOT, FACE, AND HAND MODELS -------------------------
# Downloading body pose (COCO and MPI), face and hand models
OPENPOSE_URL="http://vcl.snu.ac.kr/OpenPose/models/"
POSE_FOLDER="pose/"
FACE_FOLDER="face/"
HAND_FOLDER="hand/"

# ------------------------- POSE (BODY+FOOT) MODELS -------------------------
# Body (BODY_25)
BODY_25_FOLDER=${POSE_FOLDER}"body_25/"
BODY_25_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_584000.caffemodel?download=
wget -c ${BODY_25_MODEL} -P ${BODY_25_FOLDER}

# Body (COCO)
COCO_FOLDER=${POSE_FOLDER}"coco/"
COCO_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_440000.caffemodel?download=
wget -c ${COCO_MODEL} -P ${COCO_FOLDER}
# Alternative: it will not check whether file was fully downloaded
# if [ ! -f $COCO_MODEL ]; then
#     wget ${OPENPOSE_URL}$COCO_MODEL -P $COCO_FOLDER
# fi

# Body (MPI)
MPI_FOLDER=${POSE_FOLDER}"mpi/"
MPI_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_160000.caffemodel?download=
wget -c ${MPI_MODEL} -P ${MPI_FOLDER}

# "------------------------- FACE MODELS -------------------------"
# Face
FACE_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_116000.caffemodel?download=
wget -c ${FACE_MODEL} -P ${FACE_FOLDER}

# "------------------------- HAND MODELS -------------------------"
# Hand
HAND_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_102000.caffemodel?download=
wget -c ${HAND_MODEL} -P ${HAND_FOLDER}
