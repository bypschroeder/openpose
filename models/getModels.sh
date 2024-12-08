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
(cd ${BODY_25_FOLDER} && curl -L -O ${BODY_25_MODEL})

# Body (COCO)
COCO_FOLDER=${POSE_FOLDER}"coco/"
COCO_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_440000.caffemodel?download=
(cd ${COCO_FOLDER} && curl -L -O ${COCO_MODEL})
# Alternative: it will not check whether file was fully downloaded
# if [ ! -f $COCO_MODEL ]; then
#     wget ${OPENPOSE_URL}$COCO_MODEL -P $COCO_FOLDER
# fi

# Body (MPI)
MPI_FOLDER=${POSE_FOLDER}"mpi/"
MPI_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_160000.caffemodel?download=
(cd ${MPI_FOLDER} && curl -L -O ${MPI_MODEL})

# "------------------------- FACE MODELS -------------------------"
# Face
FACE_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_116000.caffemodel?download=
(cd ${FACE_FOLDER} && curl -L -O ${FACE_MODEL})

# "------------------------- HAND MODELS -------------------------"
# Hand
HAND_MODEL=https://github.com/bypschroeder/openpose_models/raw/refs/heads/main/pose_iter_102000.caffemodel?download=
(cd ${HAND_FOLDER} && curl -L -O ${HAND_MODEL})
